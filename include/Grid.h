#ifndef GRID_H_
#define GRID_H_

#include <ngl/ShaderLib.h>
#include <ngl/Transformation.h>
#include <ngl/Vec3.h>

class Grid
{
public:
    Grid(const ngl::Vec3 &_pos);
    Grid();

    void draw(const std::string &_shaderName, const ngl::Mat4 &_globalTx, const ngl::Mat4 &_view, const ngl::Mat4 &_project  )const ;
    void loadMatricesToShader(ngl::Transformation &_transform, const ngl::Mat4 &_globalTx, const ngl::Mat4 &_view, const ngl::Mat4 &_project   )const;
    
    inline ngl::Vec3 getPos() const {return m_pos;}
    inline ngl::Vec3 getNextPos() const {return m_nextPos;}

    void set (const ngl::Vec3 &_pos);
private:
    ngl::Vec3 m_pos;
    ngl::Vec3 m_lastPos;
    ngl::Vec3 m_nextPos;
};

#endif