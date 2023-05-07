#include <QMouseEvent>
#include <QGuiApplication>

#include "NGLScene.h"

#include <ngl/Random.h>
#include <ngl/ShaderLib.h>
#include <ngl/NGLInit.h>
#include <ngl/VAOPrimitives.h>

#include <algorithm>
#include <iostream>

NGLScene::NGLScene(int _numSpheres)
{
  // set window title
  setTitle("Sphere Collision");

  // set animation on
  m_animationOnOff = true;
  // set collision false
  m_boolSphereSphereCollide = false;

  // createSpheres
  m_numSpheres = _numSpheres;
  createSpheres();
}

NGLScene::~NGLScene()
{
  std::cout << "Shutting down NGL, removing VAO's and Shaders\n";
}

void NGLScene::resizeGL(int _w, int _h)
{
  m_project = ngl::perspective(45.0f, static_cast<float>(_w) / _h, 0.05f, 350.0f);
  m_win.width = static_cast<int>(_w * devicePixelRatio());
  m_win.height = static_cast<int>(_h * devicePixelRatio());
}





/* create sphere */
const static int s_bboxExtents = 20; // bounding box extents
const static float sphereRadius =2.0f;
ngl::Vec3 initVel(20.0f, 0.0f, 0.0f);
void NGLScene::createSpheres()
{
  m_sphereArray.resize(m_numSpheres);
  std::generate(std::begin(m_sphereArray), std::end(m_sphereArray), [this]()
                { return Sphere(ngl::Random::getRandomPoint(s_bboxExtents, s_bboxExtents, s_bboxExtents),
                                ngl::Random::getRandomVec3(), // 시작 디렉션
                                sphereRadius,
                                initVel); });
}







void NGLScene::initializeGL()
{

  ngl::NGLInit::initialize();

  // ------------- background --------------
  glClearColor(1.74f, 0.73f, 0.74f, 1.0f); // pink

  // enable depth testing for drawing
  glEnable(GL_DEPTH_TEST);
  // enable multisampling for smoother drawing
  glEnable(GL_MULTISAMPLE);

  // --------------- camera ----------------
  ngl::Vec3 from(0.0f, 100.0f, 100.0f);
  ngl::Vec3 to(0.0f, 0.0f, 0.0f);
  ngl::Vec3 up(0.0f, 10.0f, 0.0f);
  m_view = ngl::lookAt(from, to, up);
  m_project = ngl::perspective(45.0f, 720.0f / 576.0f, 0.5f, 150.0f);



  //---------------- shader -----------------
  // ------ Diffuse Shader for Spheres
  ngl::ShaderLib::use("nglDiffuseShader");

  ngl::ShaderLib::setUniform("Colour", 1.0f, 1.0f, 1.0f, 1.0f); // white random?
  ngl::ShaderLib::setUniform("lightPos", 1.0f, 1.0f, 1.0f);
  ngl::ShaderLib::setUniform("lightDiffuse", 1.0f, 1.0f, 1.0f, 1.0f);


  // ------ Colour Shader for Bounding Box and Grids
  ngl::ShaderLib::use("nglColourShader");
  ngl::ShaderLib::setUniform("Colour", 1.0f, 0.0f, 0.0f, 1.0f); // red

  glEnable(GL_DEPTH_TEST); // for removal of hidden surfaces



  // ---------- objects -----------
  // ------ Sphere
  ngl::VAOPrimitives::createSphere("sphere", 1.0f, 40.0f); // radius..

  // ------ Bounding box
  m_bbox = std::make_unique<ngl::BBox>(ngl::Vec3(0.0f, 0.0f, 0.0f), 80.0f, 80.0f, 80.0f);
  m_bbox->setDrawMode(GL_LINE);

  // ----- Grids
  ngl::VAOPrimitives::createLineGrid("plane", 80.0f, 80.0f, 20.0f);

  ngl::Vec3 pos;
  pos.set(0.0f, -40.0f,0.0f);
  m_gridArray[0].set(pos);

  pos.set(0.0f, 40.0f, 0.0f);
  m_gridArray[1].set(pos);


  // ------------ update timer -----------
  m_updateTimer = startTimer(40);

}



void NGLScene::loadMatricesToDiffuseShader()
{
  ngl::ShaderLib::use("nglDiffuseShader");
  ngl::Mat4 MV;
  ngl::Mat4 MVP;
  ngl::Mat3 normalMatrix;
  MV = m_view * m_mouseGlobalTX;
  MVP = m_project * MV;
  normalMatrix = MV;
  normalMatrix.inverse().transpose();
  ngl::ShaderLib::setUniform("MVP", MVP);
  ngl::ShaderLib::setUniform("normalMatrix", normalMatrix);
}


void NGLScene::loadMatricesToColourShader()
{
  ngl::ShaderLib::use("nglColourShader");
  ngl::Mat4 MV;
  ngl::Mat4 MVP;
  ngl::Mat3 normalMatrix;
  MV = m_view * m_mouseGlobalTX;
  MVP = m_project * MV;
  normalMatrix = MV;
  normalMatrix.inverse().transpose();
  ngl::ShaderLib::setUniform("MVP", MVP);
  ngl::ShaderLib::setUniform("normalMatrix", normalMatrix);
}




