union() // SharpSCAD generated scene: lid
{
  { // module: lid
    difference()
    {
      translate( v= [ 0, 0, 43 ] )
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
      translate( v= [ -7.5, 0, 40 ] )
      {
        scale( v= [ 1.1, 1.1, 1 ] )
        {
          { // module: led_matrix_shield
            union()
            {
              { // module: d1_footprint
                translate( v= [ 0, 0, 2 ] )
                {
                  union()
                  {
                    color( c= "darkcyan" )
                    {
                      cube( size= [ 26, 35, 4 ], center= true );
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
        translate( v= [ 20.5, 20.5, -0.1 ] )
        {
          union()
          {
            translate( v= [ 0, 0, 39.6 ] )
            {
              cylinder( r= 2.6, $fn= 32, h= 3.5 );
            }
            cylinder( r= 1.6, $fn= 32, h= 43.1 );
          }
        }
      }
      mirror( v= [ 1, 0, 0 ] )
      {
        translate( v= [ 0, 0, 3 ] )
        {
          translate( v= [ 20.5, 20.5, -0.1 ] )
          {
            union()
            {
              translate( v= [ 0, 0, 39.6 ] )
              {
                cylinder( r= 2.6, $fn= 32, h= 3.5 );
              }
              cylinder( r= 1.6, $fn= 32, h= 43.1 );
            }
          }
        }
      }
      mirror( v= [ 0, 1, 0 ] )
      {
        translate( v= [ 0, 0, 3 ] )
        {
          translate( v= [ 20.5, 20.5, -0.1 ] )
          {
            union()
            {
              translate( v= [ 0, 0, 39.6 ] )
              {
                cylinder( r= 2.6, $fn= 32, h= 3.5 );
              }
              cylinder( r= 1.6, $fn= 32, h= 43.1 );
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
            translate( v= [ 20.5, 20.5, -0.1 ] )
            {
              union()
              {
                translate( v= [ 0, 0, 39.6 ] )
                {
                  cylinder( r= 2.6, $fn= 32, h= 3.5 );
                }
                cylinder( r= 1.6, $fn= 32, h= 43.1 );
              }
            }
          }
        }
      }
    }
  }
}
