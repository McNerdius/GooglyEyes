union() // SharpSCAD generated scene: module
{
  { // module: tftmodule
    union()
    {
      translate( v= [ 0, -2, 0 ] )
      {
        { // module: roundedcube
          translate( v= [ -30, -2, -22 ] )
          {
            translate( v= [ 0, 0, 0 ] )
            {
              hull()
              {
                translate( v= [ 1, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 3, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 1, 43 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 3, 43 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 59, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 59, 3, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 59, 1, 43 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 59, 3, 43 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                union()
                {
                  translate( v= [ 0, 3, 0 ] )
                  {
                    cube( size= [ 60, 1, 44 ] );
                  }
                }
              }
            }
          }
        }
      }
      translate( v= [ 0, 0.65, 0 ] )
      {
        cube( size= [ 72, 1.5, 44 ], center= true );
      }
      translate( v= [ 0, 6.9, 0 ] )
      {
        { // module: roundedcube
          translate( v= [ -36, -7, -22 ] )
          {
            translate( v= [ 0, 0, 0 ] )
            {
              hull()
              {
                translate( v= [ 2, 2, 2 ] )
                {
                  sphere( r= 2, $fn= 32 );
                }
                translate( v= [ 2, 12, 2 ] )
                {
                  sphere( r= 2, $fn= 32 );
                }
                translate( v= [ 2, 2, 42 ] )
                {
                  sphere( r= 2, $fn= 32 );
                }
                translate( v= [ 2, 12, 42 ] )
                {
                  sphere( r= 2, $fn= 32 );
                }
                translate( v= [ 70, 2, 2 ] )
                {
                  sphere( r= 2, $fn= 32 );
                }
                translate( v= [ 70, 12, 2 ] )
                {
                  sphere( r= 2, $fn= 32 );
                }
                translate( v= [ 70, 2, 42 ] )
                {
                  sphere( r= 2, $fn= 32 );
                }
                translate( v= [ 70, 12, 42 ] )
                {
                  sphere( r= 2, $fn= 32 );
                }
                union()
                {
                  cube( size= [ 72, 2, 44 ] );
                }
              }
            }
          }
        }
      }
    }
  }
}
