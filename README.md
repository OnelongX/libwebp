libwebp fork

来自于google的webp编译库

ios引用方式：podspec的方式依赖进工程

配合SDWebImage/WebP 和 JFZWebView 可以实现原生和H5的webp适配

单独抽出目的：

避免独立SDWebImage导致的更改（只需要独立出libwebp即可，无需其他更改）
