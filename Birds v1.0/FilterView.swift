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
    @IBOutlet weak var brownButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var tanButton: UIButton!
    @IBOutlet weak var greyButton: UIButton!
    @IBOutlet weak var chestnutButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    
    @IBOutlet weak var colourLabel: UILabel!
    
    
    @IBAction func chooseBlueButton(_ sender: UIButton) {
        
        if blueButton.backgroundColor == nil{
        blueButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 255/255, alpha: 1)
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
        changeLabel()
        print(colours)
    }
    
    @IBAction func chooseRedButton(_ sender: UIButton) {
        if redButton.backgroundColor == nil{
            redButton.backgroundColor = UIColor(red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
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
        changeLabel()
        print(colours)
    }
    
    @IBAction func chooseWhiteButton(_ sender: UIButton) {
        if whiteButton.backgroundColor == nil{
            whiteButton.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
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
        changeLabel()
        print(colours)
    }
    
    @IBAction func chooseBlackButton(_ sender: UIButton) {
        if blackButton.backgroundColor == nil{
            blackButton.backgroundColor = UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1)
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
        changeLabel()
        print(colours)
    }
    
    @IBAction func chooseBrownButton(_ sender: UIButton) {
        if brownButton.backgroundColor == nil{
            brownButton.backgroundColor = UIColor(red: 139/255, green: 69/255, blue: 19/255, alpha: 1)
            colours.append("Brown")
        }else{
            brownButton.backgroundColor = nil
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "Brown"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
        }
        changeLabel()
        print(colours)
    }
    
    @IBAction func chooseOrangeButton(_ sender: UIButton) {
        if orangeButton.backgroundColor == nil{
            orangeButton.backgroundColor = UIColor(red: 255/255, green: 165/255, blue: 0/255, alpha: 1)
            colours.append("Orange")
        }else{
            orangeButton.backgroundColor = nil
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "Orange"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
        }
        changeLabel()
        print(colours)
    }
    
    @IBAction func chooseTanButton(_ sender: UIButton) {
        if tanButton.backgroundColor == nil{
            tanButton.backgroundColor = UIColor(red: 210/255, green: 180/255, blue: 140/255, alpha: 1)
            colours.append("Tan")
        }else{
            tanButton.backgroundColor = nil
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "Tan"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
        }
        changeLabel()
        print(colours)
    }
    
    @IBAction func chooseGreyButton(_ sender: UIButton) {
        if greyButton.backgroundColor == nil{
            greyButton.backgroundColor = UIColor(red: 169/255, green: 169/255, blue: 169/255, alpha: 1)
            colours.append("Grey")
        }else{
            greyButton.backgroundColor = nil
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "Grey"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
        }
        changeLabel()
        print(colours)
    }
    
    @IBAction func chooseChestnutButton(_ sender: UIButton) {
        if chestnutButton.backgroundColor == nil{
            chestnutButton.backgroundColor = UIColor(red: 149/255, green: 69/255, blue: 53/255, alpha: 1)
            colours.append("Chestnut")
        }else{
            chestnutButton.backgroundColor = nil
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "Chestnut"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
        }
        changeLabel()
        print(colours)
    }
    
    @IBAction func chooseGreenButton(_ sender: UIButton) {
        if greenButton.backgroundColor == nil{
            greenButton.backgroundColor = UIColor(red: 50/255, green: 205/255, blue: 50/255, alpha: 1)
            colours.append("Green")
        }else{
            greenButton.backgroundColor = nil
            var j = -1
            for i in 0..<colours.count{
                if colours[i] == "Green"{
                    j = i
                    break
                }
            }
            if j != -1{
                colours.remove(at: j)
            }
        }
        changeLabel()
        print(colours)
    }
    
    func changeLabel(){
        var showLabel = "The colour of the bird is "
        if colours.isEmpty{
            colourLabel.text = "Please choose the colour of the bird"
        }else{
            for i in 0..<colours.count{
                showLabel += (colours[i] + " ")
            }
            colourLabel.text = showLabel
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "colourToSize"
        {
            let controller = segue.destination as! SizePickerView
            
            controller.colours = self.colours
        }
    }
    
    
    
    
    
}
