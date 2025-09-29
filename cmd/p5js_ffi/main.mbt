extern "js" fn getP5Instance( drawww : (P5Instance) -> Unit) -> P5Instance = 
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
  getP5Instance( (p) => {
    p.background(220);
    p.ellipseMode(p.CENTER);
    p.ellipse(200, 200, 50, 50);
  });
}