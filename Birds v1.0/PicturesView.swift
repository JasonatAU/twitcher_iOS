//
//  PicturesView.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 2/4/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import Foundation
import UIKit

class PicturesView: UIViewController{
    //an IBOutlet of scrollView should be added below
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.frame = view.frame
        
//        for i in 0..<bird.pictureList.count{
//            imageArray.append(UIImage(named: bird.pictureList[i])!)
//        }
        
        for j in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[j]
            imageView.contentMode = .scaleAspectFit
            let xPosition = self.view.frame.width * CGFloat(j)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
            
            scrollView.contentSize.width = scrollView.frame.width * CGFloat( j + 1)
            scrollView.addSubview(imageView)
        }
        
    }

}
