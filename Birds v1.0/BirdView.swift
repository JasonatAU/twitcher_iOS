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
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var galleryButton: UIButton!
    //@IBOutlet weak var scrollView: UIScrollView!
    var imageArray = [UIImage]()
    var bird = Bird()
    let cellReuseIdentifier = "BirdInfo"
    var birdInfo = [[String]]()
    
    //@IBOutlet weak var showImage:UIImageView!
    @IBOutlet weak var showImage: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showImage?.image = UIImage(named: bird.pictureList[0])
        //label.text = "I am bird No. \(bird.ID)"
        //add some fake data to the details of a bird info
        loadBird()
        galleryButton.setImage(buttonImage(), for: .normal)
        
//        scrollView.frame = view.frame
//        
        for i in 0..<bird.pictureList.count{
            imageArray.append(UIImage(named: bird.pictureList[i])!)
        }
        
        tableView.estimatedRowHeight = 600
        tableView.rowHeight = UITableViewAutomaticDimension
        //tableView.rowHeight = UITableViewAutomaticDimension
        //tableView.estimatedRowHeight = 160
//
//        for j in 0..<imageArray.count{
//            let imageView = UIImageView()
//            imageView.image = imageArray[j]
//            imageView.contentMode = .scaleAspectFit
//            let xPosition = self.view.frame.width * CGFloat(j)
//            imageView.frame = CGRect(x: xPosition, y: 0, width: self.scrollView.frame.width, height: self.scrollView.frame.height)
//            
//            scrollView.contentSize.width = scrollView.frame.width * CGFloat( j + 1)
//            scrollView.addSubview(imageView)
//        }
        
    }
    //abcd this is a test
    //add fake data to the details of a bird object
    func loadBird(){
        var colourList = ""
        for i in 0..<bird.colourList.count{
            colourList += "\(bird.colourList[i]) "
        }
        birdInfo.append(["Common Name", bird.commonName])
        birdInfo.append(["Scientific Name", bird.scientificName])
        birdInfo.append(["Size", "\(bird.size[0]) to \(bird.size[1]) cm"])
        birdInfo.append(["Colour", colourList])
        birdInfo.append(["Description", bird.description])
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
    
    //make the height of each cell dynamically
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
//    }
//    
//    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return UITableViewAutomaticDimension
//    }
    
    func changeTest(){
        label.text = "I have been changed!!OMG"
        showImage?.image = UIImage(named: "bird7")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailViewToGallery"
        {
            let controller = segue.destination as! PicturesView
            controller.imageArray = self.imageArray
//            if let selectedCell = sender as? UITableViewCell {
//                let indexPath = tableView.indexPath(for: selectedCell)!
//                let selectedItem = indexPath.row
//                chosenBird = birdList[selectedItem]
//                controller.bird = chosenBird
//            }
            
        }
    }
    
    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetSize.width  / image.size.width
        let heightRatio = targetSize.height / image.size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
        } else {
            newSize = CGSize(width: size.width * widthRatio,  height: size.height * widthRatio)
        }
        
        // This is the rect that we've calculated out and this is what is actually used below
        let rect = CGRect(x: 0, y: 0, width: newSize.width, height: newSize.height)
        
        // Actually do the resizing to the rect using the ImageContext stuff
        UIGraphicsBeginImageContextWithOptions(newSize, false, 1.0)
        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return newImage!
    }
    
    func buttonImage() -> UIImage{
        if bird.pictureList.count == 0{
            return UIImage(named: "bird1")!
        }
        
        var rowImage = UIImage()
        var result = UIImage()
        
        for i in 0..<bird.pictureList.count{
            rowImage = UIImage(named: bird.pictureList[i])!
            if Int(rowImage.size.width) > Int(rowImage.size.height){
                result = resizeImage(image: rowImage, targetSize: CGSize(width: 375, height: 400))
                return result
            }
        }
        rowImage = UIImage(named: bird.pictureList[0])!
        result = resizeImage(image: rowImage, targetSize: CGSize(width: 375, height: 500))
        return result
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
