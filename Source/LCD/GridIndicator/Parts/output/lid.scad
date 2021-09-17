union() // SharpSCAD generated scene: lid
{
  { // module: lid
    difference()
    {
      translate( v= [ 0, 0, 35 ] )
      {
        union()
        {
          translate( v= [ 0, 0, -1.5 ] )
          {
            { // module: roundedcube
              translate( v= [ -23.625, -23.625, -1.5 ] )
              {
                translate( v= [ 0, 0, 0 ] )
                {
                  hull()
                  {
                    translate( v= [ 1.5, 1.5, 1.5 ] )
                    {
                      sphere( r= 1.5, $fn= 32 );
                    }
                    translate( v= [ 1.5, 45.75, 1.5 ] )
                    {
                      sphere( r= 1.5, $fn= 32 );
                    }
                    translate( v= [ 1.5, 1.5, 1.5 ] )
                    {
                      sphere( r= 1.5, $fn= 32 );
                    }
                    translate( v= [ 1.5, 45.75, 1.5 ] )
                    {
                      sphere( r= 1.5, $fn= 32 );
                    }
                    translate( v= [ 45.75, 1.5, 1.5 ] )
                    {
                      sphere( r= 1.5, $fn= 32 );
                    }
                    translate( v= [ 45.75, 45.75, 1.5 ] )
                    {
                      sphere( r= 1.5, $fn= 32 );
                    }
                    translate( v= [ 45.75, 1.5, 1.5 ] )
                    {
                      sphere( r= 1.5, $fn= 32 );
                    }
                    translate( v= [ 45.75, 45.75, 1.5 ] )
                    {
                      sphere( r= 1.5, $fn= 32 );
                    }
                    union()
                    {
                      translate( v= [ 0, 0, 1.5 ] )
                      {
                        cube( size= [ 47.25, 47.25, 1.5 ] );
                      }
                    }
                  }
                }
              }
            }
          }
          translate( v= [ 0, 0, 1.25 ] )
          {
            { // module: roundedcube
              translate( v= [ -24.9, -24.9, -1.25 ] )
              {
                translate( v= [ 0, 0, 0 ] )
                {
                  hull()
                  {
                    translate( v= [ 1, 1, 1 ] )
                    {
                      sphere( r= 1, $fn= 32 );
                    }
                    translate( v= [ 1, 48.8, 1 ] )
                    {
                      sphere( r= 1, $fn= 32 );
                    }
                    translate( v= [ 1, 1, 1.5 ] )
                    {
                      sphere( r= 1, $fn= 32 );
                    }
                    translate( v= [ 1, 48.8, 1.5 ] )
                    {
                      sphere( r= 1, $fn= 32 );
                    }
                    translate( v= [ 48.8, 1, 1 ] )
                    {
                      sphere( r= 1, $fn= 32 );
                    }
                    translate( v= [ 48.8, 48.8, 1 ] )
                    {
                      sphere( r= 1, $fn= 32 );
                    }
                    translate( v= [ 48.8, 1, 1.5 ] )
                    {
                      sphere( r= 1, $fn= 32 );
                    }
                    translate( v= [ 48.8, 48.8, 1.5 ] )
                    {
                      sphere( r= 1, $fn= 32 );
                    }
                    union()
                    {
                      cube( size= [ 49.8, 49.8, 1 ] );
                    }
                  }
                }
              }
            }
          }
        }
      }
      translate( v= [ -7.5, 0, 32 ] )
      {
        scale( v= [ 1.1, 1.1, 1 ] )
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
                      cube( size= [ 35, 26, 3.6 ], center= true );
                    }
                  }
                }
              }
              color( c= "white" )
              {
                translate( v= [ 0, 0.5, 5 ] )
                {
                  cube( size= [ 20, 20, 6 ], center= true );
                }
              }
            }
          }
        }
      }
      translate( v= [ 0, 0, 3 ] )
      {
        translate( v= [ 19.5, 19.5, -0.1 ] )
        {
          union()
          {
            translate( v= [ 0, 0, 31.3 ] )
            {
              cylinder( r= 2.7, $fn= 32, h= 3.8 );
            }
            cylinder( r= 1.7, $fn= 32, h= 35.1 );
          }
        }
      }
      mirror( v= [ 1, 0, 0 ] )
      {
        translate( v= [ 0, 0, 3 ] )
        {
          translate( v= [ 19.5, 19.5, -0.1 ] )
          {
            union()
            {
              translate( v= [ 0, 0, 31.3 ] )
              {
                cylinder( r= 2.7, $fn= 32, h= 3.8 );
              }
              cylinder( r= 1.7, $fn= 32, h= 35.1 );
            }
          }
        }
      }
      mirror( v= [ 0, 1, 0 ] )
      {
        translate( v= [ 0, 0, 3 ] )
        {
          translate( v= [ 19.5, 19.5, -0.1 ] )
          {
            union()
            {
              translate( v= [ 0, 0, 31.3 ] )
              {
                cylinder( r= 2.7, $fn= 32, h= 3.8 );
              }
              cylinder( r= 1.7, $fn= 32, h= 35.1 );
            }
          }
        }
      }
      mirror( v= [ 0, 1, 0 ] )
      {
        mirror( v= [ 1, 0, 0 ] )
        {
          translate( v= [ 0, 0, 3 ] )
          {
            translate( v= [ 19.5, 19.5, -0.1 ] )
            {
              union()
              {
                translate( v= [ 0, 0, 31.3 ] )
                {
                  cylinder( r= 2.7, $fn= 32, h= 3.8 );
                }
                cylinder( r= 1.7, $fn= 32, h= 35.1 );
              }
            }
          }
        }
      }
    }
  }
}
