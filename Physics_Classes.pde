/*
 * The Origin is at the Lower Left corner (LL origin)
 * The entire plane is divided into grid points 
 * 
 */

class CG_Point {
  float x, y;
  CG_Point(float x, float y) {
    this.x = x;
    this.y = y;
  }
}

static class CG_Vector {
  float x_iCap;
  float y_jCap;
  
  CG_Vector(float xi,float yj) {
    this.x_iCap = xi;
    this.y_jCap = yj;
  }
  
  String description() {  //Description of the vector
    return str(this.x_iCap) + "i + " + str(this.y_jCap) + "j";    
  }
  
  float magnitude() {  //Magnitude of the vector
    return sqrt(pow(this.x_iCap,2) + pow(this.y_jCap,2));
  }
  
  //To find the unit vector
  CG_Vector unitVector() {
    float magnitude = this.magnitude();
    return this.multiplicationByScalar(1.0/magnitude);
  }
  
  //To multiply the vector by a scalar
  CG_Vector multiplicationByScalar(float scalarValue) {
    return new CG_Vector(this.x_iCap * scalarValue,this.y_jCap * scalarValue); 
  }
  
  //Dot product of two vectors
  static double dotProduct(CG_Vector v1, CG_Vector v2) {
    return v1.x_iCap * v2.x_iCap + v1.y_jCap * v2.y_jCap;
  }
  double dotProductWith(CG_Vector v2) {
    return dotProduct(this,v2);
  }
  
  //Angle between vectors
  /*
  BETA
  static double angleBetweenVectors(CG_Vector vect1,CG_Vector vect2) {
    vect2.dotProductWith(vect1);
  }
  */
}

class Circle_Ball {  //A ball
  CG_Point currentPosition;
  CG_Vector acceleration = new CG_Vector(0,-9.8);
  
}


abstract class CG_Boundary {  //Must be a function of X - The boundary of the curve
  abstract float BoundaryFunction(float X);
  color boundaryColor = color(255);
}