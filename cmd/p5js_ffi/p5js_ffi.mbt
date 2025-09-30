///|
#external
pub type P5Instance

#external
pub type Color

#external
pub type ClipOptions

///|
pub(open) trait P5JS {
  getP5Instance(Self) -> P5Instance
  // 其他的方法

  // touches
  getTouches(Self) -> FixedArray[Touch] = _
  setTouchEnded(Self, () -> Unit) -> Unit = _
  cancelTouchEnded(Self) -> Unit = _
  setTouchMoved(Self, () -> Unit) -> Unit = _
  cancelTouchMoved(Self) -> Unit = _
  setTouchStarted(Self, () -> Unit) -> Unit = _
  cancelTouchStarted(Self) -> Unit = _

  // key
  getKey(Self) -> String = _
  getKeyCode(Self) -> KeyCode = _
  keyIsDown(Self, KeyCode) -> Bool = _
  keyIsPressed(Self) -> Bool = _
  setKeyPressed(Self, () -> Bool) -> Unit = _
  cancelKeyPressed(Self) -> Unit = _
  setKeyReleased(Self, () -> Bool) -> Unit = _
  cancelKeyReleased(Self) -> Unit = _
  setKeyTyped(Self, () -> Bool) -> Unit = _
  cancelKeyTyped(Self) -> Unit = _

  // mouse
  getMouseX(Self) -> Int = _
  getMouseY(Self) -> Int = _
  getMovedX(Self) -> Int = _
  getMovedY(Self) -> Int = _
  getPmouseX(Self) -> Int = _
  getPmouseY(Self) -> Int = _
  getPwinMouseX(Self) -> Int = _
  getPwinMouseY(Self) -> Int = _
  getWinMouseX(Self) -> Int = _
  getWinMouseY(Self) -> Int = _
  mouseIsPressed(Self) -> Bool = _
  getMouseButtonString(Self) -> String = _
  getMouseButton(Self) -> MouseButton = _
  setDoubleClicked(Self, (Option[MouseEvent]) -> Bool) -> Unit = _
  cancelDoubleClicked(Self) -> Unit = _
  setMouseClicked(Self, (Option[MouseEvent]) -> Bool) -> Unit = _
  cancelMouseClicked(Self) -> Unit = _
  setMouseDragged(Self, (Option[MouseEvent]) -> Bool) -> Unit = _
  cancelMouseDragged(Self) -> Unit = _
  setMouseMoved(Self, (Option[MouseEvent]) -> Bool) -> Unit = _
  cancelMouseMoved(Self) -> Unit = _
  setMousePressed(Self, (Option[MouseEvent]) -> Bool) -> Unit = _
  cancelMousePressed(Self) -> Unit = _
  setMouseReleased(Self, (Option[MouseEvent]) -> Bool) -> Unit = _
  cancelMouseReleased(Self) -> Unit = _
  setMouseWheel(Self, (Option[MouseEvent]) -> Bool) -> Unit = _
  cancelMouseWheel(Self) -> Unit = _
  requestPointerLock(Self) -> Unit = _
  exitPointerLock(Self) -> Unit = _

}

///|
pub impl P5JS for P5Instance with getP5Instance(self) {
  self
}

///|
pub impl P5JS for P5Instance

// 这下面请实现默认方法，类的本地方法请分写在文件

// touches

///|
impl P5JS with getTouches(self) {
  self.getP5Instance().getTouches_()
}

///|
impl P5JS with setTouchEnded(self, callback) {
  self.getP5Instance().setTouchEnded_(callback)
}

///|
impl P5JS with cancelTouchEnded(self) {
  self.getP5Instance().cancelTouchEnded_()
}

///|
impl P5JS with setTouchMoved(self, callback) {
  self.getP5Instance().setTouchMoved_(callback)
}

///|
impl P5JS with cancelTouchMoved(self) {
  self.getP5Instance().cancelTouchMoved_()
}

///|
impl P5JS with setTouchStarted(self, callback) {
  self.getP5Instance().setTouchStarted_(callback)
}

///|
impl P5JS with cancelTouchStarted(self) {
  self.getP5Instance().cancelTouchStarted_()
}

// key

///|
impl P5JS with getKey(self) {
  self.getP5Instance().getKey_()
}

///|
impl P5JS with getKeyCode(self) {
  self.getP5Instance().getKeyCode_()
}

