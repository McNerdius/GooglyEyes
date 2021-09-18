import math
from vectorio import Circle
from displayio import Palette

palette_black = Palette(1)
palette_black[0] = 0x000000

class GooglyEye(object):
    def __init__(self,radius,pupil_radius,x,y):

        self.x = x
        self.y = y

        self.pupil = Circle(pixel_shader=palette_black, radius=pupil_radius, x=x, y=y)
        self.radius = radius
        self.diameter = radius * 2

        self.pupil_radius = pupil_radius
        self.pupil_diameter = pupil_radius * 2

        self.inner_radius = radius - pupil_radius

        self.R2 = pow(self.inner_radius, 2)
        
        self.pupil_position = (0,0)
        self.velocity = (0,0)

    @property
    def total_velocity(self):
        return hypot(self.velocity[0],self.velocity[1])

    @property 
    def position(self):
        return (self.pupil.x+self.x,self.pupil.y+self.x)

    @position.setter
    def position(self,pos):
        self.pupil.x = int(pos[0]) + self.x
        self.pupil.y = int(pos[1]) + self.y