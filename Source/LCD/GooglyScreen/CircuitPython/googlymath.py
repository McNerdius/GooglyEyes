from math import sqrt

def sum_squares( a, b ):
    return pow( a, 2 ) + pow( b, 2 )

def hypot(a,b):
    return sqrt(pow(a,2) + pow(b,2))

ELASTICITY = 0.7
DRAG = 0.9
G_SCALE = 20

def move(eye, aX, aY):
    
    (x, y) = eye.position
    
    vX_new = (eye.velocity[0] + aX) * DRAG
    vY_new = (eye.velocity[1] + aY) * DRAG

    v = sum_squares( vX_new, vY_new )
    if ( v > pow( eye.pupil_diameter, 2 ) ):
        v = eye.pupil_diameter / sqrt( v )
        (vX_new, vY_new) = (vX_new * v, vY_new * v)

    (x_new, y_new) = (x + vX_new, y + vY_new)

    origin_distance = sum_squares( x_new, y_new )

    if ( origin_distance >= eye.R2 ):
        dx = x_new - x
        dy = y_new - y

        x2 = pow( x, 2 )
        y2 = pow( y, 2 )
        a2 = pow( dx, 2 )
        b2 = pow( dy, 2 )
        a2b2 = a2 + b2
        n = a2 * eye.R2 + b2 * eye.R2 + 2 * dx * dy * x * y - a2 * y2 - b2 * x2


        if ( (n >= 0) and (a2b2 > 0) ):
            n = sqrt( n )
            n1 = (n - dx * x - dy * y) / a2b2
            n2 = -(n + dx * x + dy * y) / a2b2
        else:
            n1 = 0
            n2 = 0

        if ( n2 > n1 ):
            n1 = n2

        ix = x + dx * n1 # Single intersection point of
        iy = y + dy * n1   # movement vector and circle.

        mag1 = hypot( dx, dy )
        dx1 = ix - x
        dy1 = iy - y
        mag2 = hypot( dx1, dy1 )

        mag3 = (mag1 - mag2) * ELASTICITY

        aX = -ix / eye.inner_radius
        aY = -iy / eye.inner_radius

        if ( mag1 > 0 ):
            rx = -dx / mag1
            ry = -dy / mag1
        else:
            rx = ry = 0
        
        dot = rx * aX + ry * aY
        rpx = aX * dot # Point to reflect across
        rpy = aY * dot
        rx += (rpx - rx) * 2 # Reflect velocity vector across point
        ry += (rpy - ry) * 2 # (still normalized)

        (x_new, y_new) = (ix + rx * mag3, iy + ry * mag3)

        mag1 *= ELASTICITY
        eye.velocity = (rx * mag1, ry * mag1)

    eye.pupil_position = (x_new, y_new)    