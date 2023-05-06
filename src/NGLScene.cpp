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





// variables

// Sphere  생성

const static int s_bboxExtents = 10; // bounding box extents
const static float sphereRadius =2.0f;
ngl::Vec3 randomInitPos(ngl::Random::getRandomPoint(s_bboxExtents, s_bboxExtents, s_bboxExtents)); // 생성포즈
ngl::Vec3 centrePos(0, 0, 0);
ngl::Vec3 midPos(0,20.0f, 0);

void NGLScene::createSpheres()
{
  m_sphereArray.resize(m_numSpheres);
  std::generate(std::begin(m_sphereArray), std::end(m_sphereArray), [this]()
                { return Sphere(centrePos,
                                ngl::Random::getRandomVec3(), // 시작 디렉션
                                sphereRadius); });
}

//ngl::Random::randomPositiveNumber(2) + 0.5f






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
  ngl::Mat4 MVP;
  MVP = m_project * m_view * m_mouseGlobalTX;
  ngl::ShaderLib::setUniform("MVP", MVP);
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




/* update sphere per frame */
void NGLScene::updateScene()
{
  for (Sphere &s : m_sphereArray)
  {
    s.updatePos();
    // 스피어 위치, 충돌체크, 중력, 콜리전, 프레임마다 변하는 물리 장치들
    // 프레임 마다 움직이고
  }
  detectCollisions(); // 그 다음에 충돌 체크
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




/* collision detection */
// check collision between two spheres
bool NGLScene::sphereSphereCollision(ngl::Vec3 _pos1, GLfloat _radius1, ngl::Vec3 _pos2, GLfloat _radius2)
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




// 바운딩 박스 충돌체크
void NGLScene::BBoxCollision()
{
  // create an array of the extents of the bounding box
  // 꼭짓점 여섯개
  float ext[6];
  ext[0] = ext[1] = (m_bbox->height() / 2.0f);
  ext[2] = ext[3] = (m_bbox->width() / 2.0f);
  ext[4] = ext[5] = (m_bbox->depth() / 2.0f);

  // 벡터
  // Dot product needs a Vector so we convert The Point Temp into a Vector so we can
  // do a dot product on it
  // 내적 왜함?
  ngl::Vec3 p;

  //
  // D is the distance of the Agent from the Plane. If it is less than ext[i] then there is
  // no collision
  GLfloat D;

  // 스피어와 충돌체크
  // Loop for each sphere in the vector list
  for (Sphere &s : m_sphereArray)
  {
    // 포지션 가져옴
    p = s.getPos();

    // 여섯면에 대한 충돌체크
    // Now we need to check the Sphere agains all 6 planes of the BBOx
    // If a collision is found we change the dir of the Sphere then Break
    for (int i = 0; i < 6; ++i)
    {
      // to calculate the distance we take the dotporduct of the Plane Normal
      // with the new point P
      D = m_bbox->getNormalArray()[i].dot(p);
      // Now Add the Radius of the sphere to the offsett
      D += s.getRadius();
      // If this is greater or equal to the BBox extent /2 then there is a collision
      // So we calculate the Spheres new direction

      if (D >= ext[i])
      {
        // We use the same calculation as in raytracing to determine the
        //  the new direction
        GLfloat x = 2 * (s.getDirection().dot((m_bbox->getNormalArray()[i])));
        ngl::Vec3 d = m_bbox->getNormalArray()[i] * x;
        s.setDirection(s.getDirection() - d);
        s.setHit(); // 충돌입니다
      }             // end of hit test
    }               // end of each face test
  }                 // end of for
}





// 실제로 만나는 거 끼리 충돌 체크
void NGLScene::checkSphereCollisions()
{
  bool collide;

  unsigned int size = m_sphereArray.size(); // 어레이로 사이즈 받아오고

  // for 루프로 모든 공에 대해 체크
  for (unsigned int ToCheck = 0; ToCheck < size; ++ToCheck)
  {
    for (unsigned int Current = 0; Current < size; ++Current)
    {
      // don't check against self
      if (ToCheck == Current)
        continue;

      else
      {
        // cout <<"doing check"<<endl;
        collide = sphereSphereCollision(m_sphereArray[Current].getPos(), m_sphereArray[Current].getRadius(),
                                        m_sphereArray[ToCheck].getPos(), m_sphereArray[ToCheck].getRadius());
        if (collide == true)
        {
          m_sphereArray[Current].reverse();
          m_sphereArray[Current].setHit();
        }
      }
    }
  }
}



void NGLScene::detectCollisions()
{

  if (m_boolSphereSphereCollide == true) // 두공이 충돌이 아니면
  {
    checkSphereCollisions(); // 스피어끼리 충돌 체크
  }
  BBoxCollision(); // 바운딩 박스와의 충돌 체크
}













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

