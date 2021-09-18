union() // SharpSCAD generated scene: front
{
  { // module: front
    difference()
    {
      translate( v= [ 0, 2.1, 0 ] )
      {
        { // module: roundedcube
          translate( v= [ -38, -6, -24 ] )
          {
            translate( v= [ 0, 0, 0 ] )
            {
              hull()
              {
                translate( v= [ 1, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 11, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 1, 47 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 11, 47 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 75, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 75, 11, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 75, 1, 47 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 75, 11, 47 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                union()
                {
                  translate( v= [ 0, 11, 0 ] )
                  {
                    cube( size= [ 76, 1, 48 ] );
                  }
                }
              }
            }
          }
        }
      }
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
      translate( v= [ 0, -1.5, 0 ] )
      {
        union()
        {
          translate( v= [ 33, -3.5, 18.75 ] )
          {
            rotate( a= [ 90, 0, 0 ] )
            {
              translate( v= [ 0, 0, -40 ] )
              {
                union()
                {
                  translate( v= [ 0, 0, 36.3 ] )
                  {
                    cylinder( r= 2.7, $fn= 32, h= 4 );
                  }
                  cylinder( r= 1.7, $fn= 32, h= 40.1 );
                }
              }
            }
          }
          mirror( v= [ 1, 0, 0 ] )
          {
            translate( v= [ 33, -3.5, 18.75 ] )
            {
              rotate( a= [ 90, 0, 0 ] )
              {
                translate( v= [ 0, 0, -40 ] )
                {
                  union()
                  {
                    translate( v= [ 0, 0, 36.3 ] )
                    {
                      cylinder( r= 2.7, $fn= 32, h= 4 );
                    }
                    cylinder( r= 1.7, $fn= 32, h= 40.1 );
                  }
                }
              }
            }
          }
          mirror( v= [ 0, 0, 1 ] )
          {
            translate( v= [ 33, -3.5, 18.75 ] )
            {
              rotate( a= [ 90, 0, 0 ] )
              {
                translate( v= [ 0, 0, -40 ] )
                {
                  union()
                  {
                    translate( v= [ 0, 0, 36.3 ] )
                    {
                      cylinder( r= 2.7, $fn= 32, h= 4 );
                    }
                    cylinder( r= 1.7, $fn= 32, h= 40.1 );
                  }
                }
              }
            }
          }
          mirror( v= [ 0, 0, 1 ] )
          {
            mirror( v= [ 1, 0, 0 ] )
            {
              translate( v= [ 33, -3.5, 18.75 ] )
              {
                rotate( a= [ 90, 0, 0 ] )
                {
                  translate( v= [ 0, 0, -40 ] )
                  {
                    union()
                    {
                      translate( v= [ 0, 0, 36.3 ] )
                      {
                        cylinder( r= 2.7, $fn= 32, h= 4 );
                      }
                      cylinder( r= 1.7, $fn= 32, h= 40.1 );
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}
