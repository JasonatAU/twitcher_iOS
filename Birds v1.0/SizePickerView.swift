//
//  SizePickerView.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 1/4/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import Foundation
import UIKit
class SizePickerView: UIViewController{
    
    var colours = [String]()
    var size = ""
    
    @IBOutlet weak var smallSizeLabel: UILabel!
    @IBOutlet weak var mediumSizeLabel: UILabel!
    @IBOutlet weak var bigSizeLabel: UILabel!
    @IBOutlet weak var hugeSizeLabel: UILabel!
    
    @IBOutlet weak var chooseSizeLabel: UILabel!
    
    @IBAction func chooseSmallButton(_ sender: UIButton) {
        if mediumSizeLabel.backgroundColor != nil{
            mediumSizeLabel.backgroundColor = nil
        }
        if bigSizeLabel.backgroundColor != nil{
            bigSizeLabel.backgroundColor = nil
        }
        if hugeSizeLabel.backgroundColor != nil{
            hugeSizeLabel.backgroundColor = nil
        }
        
        smallSizeLabel.backgroundColor = UIColor(red: 0, green: 100, blue: 0, alpha: 1)
        chooseSizeLabel.text = "Wow, you found a small bird!"
        size = "Small"
    }
    
    @IBAction func chooseMediumButton(_ sender: UIButton) {
        if smallSizeLabel.backgroundColor != nil{
            smallSizeLabel.backgroundColor = nil
        }
        if bigSizeLabel.backgroundColor != nil{
            bigSizeLabel.backgroundColor = nil
        }
        if hugeSizeLabel.backgroundColor != nil{
            hugeSizeLabel.backgroundColor = nil
        }
        mediumSizeLabel.backgroundColor = UIColor(red: 0, green: 100, blue: 0, alpha: 1)
        chooseSizeLabel.text = "Wow, you found a medium bird!"
        size = "Medium"
    }
    
    @IBAction func chooseBigButton(_ sender: UIButton) {
        if smallSizeLabel.backgroundColor != nil{
            smallSizeLabel.backgroundColor = nil
        }
        if mediumSizeLabel.backgroundColor != nil{
            mediumSizeLabel.backgroundColor = nil
        }
        if hugeSizeLabel.backgroundColor != nil{
            hugeSizeLabel.backgroundColor = nil
        }
        bigSizeLabel.backgroundColor = UIColor(red: 0, green: 100, blue: 0, alpha: 1)
        chooseSizeLabel.text = "Wow, you found a big bird!"
        size = "Big"
    }
    
    @IBAction func chooseHugeButton(_ sender: UIButton) {
        if smallSizeLabel.backgroundColor != nil{
            smallSizeLabel.backgroundColor = nil
        }
        if mediumSizeLabel.backgroundColor != nil{
            mediumSizeLabel.backgroundColor = nil
        }
        if bigSizeLabel.backgroundColor != nil{
            bigSizeLabel.backgroundColor = nil
        }
        hugeSizeLabel.backgroundColor = UIColor(red: 0, green: 100, blue: 0, alpha: 1)
        chooseSizeLabel.text = "Wow, be careful! you found a Huge bird!"
        size = "Huge"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sizeToResult"
        {
            let controller = segue.destination as! FilterResultTableView
            
            controller.colours = self.colours
            controller.size = self.size
        }
    }
    
}
