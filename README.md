# ActionScript 3 hitTestObject() Inaccuracy with Transformed Objects

This repository demonstrates a common issue with the `hitTestObject()` method in ActionScript 3.  When objects are significantly rotated or scaled, the collision detection may become unreliable, resulting in unexpected results. The issue is particularly noticeable when objects are non-rectangular and have complex shapes.

## Bug Description
The `checkCollision` function uses `hitTestObject` for collision detection. It fails in certain scenarios with rotated or scaled objects, producing false positives or negatives.

## Solution
The solution uses the more accurate `hitTestPoint()` method with bounding box calculations for more reliable collision detection.