void NGLScene::paintGL()
{
  // clear the screen and depth buffer
  glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
  glViewport(0, 0, m_win.width, m_win.height);
  // Rotation based on the mouse position for our global
  // transform
  auto rotX = ngl::Mat4::rotateX(m_win.spinXFace);
  auto rotY = ngl::Mat4::rotateY(m_win.spinYFace);
  // multiply the rotations
  m_mouseGlobalTX = rotY * rotX;
  // add the translations
  m_mouseGlobalTX.m_m[3][0] = m_modelPos.m_x;
  m_mouseGlobalTX.m_m[3][1] = m_modelPos.m_y;
  m_mouseGlobalTX.m_m[3][2] = m_modelPos.m_z;




  // Draw Bounding Box
  ngl::ShaderLib::use("nglColourShader");
  loadMatricesToColourShader();
  m_bbox->draw();


  // Draw Grids
  ngl::ShaderLib::use("nglColourShader");
  for (Grid g : m_gridArray)
  {
    g.draw("nglColourShader", m_mouseGlobalTX, m_view, m_project);
  }


  // Draw Spheres
  ngl::ShaderLib::use("nglDiffuseShader");
  for (Sphere s : m_sphereArray)
  {
    s.draw("nglDiffuseShader", m_mouseGlobalTX, m_view, m_project);
  }
}




// ------------------------------------------------------------------- //



/* collision detection : sphere - sphere */
bool NGLScene::sphereSphereColDetect(ngl::Vec3 _pos1, GLfloat _radius1, ngl::Vec3 _pos2, GLfloat _radius2)
{
  // the relative position of the spheres
  ngl::Vec3 relPos; // 상대적 위치값

  // min an max distances of the spheres
  GLfloat dist;
  GLfloat minDist;
  GLfloat len;

  relPos = _pos1 - _pos2; // 상대적 위치는 공A위치 - 공B위치

  // and the distance
  len = relPos.length(); // 길이
  dist = len * len;
  minDist = _radius1 + _radius2;

  // if it is a hit
  if (dist <= (minDist * minDist)) // 상대적 위치값의 제곱이 최소거리(반지름+반지름, 만날때)의 제곱보다 짧다면
  {
    return true; // 충돌입니다
  }
  else
  {
    return false;
  }
}



/* collision response: sphere - sphere */
void NGLScene::sphereSphereColResponse()
{
  // create a variable for checking collision
  bool collisionCheck;

  unsigned int size = m_sphereArray.size();
  // collision check for all spheres
  for (unsigned int s = 0; s < size; ++s)
  {
    // collision check for current sphere and all spheres
    for (unsigned int current_s = 0; current_s < size; ++current_s)
    {
      // skip if the sphere is itself
      if (s == current_s)
        continue;

      else
      {
        /* collision detection */
        collisionCheck = sphereSphereColDetect(m_sphereArray[current_s].getPos(), m_sphereArray[current_s].getRadius(), m_sphereArray[s].getPos(), m_sphereArray[s].getRadius());
      
        /* collision response*/
        if (collisionCheck == true)
        {
          m_sphereArray[current_s].collisionResponse_ss();
          m_sphereArray[current_s].setHit();
        }
      }
    }
  }
}




/* collision check, response - bounding box - sphere */
void NGLScene::BBoxCollision()
{
  // array of the extents of the bounding box
  float bboxExt[6];
  bboxExt[0] = bboxExt[1] = (m_bbox->height() / 2.0f);
  bboxExt[2] = bboxExt[3] = (m_bbox->width() / 2.0f);
  bboxExt[4] = bboxExt[5] = (m_bbox->depth() / 2.0f);


  ngl::Vec3 p;
  GLfloat D;


  /* collision detection: sphere - bounding box */
  for (Sphere &s : m_sphereArray)
  {
    p = s.getPos();

    // y direction collision check
    for (int i = 0; i < 2; ++i)
    {
      D = m_bbox->getNormalArray()[i].dot(p);
      D += s.getRadius();

      if (D >= bboxExt[i]) 
      {
        /* collision response: bounding box - sphere */
        s.collisionResponse_bbox_ydir();
        s.setHit(); 
      }            
    }      

    // x direction collision check
    for (int i = 2; i < 4; ++i) 
    {
      D = m_bbox->getNormalArray()[i].dot(p);
      D += s.getRadius();

      if (D >= bboxExt[i]) 
      {
        /* collision response: bounding box - sphere */
        s.collisionResponse_bbox_xdir();
        s.setHit(); 
      }            
    }  

    // z direction collision check
    for (int i = 4; i < 6; ++i)
    {
      D = m_bbox->getNormalArray()[i].dot(p);
      D += s.getRadius();

      if (D >= bboxExt[i]) 
      {
        /* collision response: bounding box - sphere */
        s.collisionResponse_bbox_zdir();
        s.setHit(); 
      }            
    }      
  }                 
}





// check all Collisions
void NGLScene::allCollisionCheck()
{
  if (m_boolSphereSphereCollide == true) 
  {
    sphereSphereColResponse(); 
  }
  BBoxCollision(); 

}



/* update sphere per frame */
void NGLScene::updateScene()
{
  for (Sphere &s : m_sphereArray)
  {
    s.updateSpherepos(1.0f/60.0f);
  }
  allCollisionCheck();

}



// ------------------------------------------------------------------- //


/* Key Events */
void NGLScene::keyPressEvent(QKeyEvent *_event)
{
  switch (_event->key())
  {
  // escape key to quite [ESC]
  case Qt::Key_Escape:
    QGuiApplication::exit(EXIT_SUCCESS);
    break;
  // show full screen [F]
  case Qt::Key_F:
    showFullScreen();
    break;
  // show windowed [N]
  case Qt::Key_N:
    showNormal(); 
    break;

  // animation on/off [SPACE]
  case Qt::Key_Space: 
    m_animationOnOff ^= true;
    break;

  // recreate Spheres [R]
  case Qt::Key_R: 
    createSpheres(); 
    break;

  default:
    break;
  }
  update();
}

void NGLScene::timerEvent(QTimerEvent *_event)
{
  if (_event->timerId() == m_updateTimer)
  {
    if (m_animationOnOff != true){return;}
  }
  updateScene();
  update();
}