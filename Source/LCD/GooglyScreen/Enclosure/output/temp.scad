union() // SharpSCAD generated scene: temp
{
  { // module: front
    difference()
    {
      union()
      {
        difference()
        {
          translate( v= [ 0, 8.6, 0 ] )
          {
            { // module: roundedcube
              translate( v= [ -38, -13.5, -23.5 ] )
              {
                translate( v= [ 0, 0, 0 ] )
                {
                  hull()
                  {
                    translate( v= [ 1.25, 1.25, 1.25 ] )
                    {
                      sphere( r= 1.25, $fn= 32 );
                    }
                    translate( v= [ 1.25, 25.75, 1.25 ] )
                    {
                      sphere( r= 1.25, $fn= 32 );
                    }
                    translate( v= [ 1.25, 1.25, 45.75 ] )
                    {
                      sphere( r= 1.25, $fn= 32 );
                    }
                    translate( v= [ 1.25, 25.75, 45.75 ] )
                    {
                      sphere( r= 1.25, $fn= 32 );
                    }
                    translate( v= [ 74.75, 1.25, 1.25 ] )
                    {
                      sphere( r= 1.25, $fn= 32 );
                    }
                    translate( v= [ 74.75, 25.75, 1.25 ] )
                    {
                      sphere( r= 1.25, $fn= 32 );
                    }
                    translate( v= [ 74.75, 1.25, 45.75 ] )
                    {
                      sphere( r= 1.25, $fn= 32 );
                    }
                    translate( v= [ 74.75, 25.75, 45.75 ] )
                    {
                      sphere( r= 1.25, $fn= 32 );
                    }
                    union()
                    {
                      translate( v= [ 0, 25.75, 0 ] )
                      {
                        cube( size= [ 76, 1.25, 47 ] );
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
              color( c= "gray" )
              {
                translate( v= [ 0, -2.4, 0 ] )
                {
                  cube( size= [ 62, 5.1, 45 ], center= true );
                }
              }
              color( c= "green" )
              {
                translate( v= [ 0, 0.75, 0 ] )
                {
                  cube( size= [ 72, 1.5, 45 ], center= true );
                }
              }
              color( c= "white" )
              {
                translate( v= [ 0, 13.4, 0 ] )
                {
                  cube( size= [ 72, 24, 45 ], center= true );
                }
              }
            }
          }
          translate( v= [ 38.1, 22.2, 0 ] )
          {
            scale( v= [ 1.001, 1, 1 ] )
            {
              translate( v= [ -3.875, -4.125, 0 ] )
              {
                cube( size= [ 7.75, 8.25, 18.5 ], center= true );
              }
            }
          }
        }
        translate( v= [ 38, 22.1, 0 ] )
        {
          difference()
          {
            translate( v= [ -3.875, -4.125, 0 ] )
            {
              cube( size= [ 7.75, 8.25, 18.5 ], center= true );
            }
            { // module: button
              translate( v= [ -3.375, 0, 0 ] )
              {
                union()
                {
                  cube( size= [ 4.75, 12.5, 12.5 ], center= true );
                  translate( v= [ 4.275, 0, 0 ] )
                  {
                    cube( size= [ 4, 8, 8 ], center= true );
                  }
                  translate( v= [ -2.5, 0, 6.25 ] )
                  {
                    cube( size= [ 6, 12.5, 4 ], center= true );
                  }
                  translate( v= [ -2.5, 0, -6.25 ] )
                  {
                    cube( size= [ 6, 12.5, 4 ], center= true );
                  }
                }
              }
            }
          }
        }
        translate( v= [ 0, -2.8, 0 ] )
        {
          rotate( a= [ 90, 0, 0 ] )
          {
            linear_extrude( height= 2.1 )
            {
              difference()
              {
                square( center= true, size= [ 62.1, 45.1 ] );
                translate( v= [ -2, 0, 0 ] )
                {
                  { // module: roundedsquare
                    translate( v= [ 0, 0, 0 ] )
                    {
                      hull()
                      {
                        translate( v= [ 17, 12, 0 ] )
                        {
                          circle( r= 8, $fn= 32 );
                        }
                        translate( v= [ -17, 12, 0 ] )
                        {
                          circle( r= 8, $fn= 32 );
                        }
                        translate( v= [ 17, -12, 0 ] )
                        {
                          circle( r= 8, $fn= 32 );
                        }
                        translate( v= [ -17, -12, 0 ] )
                        {
                          circle( r= 8, $fn= 32 );
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
      translate( v= [ 0, -2.5, 0 ] )
      {
        union()
        {
          translate( v= [ 33, -2.5, 18.5 ] )
          {
            rotate( a= [ 90, 0, 0 ] )
            {
              translate( v= [ 0, 0, -10 ] )
              {
                union()
                {
                  translate( v= [ 0, 0, 6.5 ] )
                  {
                    cylinder( r= 2.2, $fn= 32, h= 3.6 );
                  }
                  cylinder( r= 1.2, $fn= 32, h= 6.6 );
                }
              }
            }
          }
          mirror( v= [ 1, 0, 0 ] )
          {
            translate( v= [ 33, -2.5, 18.5 ] )
            {
              rotate( a= [ 90, 0, 0 ] )
              {
                translate( v= [ 0, 0, -10 ] )
                {
                  union()
                  {
                    translate( v= [ 0, 0, 6.5 ] )
                    {
                      cylinder( r= 2.2, $fn= 32, h= 3.6 );
                    }
                    cylinder( r= 1.2, $fn= 32, h= 6.6 );
                  }
                }
              }
            }
          }
          mirror( v= [ 0, 0, 1 ] )
          {
            translate( v= [ 33, -2.5, 18.5 ] )
            {
              rotate( a= [ 90, 0, 0 ] )
              {
                translate( v= [ 0, 0, -10 ] )
                {
                  union()
                  {
                    translate( v= [ 0, 0, 6.5 ] )
                    {
                      cylinder( r= 2.2, $fn= 32, h= 3.6 );
                    }
                    cylinder( r= 1.2, $fn= 32, h= 6.6 );
                  }
                }
              }
            }
          }
          mirror( v= [ 0, 0, 1 ] )
          {
            mirror( v= [ 1, 0, 0 ] )
            {
              translate( v= [ 33, -2.5, 18.5 ] )
              {
                rotate( a= [ 90, 0, 0 ] )
                {
                  translate( v= [ 0, 0, -10 ] )
                  {
                    union()
                    {
                      translate( v= [ 0, 0, 6.5 ] )
                      {
                        cylinder( r= 2.2, $fn= 32, h= 3.6 );
                      }
                      cylinder( r= 1.2, $fn= 32, h= 6.6 );
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
