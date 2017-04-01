//
//  FilterView.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 31/3/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import Foundation
import UIKit

class FilterView:UIViewController {
    
    var colours = [String]()
    
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var whiteButton: UIButton!
    @IBOutlet weak var blackButton: UIButton!
    
    
    @IBAction func chooseBlueButton(_ sender: UIButton) {
        
        if blueButton.backgroundColor == nil{
        blueButton.backgroundColor = UIColor(red: 0, green: 0, blue: 100, alpha: 1)
            colours.append("Blue")
        }else{
            blueButton.backgroundColor = nil
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "Blue"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
            
        }
        print(colours)
    }
    
    @IBAction func chooseRedButton(_ sender: UIButton) {
        if redButton.backgroundColor == nil{
            redButton.backgroundColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1)
            colours.append("Red")
        }else{
            redButton.backgroundColor = nil
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "Red"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
        }
        print(colours)
    }
    
    @IBAction func chooseWhiteButton(_ sender: UIButton) {
        if whiteButton.backgroundColor == nil{
            whiteButton.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
            whiteButton.setTitle("Wow", for: .normal)
            colours.append("White")
        }else{
            whiteButton.backgroundColor = nil
            whiteButton.setTitle("White", for: .normal)
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "White"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
        }
        print(colours)
    }
    
    @IBAction func chooseBlackButton(_ sender: UIButton) {
        if blackButton.backgroundColor == nil{
            blackButton.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
            colours.append("Black")
        }else{
            blackButton.backgroundColor = nil
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "Black"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
        }
        print(colours)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colourToSize"
        {
            let controller = segue.destination as! SizePickerView
            
            controller.colours = self.colours
        }
    }
    
    
    
    
    
}
