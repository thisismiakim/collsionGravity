# Collision between rigid spheres and a bounding box based on real world physics in 3D environments.

## Description
##### The goal of this project is to develop a simple library of collision detection according to algorithms and mathematical equations based on Newton's classical mechanics.This is a collision detection system between sphere-sphere and sphere-bounding box, based on real world physics

## Project Design
1. The gravitational field acts within the bounding box
2. The position and size of the bounding box do not change
3. Frictional force acts on the ground (y-axis bottom of the bounding box)
4. Rigid spheres with initial velocity are created inside the bounding box
5. Inelastic collision occurs for all collisions, but the coefficient of restitution is different


## Algorithm Design


## Research
### Gravitational Force
##### Gravity must be considered in real world physics environment. Set the vertical direction of the ground plane to the y-axis, and apply a force of (x, y, z) = (0, -9.8, 0) to the -y direction that draws to the bottom surface to every change in motion at every moment

### Newton's second law
![img_physics](https://github.com/thisismiakim/collsionGravity/assets/74374317/017483c9-b587-40b0-acc4-4799ce691e1f)

##### Through numerical integration according to Newton's second law, the following position values can be expressed through the current velocity of the sphere and elapsed time. 

##### Newton's second law is a quantitative description of the changes that a force can produce on the motion. It can be written in the form F = ma, where F(force) and a(acceleration) are both vector quantities. m(mass) is constant. If the force is zero, there is no acceleration on a body. 

###### Britannica contributors, (n.g.) Newton's second law: F=ma. Britannica [online]. Available from: https://www.britannica.com/science/Newtons-laws-of-motion/Newtons-second-law-F-ma [Accessed May 10 2023]

##### By using numerical integration to the equation F=ma:
##### velocity = velocity + acceleration * dt
##### position = position + velocity * dt

###### (dt: instantaneous change in time)


### Collision Detection in 3D
##### Vector arithmetic and geometric equation are used for collision detection calculation in 3D environment.

#### 1 - Sphere and Sphere collision: Point to Point Distance
<img width="661" alt="img_plane" src="https://github.com/thisismiakim/collsionGravity/assets/74374317/38c1b601-307d-4aba-b795-32345e580ccd">

##### By overlapping two arrays, calculate the distance between the center point of one sphere and the center point of other spheres. Relative distance between two center points can be calculated by subtracting two position vectors of the center points of the spheres. If the relative distance between two sphere center points is shorter or equal, two spheres collide each other. 



#### 2 - Sphere and Bounding Box collision: Point to Plane Distance
![img_sphere](https://github.com/thisismiakim/collsionGravity/assets/74374317/0ac14b69-ece5-4a2c-a71b-49b323f1ac8b)
##### Comparing the distance of the sphere's point agent, adding the sphere radius and the half of the bounding box extent. The distance of the sphere's point agent from the plane can be measured by using dot product calculation of the normal vector of the plane and the point's position vector.


### Collision Response
![COR](https://github.com/thisismiakim/collsionGravity/assets/74374317/d16367ab-905d-4b91-9815-0c212a605575)

##### If there is no loss in kinetic energy in the system after the collision, it is an elastic collision. The coefficient of restitution is the ratio of the finial to initial relative speed between two objects after they collide. For the elastic collision, the coefficient of restitution is zero. However, it is hard to observe in real life. So, I set all collisions to the inelastic collision: COR is between zero and 1.

###### Khan Academy (n.d.). What are elastic and inelastic collisions? (article). [online] Khan Academy. Available at: https://www.khanacademy.org/science/physics/linear-momentum/elastic-and-inelastic-collisions/a/what-are-elastic-and-inelastic-collisions#:~:text=An%20elastic%20collision%20is%20a. [Accessed 11 May 2023]

###### Wikipedia Contributors (2019). Coefficient of restitution. [online] Wikipedia. Available at: https://en.wikipedia.org/wiki/Coefficient_of_restitution. [Accessed 11 May 2023]










## Compilation
##### This requires that NGL is installed in $(HOME)/NGL (or other system path) and that the required vcpkg installs are in place.


#### Create a build directory
###### mkdir build
###### cd build

#### Configure and build the project
##### Windows -
###### mkdir build
###### cd build
###### cmake -DCMAKE_PREFIX_PATH=~/NGL ..
###### cmake --build .

##### Mac Linux - 
###### cmake -DCMAKE_PREFIX_PATH=~/NGL ..
###### make

