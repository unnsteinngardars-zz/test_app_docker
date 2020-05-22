const Koa = require('koa');

const app = new Koa();

app.use(async ctx => {
    console.log("Successfully rendered Hello World! :)");
    ctx.body = "Hello World";
});

app.listen(3210, () => {
    console.log("KOA app listening on port 3001");
});

