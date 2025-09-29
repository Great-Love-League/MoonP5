#external
pub type P5Instance

pub(open) trait P5JS{
  getP5Instance(Self) -> P5Instance
  // 其他的方法
}

pub impl P5JS for P5Instance with getP5Instance(self){
  self
}

pub impl P5JS for P5Instance

// 这下面请实现默认方法，类的本地方法请分写在文件