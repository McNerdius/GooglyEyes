union() // SharpSCAD generated scene: assembled
{
  translate( v= [ -40, 0, 0 ] )
  {
    rotate( a= [ 0, 0, -45 ] )
    {
      union()
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
        translate( v= [ 0, 14, 3 ] )
        {
          { // module: battery
            color( c= "royalblue" )
            {
              translate( v= [ 0, 0, 10.5 ] )
              {
                { // module: roundedcube
                  translate( v= [ -18, -7, -10.5 ] )
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
                        translate( v= [ 2, 2, 19 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 2, 12, 19 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 2, 2 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 12, 2 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 2, 19 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 12, 19 ] )
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
              }
            }
          }
        }
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
        translate( v= [ 0, 13.5, 36.5 ] )
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
        translate( v= [ 0, 0, 25 ] )
        {
          { // module: lid
            color( c= "white" )
            {
              difference()
              {
                translate( v= [ 0, 0, 36.5 ] )
                {
                  union()
                  {
                    translate( v= [ 0, 0, 1 ] )
                    {
                      { // module: roundedcube
                        translate( v= [ -21.4, -22.4, -1 ] )
                        {
                          translate( v= [ 0, 0, 0 ] )
                          {
                            hull()
                            {
                              translate( v= [ 1, 1, 1 ] )
                              {
                                sphere( r= 1, $fn= 32 );
                              }
                              translate( v= [ 1, 43.8, 1 ] )
                              {
                                sphere( r= 1, $fn= 32 );
                              }
                              translate( v= [ 1, 1, 1 ] )
                              {
                                sphere( r= 1, $fn= 32 );
                              }
                              translate( v= [ 1, 43.8, 1 ] )
                              {
                                sphere( r= 1, $fn= 32 );
                              }
                              translate( v= [ 41.8, 1, 1 ] )
                              {
                                sphere( r= 1, $fn= 32 );
                              }
                              translate( v= [ 41.8, 43.8, 1 ] )
                              {
                                sphere( r= 1, $fn= 32 );
                              }
                              translate( v= [ 41.8, 1, 1 ] )
                              {
                                sphere( r= 1, $fn= 32 );
                              }
                              translate( v= [ 41.8, 43.8, 1 ] )
                              {
                                sphere( r= 1, $fn= 32 );
                              }
                              union()
                              {
                                cube( size= [ 42.8, 44.8, 1 ] );
                              }
                            }
                          }
                        }
                      }
                    }
                    translate( v= [ 17.5, 13.6, -6 ] )
                    {
                      cube( size= [ 4.25, 12.25, 12 ], center= true );
                    }
                    translate( v= [ -17.5, 13.6, -6 ] )
                    {
                      cube( size= [ 4.25, 12.25, 12 ], center= true );
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
                translate( v= [ 0, 13.6, 36.4 ] )
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
                translate( v= [ 0, -8.05, 32.5 ] )
                {
                  { // module: led_matrix_shield
                    union()
                    {
                      { // module: d1_footprint
                        translate( v= [ 0, 0, 1.8 ] )
                        {
                          union()
                          {
                            color( c= "darkcyan" )
                            {
                              cube( size= [ 36, 28, 3.6 ], center= true );
                            }
                          }
                        }
                      }
                      color( c= "white" )
                      {
                        translate( v= [ 0, 0.5, 5 ] )
                        {
                          cube( size= [ 20.5, 20.5, 6 ], center= true );
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
  }
  translate( v= [ 0, 90, 0 ] )
  {
    rotate( a= [ 0, 0, -80 ] )
    {
      union()
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
        translate( v= [ 0, 14, 3 ] )
        {
          { // module: battery
            color( c= "royalblue" )
            {
              translate( v= [ 0, 0, 10.5 ] )
              {
                { // module: roundedcube
                  translate( v= [ -18, -7, -10.5 ] )
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
                        translate( v= [ 2, 2, 19 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 2, 12, 19 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 2, 2 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 12, 2 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 2, 19 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 12, 19 ] )
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
              }
            }
          }
        }
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
        translate( v= [ 0, 13.5, 36.5 ] )
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
        { // module: lid
          color( c= "white" )
          {
            difference()
            {
              translate( v= [ 0, 0, 36.5 ] )
              {
                union()
                {
                  translate( v= [ 0, 0, 1 ] )
                  {
                    { // module: roundedcube
                      translate( v= [ -21.4, -22.4, -1 ] )
                      {
                        translate( v= [ 0, 0, 0 ] )
                        {
                          hull()
                          {
                            translate( v= [ 1, 1, 1 ] )
                            {
                              sphere( r= 1, $fn= 32 );
                            }
                            translate( v= [ 1, 43.8, 1 ] )
                            {
                              sphere( r= 1, $fn= 32 );
                            }
                            translate( v= [ 1, 1, 1 ] )
                            {
                              sphere( r= 1, $fn= 32 );
                            }
                            translate( v= [ 1, 43.8, 1 ] )
                            {
                              sphere( r= 1, $fn= 32 );
                            }
                            translate( v= [ 41.8, 1, 1 ] )
                            {
                              sphere( r= 1, $fn= 32 );
                            }
                            translate( v= [ 41.8, 43.8, 1 ] )
                            {
                              sphere( r= 1, $fn= 32 );
                            }
                            translate( v= [ 41.8, 1, 1 ] )
                            {
                              sphere( r= 1, $fn= 32 );
                            }
                            translate( v= [ 41.8, 43.8, 1 ] )
                            {
                              sphere( r= 1, $fn= 32 );
                            }
                            union()
                            {
                              cube( size= [ 42.8, 44.8, 1 ] );
                            }
                          }
                        }
                      }
                    }
                  }
                  translate( v= [ 17.5, 13.6, -6 ] )
                  {
                    cube( size= [ 4.25, 12.25, 12 ], center= true );
                  }
                  translate( v= [ -17.5, 13.6, -6 ] )
                  {
                    cube( size= [ 4.25, 12.25, 12 ], center= true );
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
              translate( v= [ 0, 13.6, 36.4 ] )
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
              translate( v= [ 0, -8.05, 32.5 ] )
              {
                { // module: led_matrix_shield
                  union()
                  {
                    { // module: d1_footprint
                      translate( v= [ 0, 0, 1.8 ] )
                      {
                        union()
                        {
                          color( c= "darkcyan" )
                          {
                            cube( size= [ 36, 28, 3.6 ], center= true );
                          }
                        }
                      }
                    }
                    color( c= "white" )
                    {
                      translate( v= [ 0, 0.5, 5 ] )
                      {
                        cube( size= [ 20.5, 20.5, 6 ], center= true );
                      }
                    }
                  }
                }
              }
            }
          }
        }
        translate( v= [ 0, -7, 7 ] )
        {
          union()
          {
            { // module: d1_footprint
              translate( v= [ 0, 0, 1.8 ] )
              {
                union()
                {
                  color( c= "darkcyan" )
                  {
                    cube( size= [ 36, 28, 3.6 ], center= true );
                  }
                  translate( v= [ 0, 0, 6.45 ] )
                  {
                    union()
                    {
                      translate( v= [ 0, -10, 0 ] )
                      {
                        color( c= "black" )
                        {
                          cube( size= [ 21, 2.5, 9.5 ], center= true );
                        }
                      }
                      translate( v= [ 0, 10, 0 ] )
                      {
                        color( c= "black" )
                        {
                          cube( size= [ 21, 2.5, 9.5 ], center= true );
                        }
                      }
                    }
                  }
                }
              }
            }
            translate( v= [ 0, 0, 13.1 ] )
            {
              { // module: d1_footprint
                translate( v= [ 0, 0, 1.8 ] )
                {
                  union()
                  {
                    color( c= "darkcyan" )
                    {
                      cube( size= [ 36, 28, 3.6 ], center= true );
                    }
                    translate( v= [ 0, 0, 6.45 ] )
                    {
                      union()
                      {
                        translate( v= [ 0, -10, 0 ] )
                        {
                          color( c= "black" )
                          {
                            cube( size= [ 21, 2.5, 9.5 ], center= true );
                          }
                        }
                        translate( v= [ 0, 10, 0 ] )
                        {
                          color( c= "black" )
                          {
                            cube( size= [ 21, 2.5, 9.5 ], center= true );
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
            translate( v= [ 0, 0, 26.2 ] )
            {
              { // module: led_matrix_shield
                union()
                {
                  { // module: d1_footprint
                    translate( v= [ 0, 0, 1.8 ] )
                    {
                      union()
                      {
                        color( c= "darkcyan" )
                        {
                          cube( size= [ 36, 28, 3.6 ], center= true );
                        }
                      }
                    }
                  }
                  color( c= "white" )
                  {
                    translate( v= [ 0, 0.5, 5 ] )
                    {
                      cube( size= [ 20.5, 20.5, 6 ], center= true );
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
  translate( v= [ 40, 0, 0 ] )
  {
    rotate( a= [ 0, 0, -45 ] )
    {
      union()
      {
        translate( v= [ 0, 14, 3 ] )
        {
          { // module: battery
            color( c= "royalblue" )
            {
              translate( v= [ 0, 0, 10.5 ] )
              {
                { // module: roundedcube
                  translate( v= [ -18, -7, -10.5 ] )
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
                        translate( v= [ 2, 2, 19 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 2, 12, 19 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 2, 2 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 12, 2 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 2, 19 ] )
                        {
                          sphere( r= 2, $fn= 32 );
                        }
                        translate( v= [ 34, 12, 19 ] )
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
              }
            }
          }
        }
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
        translate( v= [ 0, 13.5, 36.5 ] )
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
        translate( v= [ 0, -7, 7 ] )
        {
          union()
          {
            { // module: d1_footprint
              translate( v= [ 0, 0, 1.8 ] )
              {
                union()
                {
                  color( c= "darkcyan" )
                  {
                    cube( size= [ 36, 28, 3.6 ], center= true );
                  }
                  translate( v= [ 0, 0, 6.45 ] )
                  {
                    union()
                    {
                      translate( v= [ 0, -10, 0 ] )
                      {
                        color( c= "black" )
                        {
                          cube( size= [ 21, 2.5, 9.5 ], center= true );
                        }
                      }
                      translate( v= [ 0, 10, 0 ] )
                      {
                        color( c= "black" )
                        {
                          cube( size= [ 21, 2.5, 9.5 ], center= true );
                        }
                      }
                    }
                  }
                }
              }
            }
            translate( v= [ 0, 0, 13.1 ] )
            {
              { // module: d1_footprint
                translate( v= [ 0, 0, 1.8 ] )
                {
                  union()
                  {
                    color( c= "darkcyan" )
                    {
                      cube( size= [ 36, 28, 3.6 ], center= true );
                    }
                    translate( v= [ 0, 0, 6.45 ] )
                    {
                      union()
                      {
                        translate( v= [ 0, -10, 0 ] )
                        {
                          color( c= "black" )
                          {
                            cube( size= [ 21, 2.5, 9.5 ], center= true );
                          }
                        }
                        translate( v= [ 0, 10, 0 ] )
                        {
                          color( c= "black" )
                          {
                            cube( size= [ 21, 2.5, 9.5 ], center= true );
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
            translate( v= [ 0, 0, 26.2 ] )
            {
              { // module: led_matrix_shield
                union()
                {
                  { // module: d1_footprint
                    translate( v= [ 0, 0, 1.8 ] )
                    {
                      union()
                      {
                        color( c= "darkcyan" )
                        {
                          cube( size= [ 36, 28, 3.6 ], center= true );
                        }
                      }
                    }
                  }
                  color( c= "white" )
                  {
                    translate( v= [ 0, 0.5, 5 ] )
                    {
                      cube( size= [ 20.5, 20.5, 6 ], center= true );
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
