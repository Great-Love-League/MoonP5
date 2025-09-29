
fn draw_all_shapes(p: P5Instance) -> Unit {
  // 调用 shape2D.mbt 中的所有函数来验证它们的 FFI 签名
  p.arc(75.0, 75.0, 80.0, 80.0, 0.0, 3.14, Some(ArcMode::PIE), None)
  p.circle(150.0, 75.0, 50.0)
  p.ellipse(225.0, 75.0, 60.0, 30.0)
  p.line(0.0, 150.0, 400.0, 150.0)
  p.point(50.0, 175.0)
  p.quad(100.0, 175.0, 150.0, 175.0, 140.0, 225.0, 90.0, 225.0)
  p.rect(200.0, 175.0, 80.0, 50.0)
  p.triangle(300.0, 175.0, 350.0, 175.0, 325.0, 225.0)
}

// 3. 定义一个 test 块来运行我们的测试
test "integration test for shape2D functions" {
  // 使用 getP5Instance 来创建一个 p5 实例，
  // 并将我们的绘图函数作为 `draw` 回调传递进去。
  // 如果 FFI 绑定正确，这段代码将无错误运行。
  let _ = getP5Instance(draw_all_shapes)
}
