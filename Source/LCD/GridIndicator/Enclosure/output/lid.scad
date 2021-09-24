union() // SharpSCAD generated scene: lid
{
  { // module: lid
    color( c= "white" )
    {
      difference()
      {
        translate( v= [ 0, 0, 36.5 ] )
        {
          union()
          {
            translate( v= [ 0, 0, 1 ] )
            {
              { // module: roundedcube
                translate( v= [ -21.4, -22.4, -1 ] )
                {
                  translate( v= [ 0, 0, 0 ] )
                  {
                    hull()
                    {
                      translate( v= [ 1, 1, 1 ] )
                      {
                        sphere( r= 1, $fn= 32 );
                      }
                      translate( v= [ 1, 43.8, 1 ] )
                      {
                        sphere( r= 1, $fn= 32 );
                      }
                      translate( v= [ 1, 1, 1 ] )
                      {
                        sphere( r= 1, $fn= 32 );
                      }
                      translate( v= [ 1, 43.8, 1 ] )
                      {
                        sphere( r= 1, $fn= 32 );
                      }
                      translate( v= [ 41.8, 1, 1 ] )
                      {
                        sphere( r= 1, $fn= 32 );
                      }
                      translate( v= [ 41.8, 43.8, 1 ] )
                      {
                        sphere( r= 1, $fn= 32 );
                      }
                      translate( v= [ 41.8, 1, 1 ] )
                      {
                        sphere( r= 1, $fn= 32 );
                      }
                      translate( v= [ 41.8, 43.8, 1 ] )
                      {
                        sphere( r= 1, $fn= 32 );
                      }
                      union()
                      {
                        cube( size= [ 42.8, 44.8, 1 ] );
                      }
                    }
                  }
                }
              }
            }
            translate( v= [ 17.5, 13.6, -6 ] )
            {
              cube( size= [ 4.25, 12.25, 12 ], center= true );
            }
            translate( v= [ -17.5, 13.6, -6 ] )
            {
              cube( size= [ 4.25, 12.25, 12 ], center= true );
            }
          }
        }
        translate( v= [ -21.5, 13.6, 29.55 ] )
        {
          rotate( a= [ 0, 90, 0 ] )
          {
            union()
            {
              translate( v= [ 0, 0, 39.3 ] )
              {
                cylinder( r= 3.2, $fn= 32, h= 4 );
              }
              cylinder( r= 2, $fn= 32, h= 43.1 );
            }
          }
        }
        translate( v= [ -21.5, 13.6, 29.55 ] )
        {
          rotate( a= [ 0, 90, 0 ] )
          {
            cylinder( r= 3.5, $fn= 6, h= 3 );
          }
        }
        translate( v= [ 0, 13.6, 36.4 ] )
        {
          { // module: button
            color( c= "yellow" )
            {
              union()
              {
                translate( v= [ 0, 0, -1.5 ] )
                {
                  cube( size= [ 31, 6, 3 ], center= true );
                }
                rotate( a= [ 180, 0, 0 ] )
                {
                  cylinder( r= 7.5, $fn= 64, h= 5 );
                }
                cylinder( r= 4.5, $fn= 64, h= 5 );
              }
            }
          }
        }
        translate( v= [ 0, -8.05, 32.5 ] )
        {
          { // module: led_matrix_shield
            union()
            {
              { // module: d1_footprint
                translate( v= [ 0, 0, 1.8 ] )
                {
                  union()
                  {
                    color( c= "darkcyan" )
                    {
                      cube( size= [ 36, 28, 3.6 ], center= true );
                    }
                  }
                }
              }
              color( c= "white" )
              {
                translate( v= [ 0, 0.5, 5 ] )
                {
                  cube( size= [ 20.5, 20.5, 6 ], center= true );
                }
              }
            }
          }
        }
      }
    }
  }
}
