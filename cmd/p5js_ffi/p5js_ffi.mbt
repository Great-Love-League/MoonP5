///|
#external
pub type P5Instance

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
