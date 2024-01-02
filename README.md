# **Calculation Of Pi Frames 👋🏻.**

Repo create the 📆 08/10/2023 at ⌚️ 9:34pm in 🗺 Rodez, France.<br />By maxence-depire 👨‍💻.

# Goal
Reproduce the Pi frames method of Archimedes, in Python, and in Julia 💻.

# The method
For make this calculation we need a circle of diameter `d`, and two polygons with `n` sides, like this :

<p align="center">
    <img src="images/method.png" width="300">
</p>

Here's the explanation:
- The red circle area is equal to `Pi * (r²)`, so if we take a radius of 1, the result is equal to `pi`.
- Area of the blue polygon (the biggest), is greater than the circle.
- And of course, the area of the red polygon (the smallest) is lower than the circle.

So with this informations, we can create two frames of the number `pi`.

## How to found the area of a polygon ?
The best method in this case is to split the polygon in `n` isosceles triangle.

<p align="center">
    <img src="images/method-2.png" width="300">
</p>

We know the formula for calculate the area of this type of triangle. But with don't whow all triangle value. So now, choose one of all isosceles triangle, and we gonna split it in two.

<p align="center">
    <img src="images/method-3.png" width="300">
</p>

And now, we have a rectangular triangle.
- In the case of the little polygon, the hypotenuse of the rectangular triangle is equal to the diameter.
- In the case of the big polygon, this is the segment between the center of the circle, and the polygon, who is equal to the circle diameter.

And for found the other value of the triangle, in every case we use trigonometrie.

We also know the angle at the apex (circle center) of the triangle. The formula of the angle is : 
```
( 360 / n ) / 2.
```

# All Algorithm.

## Area of the little polygon.
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

## Area of the big polygon.
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

## Note on the algorithm
- First : I know, the diameter is fix. But it's math, and I have a serious problem in math reading. If I don't write the entire operation, I get lost.
- And in second : yes we can compress, there is one hundrer other way's to make this project, but mine is there


Thanks for reading !