///|
impl P5JS with keyIsDown(self, keyCode) {
  self.getP5Instance().keyIsDown_(keyCode)
}

///|
impl P5JS with keyIsPressed(self) {
  self.getP5Instance().keyIsPressed_()
}

///|
impl P5JS with setKeyPressed(self, callback) {
  self.getP5Instance().setKeyPressed_(callback)
}

///|
impl P5JS with cancelKeyPressed(self) {
  self.getP5Instance().cancelKeyPressed_()
}

///|
impl P5JS with setKeyReleased(self, callback) {
  self.getP5Instance().setKeyReleased_(callback)
}

///|
impl P5JS with cancelKeyReleased(self) {
  self.getP5Instance().cancelKeyReleased_()
}

///|
impl P5JS with setKeyTyped(self, callback) {
  self.getP5Instance().setKeyTyped_(callback)
}

///|
impl P5JS with cancelKeyTyped(self) {
  self.getP5Instance().cancelKeyTyped_()
}

// mouse

///|
impl P5JS with getMouseX(self) {
  self.getP5Instance().getMouseX_()
}

///|
impl P5JS with getMouseY(self) {
  self.getP5Instance().getMouseY_()
}

///|
impl P5JS with getMovedX(self) {
  self.getP5Instance().getMovedX_()
}

///|
impl P5JS with getMovedY(self) {
  self.getP5Instance().getMovedY_()
}

///|
impl P5JS with getPmouseX(self) {
  self.getP5Instance().getPmouseX_()
}

///|
impl P5JS with getPmouseY(self) {
  self.getP5Instance().getPmouseY_()
}

///|
impl P5JS with getPwinMouseX(self) {
  self.getP5Instance().getPwinMouseX_()
}

///|
impl P5JS with getPwinMouseY(self) {
  self.getP5Instance().getPwinMouseY_()
}

///|
impl P5JS with getWinMouseX(self) {
  self.getP5Instance().getWinMouseX_()
}

///|
impl P5JS with getWinMouseY(self) {
  self.getP5Instance().getWinMouseY_()
}

///|
impl P5JS with mouseIsPressed(self) {
  self.getP5Instance().mouseIsPressed_()
}

///|
impl P5JS with getMouseButtonString(self) {
  self.getP5Instance().getMouseButtonString_()
}

///|
impl P5JS with getMouseButton(self) {
  self.getP5Instance().getMouseButton_()
}

///|
impl P5JS with setDoubleClicked(self, callback) {
  self.getP5Instance().setDoubleClicked_(callback)
}

///|
impl P5JS with cancelDoubleClicked(self) {
  self.getP5Instance().cancelDoubleClicked_()
}

///|
impl P5JS with setMouseClicked(self, callback) {
  self.getP5Instance().setMouseClicked_(callback)
}

///|
impl P5JS with cancelMouseClicked(self) {
  self.getP5Instance().cancelMouseClicked_()
}

///|
impl P5JS with setMouseDragged(self, callback) {
  self.getP5Instance().setMouseDragged_(callback)
}

///|
impl P5JS with cancelMouseDragged(self) {
  self.getP5Instance().cancelMouseDragged_()
}

///|
impl P5JS with setMouseMoved(self, callback) {
  self.getP5Instance().setMouseMoved_(callback)
}

///|
impl P5JS with cancelMouseMoved(self) {
  self.getP5Instance().cancelMouseMoved_()
}

///|
impl P5JS with setMousePressed(self, callback) {
  self.getP5Instance().setMousePressed_(callback)
}

///|
impl P5JS with cancelMousePressed(self) {
  self.getP5Instance().cancelMousePressed_()
}

///|
impl P5JS with setMouseReleased(self, callback) {
  self.getP5Instance().setMouseReleased_(callback)
}

///|
impl P5JS with cancelMouseReleased(self) {
  self.getP5Instance().cancelMouseReleased_()
}

///|
impl P5JS with setMouseWheel(self, callback) {
  self.getP5Instance().setMouseWheel_(callback)
}

///|
impl P5JS with cancelMouseWheel(self) {
  self.getP5Instance().cancelMouseWheel_()
}

///|
impl P5JS with requestPointerLock(self) {
  self.getP5Instance().requestPointerLock_()
}

///|
impl P5JS with exitPointerLock(self) {
  self.getP5Instance().exitPointerLock_()
}