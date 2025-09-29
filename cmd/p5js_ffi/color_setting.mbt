/// https://p5js.org/zh-Hans/reference/p5/noStroke/
pub extern "js" fn P5Instance::noStroke(self: P5Instance) -> Unit =
  #| (self) => self.noStroke()

pub extern "js" fn P5Instance::fill_colorPara(self: P5Instance, v1: Double, v2?: Option[Double], v3?: Option[Double], a?: Option[Double]) -> Unit =
  #| (self, v1, v2, v3, a) => self.fill(v1, v2, v3, a)

pub extern "js" fn P5Instance::fill_colorObj(self: P5Instance, c: Color) -> Unit =
  #| (self, c) => self.fill(c)

