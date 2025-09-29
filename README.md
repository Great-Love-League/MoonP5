# Demonmasterlqx/MoonP5

目前指定的 p5js 链接为 "https://cdn.jsdelivr.net/npm/p5@1.11.10/lib/p5.min.js"

## 参考资料

https://p5js.org/reference/

https://p5js.org/reference/p5.sound/

## 举例

要写成实例化

```js
const sketch = (p) => {
    p.setup = function(){
    p.createCanvas(100, 100);

    p.background(200);
    p.noFill(); // 将 noFill() 放在所有 arc() 之前

    // Bottom-right.
    p.arc(50, 55, 50, 50, 0, p.HALF_PI);

    // Bottom-left.
    p.arc(50, 55, 60, 60, p.HALF_PI, p.PI);

    // Top-left.
    p.arc(50, 55, 70, 70, p.PI, p.PI + p.QUARTER_PI);

    // Top-right.
    p.arc(50, 55, 80, 80, p.PI + p.QUARTER_PI, p.TWO_PI);

    }

}
console.log('⚡ 即将创建p5实例...');
new p5(sketch);
```
