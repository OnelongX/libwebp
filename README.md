libwebp fork

来自于google的webp编译库

ios引用方式：

```
  pod 'libwebp', :git => 'https://github.com/xilankong/libwebp.git'
  pod 'SDWebImage/WebP'
```

或者 直接将工程内的json文件放入工程中

```
  pod 'libwebp', :podspec => 'libwebp.podspec.json'
  pod 'SDWebImage/WebP'
```



配合SDWebImage/WebP 和 YangWebView 可以实现原生和H5的webp适配

单独抽出目的：

避免独立SDWebImage导致的更改（只需要独立出libwebp即可，无需其他更改）
