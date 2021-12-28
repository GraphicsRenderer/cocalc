CoCalc
---

The book is written on CoCalc. We highly recommand you to use the official CoCalc SaaS service, https://cocalc.com/

A self-hosted version can be obtained here if you have low budget.

To start the CoCalc server:

```bash
docker-compose up -d
```

and then visit http://127.0.0.1:8080

After creating the CoCalc project, open a terminal in CoCalc, then

```bash
git clone https://github.com/SoftwareRenderer/book.git
cd book
cp -r fonts ~/.fonts
make
open build/SoftwareRenderer.pdf
```
