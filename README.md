# WBWebImage
网络图片请求框架，使用简单，并缓存到本地，提供清除缓存的接口

“`[imageView wb_setImageWithURLString:@"http://pic2.52pk.com/files/160719/2380130_112911_1_lit.jpg" placeholder:nil];  
// 清除缓存  格式是NSTimeInterval
[[WBImageCache sharedImageCache] wb_clearDiskCachesWithTimeout:1000];
“` 


