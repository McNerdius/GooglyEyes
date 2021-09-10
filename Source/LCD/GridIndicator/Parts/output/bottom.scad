union() // SharpSCAD generated scene: bottom
{
  { // module: shell
    color( c= "gray" )
    {
      difference()
      {
        union()
        {
          translate( v= [ 0, 0, 23.5 ] )
          {
            difference()
            {
              { // module: roundedcube
                translate( v= [ -25, -25, -23.5 ] )
                {
                  translate( v= [ 0, 0, 0 ] )
                  {
                    hull()
                    {
                      translate( v= [ 2, 2, 2 ] )
                      {
                        sphere( r= 2, $fn= 32 );
                      }
                      translate( v= [ 2, 48, 2 ] )
                      {
                        sphere( r= 2, $fn= 32 );
                      }
                      translate( v= [ 2, 2, 45 ] )
                      {
                        sphere( r= 2, $fn= 32 );
                      }
                      translate( v= [ 2, 48, 45 ] )
                      {
                        sphere( r= 2, $fn= 32 );
                      }
                      translate( v= [ 48, 2, 2 ] )
                      {
                        sphere( r= 2, $fn= 32 );
                      }
                      translate( v= [ 48, 48, 2 ] )
                      {
                        sphere( r= 2, $fn= 32 );
                      }
                      translate( v= [ 48, 2, 45 ] )
                      {
                        sphere( r= 2, $fn= 32 );
                      }
                      translate( v= [ 48, 48, 45 ] )
                      {
                        sphere( r= 2, $fn= 32 );
                      }
                      union()
                      {
                      }
                    }
                  }
                }
              }
              translate( v= [ 0, 0, 4 ] )
              {
                cube( size= [ 48, 48, 43 ], center= true );
              }
              translate( v= [ 0, 0, 49.5 ] )
              {
                cube( size= 60, center= true );
              }
            }
          }
          translate( v= [ -7, 0, 5.5 ] )
          {
            difference()
            {
              translate( v= [ -1, 0, 0 ] )
              {
                cube( size= [ 33, 48, 3 ], center= true );
              }
              translate( v= [ 0, 0, 2 ] )
              {
                scale( v= [ 2.5, 1, 1 ] )
                {
                  rotate( a= [ 90, 0, 0 ] )
                  {
                    cylinder( r= 4, center= true, $fn= 6, h= 50 );
                  }
                }
              }
            }
          }
        }
        translate( v= [ 20.5, 20.5, -0.1 ] )
        {
          rotate( a= [ 0, 0, 30 ] )
          {
            cylinder( r= 3, $fn= 6, h= 2.2 );
          }
        }
        mirror( v= [ 1, 0, 0 ] )
        {
          translate( v= [ 20.5, 20.5, -0.1 ] )
          {
            rotate( a= [ 0, 0, 30 ] )
            {
              cylinder( r= 3, $fn= 6, h= 2.2 );
            }
          }
        }
        mirror( v= [ 0, 1, 0 ] )
        {
          translate( v= [ 20.5, 20.5, -0.1 ] )
          {
            rotate( a= [ 0, 0, 30 ] )
            {
              cylinder( r= 3, $fn= 6, h= 2.2 );
            }
          }
        }
        mirror( v= [ 0, 1, 0 ] )
        {
          mirror( v= [ 1, 0, 0 ] )
          {
            translate( v= [ 20.5, 20.5, -0.1 ] )
            {
              rotate( a= [ 0, 0, 30 ] )
              {
                cylinder( r= 3, $fn= 6, h= 2.2 );
              }
            }
          }
        }
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
        mirror( v= [ 1, 0, 0 ] )
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
        mirror( v= [ 0, 1, 0 ] )
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
        mirror( v= [ 0, 1, 0 ] )
        {
          mirror( v= [ 1, 0, 0 ] )
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
