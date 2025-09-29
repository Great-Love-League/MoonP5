#external
pub type P5Instance

pub type Color

pub(open) trait P5JS{
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

}

pub impl P5JS for P5Instance with getP5Instance(self){
  self
}

pub impl P5JS for P5Instance

// 这下面请实现默认方法，类的本地方法请分写在文件

// touches
impl P5JS with getTouches(self){
  self.getP5Instance().getTouches_()
}

impl P5JS with setTouchEnded(self, callback){
  self.getP5Instance().setTouchEnded_(callback)
}

impl P5JS with cancelTouchEnded(self){
  self.getP5Instance().cancelTouchEnded_()
}

impl P5JS with setTouchMoved(self, callback){
  self.getP5Instance().setTouchMoved_(callback)
}

impl P5JS with cancelTouchMoved(self){
  self.getP5Instance().cancelTouchMoved_()
}

impl P5JS with setTouchStarted(self, callback){
  self.getP5Instance().setTouchStarted_(callback)
}

impl P5JS with cancelTouchStarted(self){
  self.getP5Instance().cancelTouchStarted_()
}
