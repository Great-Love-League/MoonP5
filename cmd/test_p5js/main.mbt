///|
extern "js" fn getP5Instance(
  drawww : (@p5js_ffi.P5Instance) -> Unit,
) -> @p5js_ffi.P5Instance =
  #| (drawww) => {
  #|a = new p5((p)=>{
  #|  p.setup = () => {
  #|    p.createCanvas(400, 400);
  #|  }
  #|  p.draw = () => {drawww(p)}
  #|})
  #|return a
  #|}

///|
fn main {
  let draww = fn(p : @p5js_ffi.P5Instance) {
    let get = p.getTouches()
    for t in get {
      let id = t.getId()
      let x = t.getX()
      let y = t.getY()
      println("Touch id: \{id} x: \{x} y: \{y}")
    }
  }
  let p5 = getP5Instance(draww)

  p5.setKeyPressed(fn() {
    let k = p5.getKey()
    let code = p5.getKeyCode()
    println("Key Pressed: \{k} Code: \{code}")
    return true
  })

}
