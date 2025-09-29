/// https://p5js.org/zh-Hans/reference/p5/brightness/
/// 返回颜色的亮度值（0 到 100 之间）
pub extern "js" fn P5Instance::brightness(self: P5Instance, c: Color) -> Double =
  #| (self, c) => self.brightness(c)

/// https://p5js.org/zh-Hans/reference/p5/color/
/// v1: 灰度值，或红色值
/// v2: 绿色值
pub extern "js" fn P5Instance::color(self: P5Instance, v1: Double, v2?: Option[Double], v3?: Option[Double], a?: Option[Double]) -> Color =
  #| (self, v1, v2, v3, a) => self.color(v1, v2, v3, a)

