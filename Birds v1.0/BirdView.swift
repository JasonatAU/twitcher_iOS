//
//  BirdView.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 25/3/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import UIKit
import Foundation
class BirdView: UIViewController,UITableViewDataSource {
    
    @IBOutlet weak var scrollView: UIScrollView!
    var imageArray = [UIImage]()
    var bird = Bird()
    let cellReuseIdentifier = "BirdInfo"
    var birdInfo = [["Title","Detail"],["xxxx","xxxx"]]
    
    @IBOutlet weak var showImage:UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //showImage?.image = UIImage(named: bird.pictureList[0])
        //label.text = "I am bird No. \(bird.ID)"
        //add some fake data to the details of a bird info
        loadBird()
        
        for i in 0..<bird.pictureList.count{
            imageArray.append(UIImage(named: bird.pictureList[i])!)
        }
        
        for j in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[j]
            let xPosition = self.view.frame.width * CGFloat(j)
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
            
            scrollView.contentSize.width = scrollView.frame.width * CGFloat( j + 1)
            scrollView.addSubview(imageView)
        }
        
    }
    //abcd this is a test
    //add fake data to the details of a bird object
    func loadBird(){
        
        birdInfo.append(["Common Name", bird.commonName])
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return birdInfo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =  tableView.dequeueReusableCell(withIdentifier: self.cellReuseIdentifier)!
        
        let left = self.birdInfo[(indexPath as NSIndexPath).row][0]
        let right = self.birdInfo[(indexPath as NSIndexPath).row][1]
        
        
        
        cell.textLabel?.text = left
        cell.detailTextLabel?.text = right
        
        return cell
    }
    
    func setBird(newBird:Bird){
        bird = newBird
        
        print(bird.ID)
    }
    
    func changeTest(){
        label.text = "I have been changed!!OMG"
        showImage?.image = UIImage(named: "bird7")
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
