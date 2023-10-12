# Calculation Of Pi Frames 👋🏻.

Repo create the 📆 08/10/2023 at ⌚️ 9:34pm in 🗺 Rodez, France.<br />By maxence-depire 👨‍💻.

# Goal
Reproduce the Pi frames method of Archimedes, in python, and in Julia 💻.

# The method
For make this compute we need a circle of diameter `d`, and two polygon with `n` sides, like this :

<p align="center">
    <img src="method.png" width="400">
</p>

Here we have a polygon, in a circle, and a circle in a polygon. We know that the circle area is equal to `pi * diameter`. If we take a diameter of `1`, the diameter is now equal to `pi`. So the diameter need be fix to `1`.
<br />
<br />
Now we want to find two frames, so we need to create two polygons and we know the area of the circle is equal to `pi` then, the area of the polygons is lower to `pi`, in the case of the little polygon, and superior to `pi`, in the case of the big polygon.
<br />
<br />
We just need to find the area size of the two polygons.


## Algorithm for the little one.
I think the best method is to split the polygon in `n` triangle. So we obtains `n` equilateral triangle. Then we take one triangle and we split this one, we obtains a rectangular triangle.


```
Function LittleOne(n, d) // n is the polygon side number, and d the circle diameter.
Start
    bigTriangleCorner <-- 360 / n
    littleTriangleCorner <-- bigTriangleCorner / 2

    adjacentSide <-- COSINUS(littleTriangleCorner) * d
    oppositeSide <-- SINUS(littleTriangleCorner) / d
    areaSize <-- ( adjacentSide * oppositeSide ) / 2

    totalArea <-- ( areaSize * 2 ) * n

    RETURN totalArea
End
```


## Algorithm for the big one.
I want to use the same method as the little one, but the measure will not be the same. The adjacent side going to be equal to the circle diameter.


```
Function BigOne(n, d) // n is the polygon side number, and d the circle diameter.
Start
    bigTriangleCorner <-- 360 / n
    littleTriangleCorner <-- bigTriangleCorner / 2

    adjacentSide <-- d
    oppositeSide <-- TANGENT(littleTriangleCorner) / d
    areaSize <-- ( adjacentSide * oppositeSide ) / 2

    totalArea <-- ( areaSize * 2 ) * n

    RETURN totalArea
End
```