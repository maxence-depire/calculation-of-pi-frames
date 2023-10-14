import math

# Data
radius = 1
sides = 6

def LittleOne(d, n):
    big_triangle_corner = 360 / n
    little_triangle_corner = math.radians(big_triangle_corner / 2)

    adjancent_side = math.cos(little_triangle_corner) * d
    opposite_side = math.sin(little_triangle_corner) * d
    
    area_size = ( adjancent_side * opposite_side ) / 2
    total_area = ( area_size * 2 ) * n

    return total_area


def BigOne(d, n):
    big_triangle_corner = 360 / n
    little_triangle_corner = math.radians(big_triangle_corner / 2)

    adjacent_side = d
    opposite_side = math.tan(little_triangle_corner) / d
    
    area_size = (adjacent_side * opposite_side) / 2
    total_area = ( area_size * 2 ) * n

    return total_area


print("Little polygon is ", LittleOne(radius, sides))
print("Big polygon is ", BigOne(radius, sides))