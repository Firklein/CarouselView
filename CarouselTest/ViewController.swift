//
//  ViewController.swift
//  CarouselTest
//
//  Created by Farben on 2020/10/14.
//

import UIKit

class ViewController: UIViewController {
 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.loadCarouslView()
    }
    
    func loadCarouslView() {
        let rect = CGRect.init(x: 0, y: 300, width: self.view.frame.size.width, height: 260)
        let carousl = CarouselView.init(frame: rect)
        self.setupImage(carousl)
        self.view.addSubview(carousl)
    }
    
    // 设置数据源
    func setupImage(_ carousl : CarouselView) {
        var imageArray : Array<UIImage>! = []
        for i in 0..<3 {
            let imgUrl = "banner_0\(i + 1)"
            let image = UIImage(named: imgUrl)
            imageArray.append(image!)
        }
        carousl.setupBannerPages(imageArray) { (pageIndex) in
            print("当前选中页面：\(pageIndex)")
        }
    }

}

