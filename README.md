CoCalc
---

《软件渲染器》使用CoCalc的LaTex环境书写，强烈建议使用CoCalc官方的SaaS服务，[https://cocalc.com](https://cocalc.com)，进行编译。

如果希望在本地运行CoCalc环境，可以使用预制的Docker镜像：

启动CoCalc服务器:

```bash
docker-compose up -d
```

访问[http://127.0.0.1:8080](http://127.0.0.1:8080)。

成功创建CoCalc项目后，新建Terminal，然后

```bash
git clone https://github.com/SoftwareRenderer/book.git
cd book
cp -r fonts ~/.fonts
make
open build/SoftwareRenderer.pdf
```
