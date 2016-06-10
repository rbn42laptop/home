
/*#version 300 es
uniform mat4 u_mvpMatrix;

in vec4 a_position;
in vec4 a_color;

out vec4 v_color; 
void main()
{
v_color=a_color; 
gl_Position=u_mvpMatrix*a_position;
}*/
varying vec3 normal, lightDir0, lightDir1, eyeVec;

void main()
{
	normal = gl_NormalMatrix * gl_Normal;

	vec3 vVertex = vec3(gl_ModelViewMatrix * gl_Vertex);

	lightDir0 =gl_LightSource[0].position.xyz - vVertex;
	lightDir1 = gl_LightSource[1].position.xyz - vVertex;
	lightDir1=vec3(lightDir1);
	eyeVec = -vVertex;

	gl_Position = ftransform();
 	gl_Position.x+=2.;
}
