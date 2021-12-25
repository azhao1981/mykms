# vite

## helle world

https://cn.vitejs.dev/guide/#scaffolding-your-first-vite-project
npm init vite@latest
yarn create vite
pnpm create vite

## vitejs

https://cn.vitejs.dev/
https://gitee.com/mirrors/ViteJS

[Vite 2.0 发布了](https://zhuanlan.zhihu.com/p/351147547)

[Vite和Webpack的核心差异](https://mp.weixin.qq.com/s/2jOl93Aqx0Rprxbf3BLV4w)

https://github.com/vitejs/awesome-vite

社区模板 [degit](https://github.com/Rich-Harris/degit)

```bash
mkdir hello ; cd hello
degit github:web2033/vite-vue3-tailwind-starter#main
```

ERROR：
```bash
$ degit github:web2033/vite-vue3-tailwind-starter hello-tw
! could not find commit hash for master
```

这是因为 vite-vue3-tailwind-starter 使用main为主分支，所以需要指定分支

```bash
npx degit https://github.com/web2033/vite-vue3-tailwind-starter#main hello-tw

npm install
npm run dev
npm run build
npm run serve
```

[tailwind官方 vue+vite+tailwind](https://tailwindcss.com/docs/guides/vue-3-vite)
https://tailwindcss.com/

[Webpack HMR 原理解析](https://www.jianshu.com/p/95f5f51e6fc7)

[webpack中的HMR(热更新)原理剖析](https://www.imooc.com/article/293578)

[前端模块化——彻底搞懂AMD、CMD、ESM和CommonJS](https://www.cnblogs.com/chenwenhao/p/12153332.html)

