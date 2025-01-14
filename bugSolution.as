function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  // Get bounding boxes
  var rect1:Rectangle = obj1.getBounds(obj1.parent);
  var rect2:Rectangle = obj2.getBounds(obj2.parent);

  // Check for intersection
  if (rect1.intersects(rect2)) {
    // Perform more precise pixel-by-pixel collision check if needed
    // ...
    return true; 
  } else {
    return false; 
  }
}

//Example usage for pixel perfect collision
function hitTestPointPrecise(obj1:DisplayObject, obj2:DisplayObject):Boolean{
  var bounds1:Rectangle = obj1.getBounds(obj1.parent);
  var bounds2:Rectangle = obj2.getBounds(obj2.parent);

  for (var i:int = bounds1.x; i < bounds1.x + bounds1.width; i++) {
    for (var j:int = bounds1.y; j < bounds1.y + bounds1.height; j++) {
      if (obj2.hitTestPoint(i, j, true)) {
        return true;
      }
    }
  }
  return false;
} 
