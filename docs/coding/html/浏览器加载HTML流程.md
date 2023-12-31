#html  #js #css

## 流程图
![](../../_media/Pasted%20image%2020230815133207.png)

![](00 Attachment/Pasted%20image%2020230818141317.png)

## 具体解析流程

- **解析输入的 URL**：浏览器会将输入的 URL 解析成协议、主机名、路径等各个部分。
- **发送网络请求**：浏览器会向解析出来的主机名发送网络请求，并且会将协议、主机名、路径等信息传递给网络层。
- **DNS 解析**：网络层会将主机名解析成对应的 IP 地址，并且在浏览器中建立一个 TCP 连接。
- **发送 HTTP 请求**：浏览器会向服务器发送 HTTP 请求，包括请求方法（GET、POST、PUT 等）、请求头（User-Agent、Accept、Cookie 等）和请求体（如果是 POST 请求）等信息。
- **接收 HTTP 响应**：服务器会对浏览器发送的请求进行处理，并返回 HTTP 响应，包括状态码、响应头（Content-Type、Content-Length 等）和响应体（HTML、CSS、JavaScript 等）等信息。
- **解析 HTML**：浏览器会将接收到的 HTML 代码解析成 DOM 树，同时还会解析 CSS 和 JavaScript，生成 CSSOM 和 JavaScript 对象模型。
- **构建渲染树**：浏览器会将 DOM 树和 CSSOM 合并成渲染树，渲染树只包含需要显示的内容，如可见的元素和文本等。
- **布局和绘制**：浏览器会根据渲染树的布局信息计算每个元素的位置和大小，然后将其绘制到屏幕上。
- **JavaScript 执行**：如果 HTML 中包含 JavaScript 代码，则浏览器会执行这些代码，从而实现交互效果、动画效果等。

