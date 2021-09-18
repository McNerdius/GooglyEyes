union() // SharpSCAD generated scene: buttonsandwich
{
  { // module: buttonsandwich
    difference()
    {
      translate( v= [ 0, -3.5, 6 ] )
      {
        { // module: roundedcube
          translate( v= [ -23.5, -3.5, -6 ] )
          {
            translate( v= [ 0, 0, 0 ] )
            {
              hull()
              {
                translate( v= [ 1, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 6, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 1, 11 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 6, 11 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 46, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 46, 6, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 46, 1, 11 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 46, 6, 11 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                union()
                {
                  translate( v= [ 0, 6, 0 ] )
                  {
                    cube( size= [ 47, 1, 12 ] );
                  }
                }
              }
            }
          }
        }
      }
      union()
      {
        translate( v= [ 0, 0.1, 6 ] )
        {
          { // module: button
            union()
            {
              translate( v= [ 0, -1.9, 0 ] )
              {
                cube( size= [ 32, 4, 7 ], center= true );
              }
              rotate( a= [ 90, 0, 0 ] )
              {
                cylinder( r= 7.4, $fn= 24, h= 4.5 );
              }
              rotate( a= [ -90, 0, 0 ] )
              {
                cylinder( r= 4.3, $fn= 24, h= 4 );
              }
            }
          }
        }
        translate( v= [ 12, -3.5, 8.5 ] )
        {
          rotate( a= [ 90, 0, 0 ] )
          {
            cylinder( r= 2.4, center= true, $fn= 24, h= 9 );
          }
        }
        translate( v= [ -12, -3.5, 8.5 ] )
        {
          rotate( a= [ 90, 0, 0 ] )
          {
            cylinder( r= 2.4, center= true, $fn= 24, h= 9 );
          }
        }
      }
      translate( v= [ 0, -23.75, 0 ] )
      {
        union()
        {
          translate( v= [ 19.5, 19.5, -0.1 ] )
          {
            scale( v= [ 1.05, 1.05, 1 ] )
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
              scale( v= [ 1.05, 1.05, 1 ] )
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
      }
    }
  }
}
