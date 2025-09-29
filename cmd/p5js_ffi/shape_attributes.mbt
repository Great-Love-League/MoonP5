/// https://p5js.org/zh-Hans/reference/p5/ellipseMode/
/// mode: 'CENTER', 'RADIUS', 'CORNER', 'CORNERS'
pub extern "js" fn P5Instance::ellipseMode(self: P5Instance, mode: String) -> Unit =
  #| (self, mode) => self.ellipseMode(mode)

/// https://p5js.org/zh-Hans/reference/p5/noSmooth/
pub extern "js" fn P5Instance::noSmooth(self: P5Instance) -> Unit =
  #| (self) => self.noSmooth()

/// https://p5js.org/zh-Hans/reference/p5/strokeCap/
/// cap: 'ROUND', 'SQUARE', 'PROJECT'
pub extern "js" fn P5Instance::strokeCap(self: P5Instance, cap: String) -> Unit =
  #| (self, cap) => self.strokeCap(cap)

/// https://p5js.org/zh-Hans/reference/p5/strokeJoin/
/// join: 'MITER', 'BEVEL', 'ROUND'
pub extern "js" fn P5Instance::strokeJoin(self: P5Instance, join: String) -> Unit =
  #| (self, join) => self.strokeJoin(join)

/// https://p5js.org/zh-Hans/reference/p5/strokeWeight/
pub extern "js" fn P5Instance::strokeWeight(self: P5Instance, weight: Double) -> Unit =
  #| (self, weight) => self.strokeWeight(weight)
