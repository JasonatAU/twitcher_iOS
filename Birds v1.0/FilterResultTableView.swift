//
//  FilterResultTableView.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 1/4/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import Foundation
import UIKit
class FilterResultTableView: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var colours = [String]()
    var size = ""
    var resultList = [Bird]()
    
    let cellReuseIdentifier = "birdCellForResult"
    var birdBrain = BirdBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBirdList()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func setBirdList(){
        //resultList = BirdBrain.generateBirdList()
        resultList = BirdBrain.filterBirds(colours:colours,size:size)
    }
    
    func tableView(_ tableView:UITableView, numberOfRowsInSection section: Int) -> Int{
        return resultList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellReuseIdentifier)!
        let birdForRow = resultList[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = birdForRow.commonName
        cell.detailTextLabel?.text = birdForRow.scientificName
        cell.imageView?.image = UIImage(named: birdForRow.pictureList[0])
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell
        
    }

}
