union() // SharpSCAD generated scene: bottom
{
  { // module: shell
    color( c= "gray" )
    {
      difference()
      {
        union()
        {
          translate( v= [ 0, 0, 20.25 ] )
          {
            difference()
            {
              { // module: roundedcube
                translate( v= [ -25, -25, -20.25 ] )
                {
                  translate( v= [ 0, 0, 0 ] )
                  {
                    hull()
                    {
                      translate( v= [ 2.5, 2.5, 2.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 2.5, 47.5, 2.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 2.5, 2.5, 38 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 2.5, 47.5, 38 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 47.5, 2.5, 2.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 47.5, 47.5, 2.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 47.5, 2.5, 38 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 47.5, 47.5, 38 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      union()
                      {
                      }
                    }
                  }
                }
              }
              translate( v= [ 0, 0, 1.35 ] )
              {
                cube( size= [ 47.5, 47.5, 38 ], center= true );
              }
              translate( v= [ 0, 0, 47.75 ] )
              {
                cube( size= 60, center= true );
              }
            }
          }
          difference()
          {
            translate( v= [ 0, 0, 3.9 ] )
            {
              cube( size= [ 47.5, 47.5, 3 ], center= true );
            }
            translate( v= [ 0, 0, 3.9 ] )
            {
              difference()
              {
                cube( size= [ 50, 30, 3.1 ], center= true );
                translate( v= [ 0, 22, 0 ] )
                {
                  cube( size= [ 20, 50, 3.1 ], center= true );
                }
              }
            }
          }
          translate( v= [ 0, 23.1, 29 ] )
          {
            cube( size= [ 32, 2.25, 4.5 ], center= true );
          }
        }
        translate( v= [ 19.5, 19.5, -0.1 ] )
        {
          rotate( a= [ 0, 0, 30 ] )
          {
            cylinder( r= 3.35, $fn= 6, h= 2.8 );
          }
        }
        mirror( v= [ 1, 0, 0 ] )
        {
          translate( v= [ 19.5, 19.5, -0.1 ] )
          {
            rotate( a= [ 0, 0, 30 ] )
            {
              cylinder( r= 3.35, $fn= 6, h= 2.8 );
            }
          }
        }
        mirror( v= [ 0, 1, 0 ] )
        {
          translate( v= [ 19.5, 19.5, -0.1 ] )
          {
            rotate( a= [ 0, 0, 30 ] )
            {
              cylinder( r= 3.35, $fn= 6, h= 2.8 );
            }
          }
        }
        mirror( v= [ 0, 1, 0 ] )
        {
          mirror( v= [ 1, 0, 0 ] )
          {
            translate( v= [ 19.5, 19.5, -0.1 ] )
            {
              rotate( a= [ 0, 0, 30 ] )
              {
                cylinder( r= 3.35, $fn= 6, h= 2.8 );
              }
            }
          }
        }
        translate( v= [ 19.5, 19.5, -0.1 ] )
        {
          scale( v= 1 )
          {
            union()
            {
              translate( v= [ 0, 0, 34.3 ] )
              {
                cylinder( r= 2.7, $fn= 32, h= 4 );
              }
              cylinder( r= 1.7, $fn= 32, h= 38.1 );
            }
          }
        }
        mirror( v= [ 1, 0, 0 ] )
        {
          translate( v= [ 19.5, 19.5, -0.1 ] )
          {
            scale( v= 1 )
            {
              union()
              {
                translate( v= [ 0, 0, 34.3 ] )
                {
                  cylinder( r= 2.7, $fn= 32, h= 4 );
                }
                cylinder( r= 1.7, $fn= 32, h= 38.1 );
              }
            }
          }
        }
        mirror( v= [ 0, 1, 0 ] )
        {
          translate( v= [ 19.5, 19.5, -0.1 ] )
          {
            scale( v= 1 )
            {
              union()
              {
                translate( v= [ 0, 0, 34.3 ] )
                {
                  cylinder( r= 2.7, $fn= 32, h= 4 );
                }
                cylinder( r= 1.7, $fn= 32, h= 38.1 );
              }
            }
          }
        }
        mirror( v= [ 0, 1, 0 ] )
        {
          mirror( v= [ 1, 0, 0 ] )
          {
            translate( v= [ 19.5, 19.5, -0.1 ] )
            {
              scale( v= 1 )
              {
                union()
                {
                  translate( v= [ 0, 0, 34.3 ] )
                  {
                    cylinder( r= 2.7, $fn= 32, h= 4 );
                  }
                  cylinder( r= 1.7, $fn= 32, h= 38.1 );
                }
              }
            }
          }
        }
        translate( v= [ 0, 23.75, 29 ] )
        {
          rotate( a= [ 90, 0, 0 ] )
          {
            cylinder( r= 7.4, $fn= 24, h= 4.5 );
          }
        }
        translate( v= [ 0, 23.65, 29 ] )
        {
          rotate( a= [ -90, 0, 0 ] )
          {
            cylinder( r= 4.3, $fn= 24, h= 4 );
          }
        }
        translate( v= [ 25, -5, 9 ] )
        {
          { // module: roundedcube
            translate( v= [ -25, -5, -2.5 ] )
            {
              translate( v= [ 0, 0, 0 ] )
              {
                hull()
                {
                  translate( v= [ 2.5, 2.5, 2.5 ] )
                  {
                    sphere( r= 2.5, $fn= 32 );
                  }
                  translate( v= [ 2.5, 7.5, 2.5 ] )
                  {
                    sphere( r= 2.5, $fn= 32 );
                  }
                  translate( v= [ 2.5, 2.5, 2.5 ] )
                  {
                    sphere( r= 2.5, $fn= 32 );
                  }
                  translate( v= [ 2.5, 7.5, 2.5 ] )
                  {
                    sphere( r= 2.5, $fn= 32 );
                  }
                  translate( v= [ 47.5, 2.5, 2.5 ] )
                  {
                    sphere( r= 2.5, $fn= 32 );
                  }
                  translate( v= [ 47.5, 7.5, 2.5 ] )
                  {
                    sphere( r= 2.5, $fn= 32 );
                  }
                  translate( v= [ 47.5, 2.5, 2.5 ] )
                  {
                    sphere( r= 2.5, $fn= 32 );
                  }
                  translate( v= [ 47.5, 7.5, 2.5 ] )
                  {
                    sphere( r= 2.5, $fn= 32 );
                  }
                  union()
                  {
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
