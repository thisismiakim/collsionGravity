#ifndef SPHERE_H_
#define SPHERE_H_

#include <ngl/ShaderLib.h>
#include <ngl/Transformation.h>
#include <ngl/Vec3.h>

class Sphere
{
public :
	Sphere(ngl::Vec3 _pos, GLfloat _rad, ngl::Vec3 _vel);
	Sphere();
	~Sphere()=default; 

	void set(ngl::Vec3 _pos, GLfloat _rad, ngl::Vec3 _vel);

	void draw(const std::string &_shaderName,const ngl::Mat4 &_globalMat, const  ngl::Mat4 &_view, const ngl::Mat4 &_project)const ;
	void loadMatricesToDiffuseShader(ngl::Transformation &_tx, const ngl::Mat4 &_globalMat, const ngl::Mat4 &_view , const ngl::Mat4 &_project)const;
	
	void collisionResponse_bbox_xdir();
	void collisionResponse_bbox_ydir();
	void collisionResponse_bbox_zdir();
	
	void collisionResponse_ss();

	inline void setHit(){m_hit=true;}
	inline void setNotHit(){m_hit=false;}
	inline bool isHit()const {return m_hit;}

	inline ngl::Vec3 getPos() const {return m_pos;}
	inline ngl::Vec3 getNextPos() const {return m_nextPos;}
	inline GLfloat getRadius() const {return m_radius;}

	void updateSpherepos(const float & dt);
  

private :

    ngl::Vec3 m_pos;
	ngl::Vec3 m_vel;
    GLfloat m_radius;
	bool m_hit;
	ngl::Vec3 m_lastPos;
	ngl::Vec3 m_nextPos;
};
#endif
