union() // SharpSCAD generated scene: buttonsandwich
{
  { // module: buttonsandwich
    color( c= "white" )
    {
      translate( v= [ 0, 13.6, 26.5 ] )
      {
        difference()
        {
          translate( v= [ 0, 0, 5 ] )
          {
            cube( size= [ 30, 12, 10 ], center= true );
          }
          translate( v= [ 0, 0, 11.1 ] )
          {
            { // module: button
              color( c= "yellow" )
              {
                union()
                {
                  translate( v= [ 0, 0, -1.5 ] )
                  {
                    cube( size= [ 31, 6, 3 ], center= true );
                  }
                  rotate( a= [ 180, 0, 0 ] )
                  {
                    cylinder( r= 7.5, $fn= 64, h= 5 );
                  }
                  cylinder( r= 4.5, $fn= 64, h= 5 );
                }
              }
            }
          }
          mirror( v= [ 0, 1, 0 ] )
          {
            translate( v= [ 9, 1.1, 6 ] )
            {
              cube( size= 8 );
            }
          }
          mirror( v= [ 0, 1, 0 ] )
          {
            translate( v= [ -17, 1.1, 6 ] )
            {
              cube( size= 8 );
            }
          }
          translate( v= [ -30, 0, 3 ] )
          {
            rotate( a= [ 0, 90, 0 ] )
            {
              union()
              {
                translate( v= [ 0, 0, 56.3 ] )
                {
                  cylinder( r= 3.2, $fn= 32, h= 4 );
                }
                cylinder( r= 2, $fn= 32, h= 60.1 );
              }
            }
          }
        }
      }
    }
  }
}
