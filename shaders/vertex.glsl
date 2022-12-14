uniform float time;
varying float pulse;

varying vec2 vUv;
varying vec3 vNormal;

void main(){
    vUv = uv;
    vNormal = normal;
    vec3 newPosition = position;
    newPosition.z = 0.05*sin(length(position)*30. + time);
    pulse = 2.*newPosition.z;
    gl_Position = projectionMatrix * modelViewMatrix * vec4( position, 1.0 );
}