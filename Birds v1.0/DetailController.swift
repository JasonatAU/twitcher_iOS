//
//  DetailController.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 25/3/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import Foundation
import UIKit

class DetailController: UIViewController{
//,UITableViewDelegate, UITableViewDataSource {
    
    var birdID = 0
    
    func setBirdID(newBirdID:Int){
        birdID = newBirdID
    }
    
    let cellReuseIdentifier = "detailCell"
    
    
}
