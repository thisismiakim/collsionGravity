#ifndef NGLSCENE_H_
#define NGLSCENE_H_

#include <ngl/BBox.h> 
#include "WindowParams.h"
#include "Sphere.h"
#include "Grid.h"
#include <QOpenGLWindow>
#include <memory>
#include <array>

class NGLScene : public QOpenGLWindow
{
  public:
    NGLScene(int _numSpheres); 
    ~NGLScene() override;
    // initialise GL
    void initializeGL() override;
    // drawing scene
    void paintGL() override;
    // resize scene
    void resizeGL(int _w, int _h) override;


private:
    
    WinParams m_win;
    ngl::Mat4 m_mouseGlobalTX;

    // camera
    ngl::Mat4 m_view;
    ngl::Mat4 m_project;
    // the model position for mouse movement
    ngl::Vec3 m_modelPos;


    /* shaders */
    // load transform matrices to the shader
    void loadMatricesToDiffuseShader();
    // load transform matrices to Colour shader
    void loadMatricesToColourShader();
    
  
    /* create objects */
    // bounding box
    std::unique_ptr<ngl::BBox> m_bbox;

    // grid
    std::array<Grid,2> m_gridArray;
    
    // spheres
    std::vector <Sphere> m_sphereArray;
    int m_numSpheres;
    void createSpheres();


    /* update the scene */
    // update and calculate the scene per frame
    void updateScene();   
    // timer for updating sphere position
    int m_updateTimer;
    // animation on/off
    bool m_animationOnOff;
    // detect collisions per frame
    void detectCollisions();



    // collision check between sphere and sphere
    bool m_boolSphereSphereCollide;

    // check collision detection between two spheres
    // position vector and radius is needed
    bool sphereSphereCollision( ngl::Vec3 _pos1, GLfloat _radius1, ngl::Vec3 _pos2, GLfloat _radius2 );
    


    /* calculate collisions */
    // calculate collisions between the bounding box and spheres
    void BBoxCollision();
    // calculate collisions betweens spheres
    void checkSphereCollisions();
    



    /*--------- key events ------------*/
    void keyPressEvent(QKeyEvent *_event) override;
    void mouseMoveEvent (QMouseEvent * _event ) override;
    void mousePressEvent ( QMouseEvent *_event) override;
    void mouseReleaseEvent ( QMouseEvent *_event ) override;
    void wheelEvent( QWheelEvent *_event) override;
    void timerEvent( QTimerEvent *_event) override;

};
#endif
