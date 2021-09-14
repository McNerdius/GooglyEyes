union() // SharpSCAD generated scene: buttonsandwich
{
  { // module: buttonsandwich
    difference()
    {
      translate( v= [ -3.5, 0, 8 ] )
      {
        { // module: roundedcube
          translate( v= [ -3.5, -23.5, -8 ] )
          {
            translate( v= [ 0, 0, 0 ] )
            {
              hull()
              {
                translate( v= [ 1, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 46, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 1, 15 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 1, 46, 15 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 6, 1, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 6, 46, 1 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 6, 1, 15 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                translate( v= [ 6, 46, 15 ] )
                {
                  sphere( r= 1, $fn= 32 );
                }
                union()
                {
                  translate( v= [ 6, 0, 0 ] )
                  {
                    cube( size= [ 1, 47, 16 ] );
                  }
                }
              }
            }
          }
        }
      }
      union()
      {
        translate( v= [ 0.1, 0, 8 ] )
        {
          { // module: button
            union()
            {
              translate( v= [ -1.4, 0, 0 ] )
              {
                cube( size= [ 2.8, 32, 7 ], center= true );
              }
              rotate( a= [ 0, -90, 0 ] )
              {
                cylinder( r= 7.1, $fn= 24, h= 4.5 );
              }
              rotate( a= [ 0, 90, 0 ] )
              {
                cylinder( r= 4.1, $fn= 24, h= 4 );
              }
            }
          }
        }
        translate( v= [ -3.5, 11.5, 12.5 ] )
        {
          rotate( a= [ 0, 90, 0 ] )
          {
            cylinder( r= 2.4, center= true, $fn= 24, h= 9 );
          }
        }
        translate( v= [ -3.5, -11.5, 12.5 ] )
        {
          rotate( a= [ 0, 90, 0 ] )
          {
            cylinder( r= 2.4, center= true, $fn= 24, h= 9 );
          }
        }
      }
      translate( v= [ -24, 0, 0 ] )
      {
        union()
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
        }
      }
    }
  }
}
