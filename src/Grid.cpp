#include "Grid.h"
#include <ngl/VAOPrimitives.h>

Grid::Grid(const ngl::Vec3 &_pos)
{
    m_pos=_pos;
}

Grid::Grid()
{
    ngl::Vec3 pos;
    pos.set(0.0f, 0.0f, 0.0f);
    m_pos = pos;
}
void Grid::set(const ngl::Vec3 &_pos)
{
    m_pos = _pos;
}

void Grid::loadMatricesToShader( ngl::Transformation &_transform,const ngl::Mat4 &_globalTx, const ngl::Mat4 &_view, const ngl::Mat4 &_project ) const
{
  ngl::Mat4 MV;
  ngl::Mat4 MVP;
  ngl::Mat3 normalMatrix;
  ngl::Mat4 M;
  M=_globalTx*_transform.getMatrix();
  MV=_view *M;
  MVP=_project*MV;
  normalMatrix=MV;
  normalMatrix.inverse().transpose();
  ngl::ShaderLib::setUniform("MVP",MVP);
  ngl::ShaderLib::setUniform("normalMatrix",normalMatrix);

}

void Grid::draw(const std::string &_shaderName, const ngl::Mat4 &_globalTx, const ngl::Mat4 &_view, const ngl::Mat4 &_project  )const 
{
    ngl::ShaderLib::use(_shaderName);
    ngl::Transformation transform;
    transform.reset();
    {
        transform.setPosition(m_pos);
        loadMatricesToShader(transform,_globalTx,_view,_project);
        ngl::VAOPrimitives::draw("plane");
    }
}