
pub enum ArcMode {
  OPEN
  CHORD
  PIE
}

fn ArcMode::to_string(self: Self) -> String {
  match self {
    OPEN => "OPEN"
    CHORD => "CHORD"
    PIE => "PIE"
  }
}

extern "js" fn P5Instance::arc_ffi_base(self: P5Instance, x: Double, y: Double, w: Double, h: Double, start: Double, stop: Double) -> Unit =
  #| (self, x, y, w, h, start, stop) => self.arc(x, y, w, h, start, stop)
extern "js" fn P5Instance::arc_ffi_mode(self: P5Instance, x: Double, y: Double, w: Double, h: Double, start: Double, stop: Double, mode: String) -> Unit =
  #| (self, x, y, w, h, start, stop, mode) => self.arc(x, y, w, h, start, stop, mode)
extern "js" fn P5Instance::arc_ffi_detail(self: P5Instance, x: Double, y: Double, w: Double, h: Double, start: Double, stop: Double, mode: String, detail: Int) -> Unit =
  #| (self, x, y, w, h, start, stop, mode, detail) => self.arc(x, y, w, h, start, stop, mode, detail)

/// https://p5js.org/zh-Hans/reference/p5/arc/
pub fn P5Instance::arc(
  self: P5Instance,
  x: Double,
  y: Double,
  w: Double,
  h: Double,
  start: Double,
  stop: Double,
  mode: Option[ArcMode],
  detail: Option[Int],
) -> Unit {
  match (mode, detail) {
    // Case 1: 提供了 mode 和 detail
    (Some(m), Some(d)) => {
      self.arc_ffi_detail(x, y, w, h, start, stop, m.to_string(), d)
    }
    // Case 2: 只提供了 mode
    (Some(m), None) => {
      self.arc_ffi_mode(x, y, w, h, start, stop, m.to_string())
    }
    _ => {
      self.arc_ffi_base(x, y, w, h, start, stop)
    }
  }
}

/// https://p5js.org/zh-Hans/reference/p5/circle/
pub extern "js" fn P5Instance::circle(self: P5Instance, x: Double, y: Double, d: Double) -> Unit =
  #| (self, x, y, d) => self.circle(x, y, d)

/// https://p5js.org/zh-Hans/reference/p5/ellipse/
pub extern "js" fn P5Instance::ellipse(self: P5Instance, x: Double, y: Double, w: Double, h: Double) -> Unit =
  #| (self, x, y, w, h) => self.ellipse(x, y, w, h)

/// https://p5js.org/zh-Hans/reference/p5/line/
pub extern "js" fn P5Instance::line(self: P5Instance, x1: Double, y1: Double, x2: Double, y2: Double) -> Unit =
  #| (self, x1, y1, x2, y2) => self.line(x1, y1, x2, y2)

/// https://p5js.org/zh-Hans/reference/p5/point/
pub extern "js" fn P5Instance::point(self: P5Instance, x: Double, y: Double) -> Unit =
  #| (self, x, y) => self.point(x, y)

/// https://p5js.org/zh-Hans/reference/p5/quad/
pub extern "js" fn P5Instance::quad(self: P5Instance, x1: Double, y1: Double, x2: Double, y2: Double, x3: Double, y3: Double, x4: Double, y4: Double) -> Unit =
  #| (self, x1, y1, x2, y2, x3, y3, x4, y4) => self.quad(x1, y1, x2, y2, x3, y3, x4, y4)

/// https://p5js.org/zh-Hans/reference/p5/rect/
pub extern "js" fn P5Instance::rect(self: P5Instance, x: Double, y: Double, w: Double, h: Double) -> Unit =
  #| (self, x, y, w, h) => self.rect(x, y, w, h)

/// https://p5js.org/zh-Hans/reference/p5/triangle/
pub extern "js" fn P5Instance::triangle(self: P5Instance, x1: Double, y1: Double, x2: Double, y2: Double, x3: Double, y3: Double) -> Unit =
  #| (self, x1, y1, x2, y2, x3, y3) => self.triangle(x1, y1, x2, y2, x3, y3)
