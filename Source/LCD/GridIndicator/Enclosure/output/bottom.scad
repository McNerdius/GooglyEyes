union() // SharpSCAD generated scene: bottom
{
  { // module: bottom
    color( c= "white" )
    {
      difference()
      {
        union()
        {
          translate( v= [ 0, 0, 19.5 ] )
          {
            difference()
            {
              { // module: roundedcube
                translate( v= [ -21.5, -22.5, -19.5 ] )
                {
                  translate( v= [ 0, 0, 0 ] )
                  {
                    hull()
                    {
                      translate( v= [ 2.5, 2.5, 2.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 2.5, 42.5, 2.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 2.5, 2.5, 36.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 2.5, 42.5, 36.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 40.5, 2.5, 2.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 40.5, 42.5, 2.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 40.5, 2.5, 36.5 ] )
                      {
                        sphere( r= 2.5, $fn= 32 );
                      }
                      translate( v= [ 40.5, 42.5, 36.5 ] )
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
              translate( v= [ 0, 0, 1.6 ] )
              {
                cube( size= [ 40, 42, 36.5 ], center= true );
              }
              translate( v= [ 0, 0, 47 ] )
              {
                cube( size= 60, center= true );
              }
            }
          }
          translate( v= [ 0, -7, 4.9 ] )
          {
            difference()
            {
              cube( size= [ 40, 28, 4 ], center= true );
              cube( size= [ 40.1, 16, 4.1 ], center= true );
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
        translate( v= [ 21, -1.5, 11.5 ] )
        {
          { // module: roundedcube
            translate( v= [ -20, -6, -4 ] )
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
                  translate( v= [ 1, 1, 7 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 1, 11, 7 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 39, 1, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 39, 11, 1 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 39, 1, 7 ] )
                  {
                    sphere( r= 1, $fn= 32 );
                  }
                  translate( v= [ 39, 11, 7 ] )
                  {
                    sphere( r= 1, $fn= 32 );
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
