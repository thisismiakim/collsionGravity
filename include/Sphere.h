#ifndef SPHERE_H_
#define SPHERE_H_

#include <ngl/ShaderLib.h>
#include <ngl/Transformation.h>
#include <ngl/Vec3.h>

class Sphere
{
public :
	Sphere(ngl::Vec3 _pos, ngl::Vec3 _dir, GLfloat _rad);
	Sphere();
	~Sphere()=default; 
	// set sphere position, direction and radius
	void set(ngl::Vec3 _pos, ngl::Vec3 _dir, GLfloat _rad );


	void draw(const std::string &_shaderName,const ngl::Mat4 &_globalMat, const  ngl::Mat4 &_view, const ngl::Mat4 &_project)const ;
	void loadMatricesToDiffuseShader(ngl::Transformation &_tx, const ngl::Mat4 &_globalMat, const ngl::Mat4 &_view , const ngl::Mat4 &_project)const;
	

	// for collision 
	inline void reverse(){m_dir=m_dir*-1.0;}

	inline void setHit(){m_hit=true;}
	inline void setNotHit(){m_hit=false;}
	inline bool isHit()const {return m_hit;}

	inline ngl::Vec3 getPos() const {return m_pos;}
	inline ngl::Vec3 getNextPos() const {return m_nextPos;}
	inline GLfloat getRadius() const {return m_radius;}

	inline void setDirection(ngl::Vec3 _d){m_dir=_d;}
	inline ngl::Vec3 getDirection() const { return m_dir;}

	inline void setColour(const ngl::Vec4 &_c){m_colour=_c;}

	// update Position
	void updatePos();
  



private :
    ngl::Vec3 m_pos;
	ngl::Vec3 m_dir;
	GLfloat m_radius;
	/*! flag to indicate if the sphere has been hit by ray */
	bool m_hit;


	ngl::Vec3 m_lastPos;
		// the next position of the sphere
	ngl::Vec3 m_nextPos;
	ngl::Vec4 m_colour;

};





#endif
