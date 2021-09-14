union() // SharpSCAD generated scene: rear
{
  { // module: rear
    translate( v= [ 0, 0, 10 ] )
    {
      difference()
      {
        translate( v= [ 0, 12, 0 ] )
        {
          { // module: roundedcube
            translate( v= [ -38, -4, -24 ] )
            {
              translate( v= [ 0, 0, 0 ] )
              {
                hull()
                {
                  translate( v= [ 1, 1, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 1, 7, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 1, 1, 47 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 1, 7, 47 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 75, 1, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 75, 7, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 75, 1, 47 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 75, 7, 47 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  union()
                  {
                    cube( size= [ 76, 1, 48 ] );
                  }
                }
              }
            }
          }
        }
        difference()
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
          translate( v= [ 38, 1.5, 24 ] )
          {
            rotate( a= [ -90, 0, 0 ] )
            {
              cylinder( r= 15, $fn= 4, h= 20 );
            }
          }
          mirror( v= [ 1, 0, 0 ] )
          {
            translate( v= [ 38, 1.5, 24 ] )
            {
              rotate( a= [ -90, 0, 0 ] )
              {
                cylinder( r= 15, $fn= 4, h= 20 );
              }
            }
          }
          mirror( v= [ 0, 0, 1 ] )
          {
            translate( v= [ 38, 1.5, 24 ] )
            {
              rotate( a= [ -90, 0, 0 ] )
              {
                cylinder( r= 15, $fn= 4, h= 20 );
              }
            }
          }
          mirror( v= [ 0, 0, 1 ] )
          {
            mirror( v= [ 1, 0, 0 ] )
            {
              translate( v= [ 38, 1.5, 24 ] )
              {
                rotate( a= [ -90, 0, 0 ] )
                {
                  cylinder( r= 15, $fn= 4, h= 20 );
                }
              }
            }
          }
        }
        translate( v= [ 0, -1, 0 ] )
        {
          union()
          {
            translate( v= [ 33, 0, 18.75 ] )
            {
              { // module: screw
                translate( v= [ 0, -3.5, 0 ] )
                {
                  rotate( a= [ -90, 0, 0 ] )
                  {
                    union()
                    {
                      cylinder( r= 2.6, $fn= 32, h= 3.5 );
                      cylinder( r= 1.6, $fn= 32, h= 40 );
                    }
                  }
                }
              }
            }
            mirror( v= [ 1, 0, 0 ] )
            {
              translate( v= [ 33, 0, 18.75 ] )
              {
                { // module: screw
                  translate( v= [ 0, -3.5, 0 ] )
                  {
                    rotate( a= [ -90, 0, 0 ] )
                    {
                      union()
                      {
                        cylinder( r= 2.6, $fn= 32, h= 3.5 );
                        cylinder( r= 1.6, $fn= 32, h= 40 );
                      }
                    }
                  }
                }
              }
            }
            mirror( v= [ 0, 0, 1 ] )
            {
              translate( v= [ 33, 0, 18.75 ] )
              {
                { // module: screw
                  translate( v= [ 0, -3.5, 0 ] )
                  {
                    rotate( a= [ -90, 0, 0 ] )
                    {
                      union()
                      {
                        cylinder( r= 2.6, $fn= 32, h= 3.5 );
                        cylinder( r= 1.6, $fn= 32, h= 40 );
                      }
                    }
                  }
                }
              }
            }
            mirror( v= [ 0, 0, 1 ] )
            {
              mirror( v= [ 1, 0, 0 ] )
              {
                translate( v= [ 33, 0, 18.75 ] )
                {
                  { // module: screw
                    translate( v= [ 0, -3.5, 0 ] )
                    {
                      rotate( a= [ -90, 0, 0 ] )
                      {
                        union()
                        {
                          cylinder( r= 2.6, $fn= 32, h= 3.5 );
                          cylinder( r= 1.6, $fn= 32, h= 40 );
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        translate( v= [ 33, 14.1, 18.75 ] )
        {
          cylinder( r= 3.2, $fn= 6, h= 2.5 );
        }
        mirror( v= [ 1, 0, 0 ] )
        {
          translate( v= [ 33, 14.1, 18.75 ] )
          {
            cylinder( r= 3.2, $fn= 6, h= 2.5 );
          }
        }
        mirror( v= [ 0, 0, 1 ] )
        {
          translate( v= [ 33, 14.1, 18.75 ] )
          {
            cylinder( r= 3.2, $fn= 6, h= 2.5 );
          }
        }
        mirror( v= [ 0, 0, 1 ] )
        {
          mirror( v= [ 1, 0, 0 ] )
          {
            translate( v= [ 33, 14.1, 18.75 ] )
            {
              cylinder( r= 3.2, $fn= 6, h= 2.5 );
            }
          }
        }
        translate( v= [ -26, 10, -12 ] )
        {
          rotate( a= [ 90, 0, 0 ] )
          {
            { // module: hexgrid
              union()
              {
                translate( v= [ 0, 0, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 4.6471, 8.25, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 0, 16.5, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 4.6471, 24.75, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 9.2942, 0, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 13.9413, 8.25, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 9.2942, 16.5, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 13.9413, 24.75, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 18.5885, 0, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 23.2356, 8.25, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 18.5885, 16.5, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 23.2356, 24.75, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 27.8827, 0, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 32.5298, 8.25, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 27.8827, 16.5, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 32.5298, 24.75, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 37.1769, 0, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 41.824, 8.25, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 37.1769, 16.5, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 41.824, 24.75, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 46.4711, 0, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 51.1183, 8.25, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 46.4711, 16.5, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
                  }
                }
                translate( v= [ 51.1183, 24.75, 0 ] )
                {
                  rotate( a= [ 0, 0, 30 ] )
                  {
                    cylinder( r= 4.5, center= true, $fn= 6, h= 20 );
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
