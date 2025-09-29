pub enum EllipseMode {
  CENTER
  RADIUS
  CORNER
  CORNERS
}
fn EllipseMode::to_string(self: Self) -> String {
  match self {
    CENTER => "CENTER"
    RADIUS => "RADIUS"
    CORNER => "CORNER"
    CORNERS => "CORNERS"
  }
}

pub extern "js" fn P5Instance::ellipseMode(self: P5Instance, mode: EllipseMode) -> Unit {
  self.ellipseMode_ffi(mode.to_string())
}




