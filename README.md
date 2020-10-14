# CarouselView
swift版本的轮播图功能实现，实现最后一张图片到第一张图片的无缝连接
// 视图初始化
let rect = CGRect.init(x: 0, y: 300, width: self.view.frame.size.width, height: 260)
let carousl = CarouselView.init(frame: rect)
self.setupImage(carousl)
self.view.addSubview(carousl)

// 数据源初始化
var imageArray : Array<UIImage>! = []
for i in 0..<3 {
    let imgUrl = "banner_0\(i + 1)"
    let image = UIImage(named: imgUrl)
    imageArray.append(image!)
}
carousl.setupBannerPages(imageArray) { (pageIndex) in
  print("当前选中页面：\(pageIndex)")
}
