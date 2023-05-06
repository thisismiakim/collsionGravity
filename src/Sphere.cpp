#include "Sphere.h"
#include <ngl/VAOPrimitives.h>


Sphere::Sphere( ngl::Vec3 _pos, ngl::Vec3 _dir,  GLfloat _rad, ngl::Vec3 _vel)
{
  //velocity
  m_pos=_pos;
  m_dir=_dir;
  m_radius=_rad;
  m_vel=_vel;
  m_hit=false;
}

Sphere::Sphere()
{
  m_hit=false;
}

void Sphere :: set(ngl::Vec3 _pos, ngl::Vec3 _dir, GLfloat _rad, ngl::Vec3 _vel)
{
  m_pos=_pos;
  m_dir=_dir;
  m_radius=_rad;
  m_vel =_vel;
}

void Sphere::loadMatricesToDiffuseShader( ngl::Transformation &_tx, const ngl::Mat4 &_globalMat,const  ngl::Mat4 &_view,const ngl::Mat4 &_project  ) const
{
  ngl::Mat4 MV;
  ngl::Mat4 MVP;
  ngl::Mat3 normalMatrix;
  MV=_view  *_globalMat* _tx.getMatrix();
  MVP=_project*MV;
  normalMatrix=MV;
  normalMatrix.inverse().transpose();
  ngl::ShaderLib::setUniform("MVP",MVP);
  ngl::ShaderLib::setUniform("normalMatrix",normalMatrix);
}


void Sphere::draw(const std::string &_shaderName, const ngl::Mat4 &_globalMat,  const ngl::Mat4 &_view , const ngl::Mat4 &_project)const
{
  ngl::ShaderLib::use(_shaderName);
  ngl::Transformation t;


  //Change the color when hitted
  if(m_hit) // hit colour
  {
  ngl::ShaderLib::setUniform("Colour", 1.0f, 0.0f, 1.0f, 1.0f); 
  ngl::ShaderLib::setUniform("lightPos", 1.0f, 1.0f, 1.0f);
  ngl::ShaderLib::setUniform("lightDiffuse", 1.0f, 1.0f, 1.0f, 1.0f);
  }
  else // default
  {
  ngl::ShaderLib::setUniform("Colour", 1.0f, 1.0f, 1.0f, 1.0f); // white random?
  ngl::ShaderLib::setUniform("lightPos", 1.0f, 1.0f, 1.0f);
  ngl::ShaderLib::setUniform("lightDiffuse", 1.0f, 1.0f, 1.0f, 1.0f);
  }

  t.setScale(m_radius,m_radius,m_radius);
  t.setPosition(m_pos);
  loadMatricesToDiffuseShader(t,_globalMat,_view,_project);
  ngl::VAOPrimitives::draw("sphere");
  glPolygonMode(GL_FRONT_AND_BACK,GL_FILL);
}


// numerical integration?
// friction
void Sphere::updateSpherepos(const float &dt)
{
  m_lastPos=m_pos;
  const static ngl::Vec3 gravity(0.0f, -9.8f, 0.0f);
  
  m_vel += gravity * dt;
  m_pos += m_vel * dt;
  m_nextPos = m_pos + m_vel * dt;

  m_hit=false;
}

void Sphere::collisionResponse_bbox_xdir()
{
  // set coefficient of restitution(COR)
  static const float cor = 0.9f;
  if (abs(m_vel.m_x) >= 0.0f)
  {
    m_vel.m_x *= -1.0 * cor;
  }  
  
}
void Sphere::collisionResponse_bbox_ydir()
{
  // set coefficient of restitution(COR)
  static const float cor = 0.9f;
  if (abs(m_vel.m_y) >= 0.0f)
  {
    m_vel.m_y *= -1.0 * cor;
  }  
  
}


void Sphere::collisionResponse_bbox_zdir()
{
  // set coefficient of restitution(COR)
  static const float cor = 0.9f;
  if (abs(m_vel.m_z) >= 0.0f)
  {
    m_vel.m_z *= -1.0 * cor;
  }  
  
}




/* sphere - sphere collision response */
void Sphere::collisionResponse_ss()
{
  // perfect elastic collision
  // set coefficient of restitution(COR)
  static const float cor = 1.0f;

  GLfloat m_velScale = abs(m_vel.m_x) + abs(m_vel.m_y) + abs(m_vel.m_z);
  if (m_velScale >= 0.0f)
  {
    m_vel *= -1.0 * cor;
  }

}


