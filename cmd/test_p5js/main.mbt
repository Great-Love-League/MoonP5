extern "js" fn getP5Instance( drawww : (@p5js_ffi.P5Instance) -> Unit) -> @p5js_ffi.P5Instance = 
  #| () => {
  #|a = new p5((p)=>{
  #|  p.setup = () => {
  #|    p.createCanvas(400, 400);
  #|  }
  #|  p.draw = () => {drawww(p)}
  #|})
  #|return a
  #|}


fn main {
  let draww = fn(p: @p5js_ffi.P5Instance) {
    let get = p.getTouches()
    let a = p.color(255, v2=Some(0), v3=Some(200))
    p.fill_colorObj(a)
    p.square(100.0, 100.0, 50.0)
    for t in get {
      let id = t.getId()
      let x = t.getX()
      let y = t.getY()
      println("Touch id: \{id} x: \{x} y: \{y}")
    }
  }
  let p5 = getP5Instance(draww)
}