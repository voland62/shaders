#ifdef GL_ES
precision mediump float;
#endif

// delete this line

//uniform float iGlobalTime;
//uniform vec4 iMouse;
//uniform vec3 iResolution;

void main( void ) {

  vec2 position = ( gl_FragCoord.xy / iResolution.xy ) + iMouse.xy / 4.0;

  float time = iGlobalTime * 0.05;

  float color = 0.0;
  color += sin( position.x * cos( time / 15.0 ) * 80.0 ) + cos( position.y * cos( time / 15.0 ) * 10.0 );
  color += sin( position.y * sin( time / 10.0 ) * 40.0 ) + cos( position.x * sin( time / 25.0 ) * 40.0 );
  color += sin( position.x * sin( time / 5.0 ) * 10.0 ) + sin( position.y * sin( time / 35.0 ) * 80.0 );
  color *= sin( time / 10.0 ) * 0.5;


  gl_FragColor = vec4( 0.1, 0.1, 0.2, 1.0 );

  if (distance (iMouse.xy, gl_FragCoord.xy) < 30)
    {
      gl_FragColor = vec4( 1.0, 0.0, 0.0, 1.0 );
    }

  if (gl_FragCoord.y <= 100 * sin( gl_FragCoord.x * 0.1 ))
    {
      gl_FragColor = vec4( 0.0, 1.0, 0.0, 1.0 );
    }


  //gl_FragColor = vec4( vec3( color, color * 0.5, sin( color + time / 3.0 ) * 0.75 ), 1.0 );
  //gl_FragColor = vec4( 1.0, 0.5, 0.0, 1.0 );

}
