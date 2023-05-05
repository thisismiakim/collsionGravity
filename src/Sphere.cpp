#include "Sphere.h"
#include <ngl/VAOPrimitives.h>


Sphere::Sphere( ngl::Vec3 _pos, ngl::Vec3 _dir,  GLfloat _rad)
{
  m_pos=_pos;
  m_dir=_dir;
  m_radius=_rad;
  m_hit=false;
}

Sphere::Sphere()
{
  m_hit=false;
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


  // Change the color when hitted
  if(m_hit)
  {
  ngl::ShaderLib::setUniform("Colour", 1.0f, 0.0f, 1.0f, 1.0f); // white random?
  ngl::ShaderLib::setUniform("lightPos", 1.0f, 1.0f, 1.0f);
  ngl::ShaderLib::setUniform("lightDiffuse", 1.0f, 1.0f, 1.0f, 1.0f);

  }
  else
  {
  ngl::ShaderLib::setUniform("Colour", 1.0f, 1.0f, 1.0f, 1.0f); // white random?
  ngl::ShaderLib::setUniform("lightPos", 1.0f, 1.0f, 1.0f);
  ngl::ShaderLib::setUniform("lightDiffuse", 1.0f, 1.0f, 1.0f, 1.0f);
  }
  


  t.setPosition(m_pos);
  t.setScale(m_radius,m_radius,m_radius);
  loadMatricesToDiffuseShader(t,_globalMat,_view,_project);
  ngl::VAOPrimitives::draw("sphere");
  glPolygonMode(GL_FRONT_AND_BACK,GL_FILL);
}


void Sphere :: set(ngl::Vec3 _pos, ngl::Vec3 _dir, GLfloat _rad)
{
  m_pos=_pos;
  m_dir=_dir;
  m_radius=_rad;
}

void Sphere::updatePos()
{
  // store the last position
  m_lastPos=m_pos;
  // update the current position
  m_pos+=m_dir;
  // get the next position
  m_nextPos=m_pos+m_dir;
  m_hit=false;
}


