//
//  ViewController.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 24/3/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import UIKit

enum selectedScope:Int {
    case commonName = 0
    case scientificName = 1
}


class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource,UISearchBarDelegate {
    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var searchBar: UISearchBar!
    let cellReuseIdentifier = "birdCell"
    var birdBrain = BirdBrain()
    var birdList = BirdBrain.generateBirdList()
    var chosenBird = Bird()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.searchBarSetup()
    }
    
    func searchBarSetup(){
        let searchBar = UISearchBar(frame:CGRect(x: 0, y: 0, width: (UIScreen.main.bounds.width), height: 70))
        searchBar.showsScopeBar = true
        searchBar.scopeButtonTitles = ["Common Name", "Scientific Name"]
        searchBar.selectedScopeButtonIndex = 0
        searchBar.delegate = self
        self.tableView.tableHeaderView = searchBar
        //self.view.addSubview(searchBar)
    }
    
    // MARK: - search bar delegate
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        
        birdList = BirdBrain.generateBirdList()
        
        if searchText.isEmpty {
            birdList = BirdBrain.generateBirdList()
            print("search bar is empty and the bird list has \(birdList.count)")
            self.tableView.reloadData()
        }else{
            filterTableView(ind: searchBar.selectedScopeButtonIndex, text: searchText)
            self.tableView.reloadData()
            //birdList = BirdBrain.generateBirdList()
        }
        
        
        //filterTableView(ind: searchBar.selectedScopeButtonIndex, text: searchText)
    }
    
    func filterTableView(ind:Int,text:String){
        switch ind {
        case selectedScope.commonName.rawValue:
            birdList = birdList.filter({ (aBird) -> Bool in
                return aBird.commonName.lowercased().contains(text.lowercased())
            })
            self.tableView.reloadData()
            print("after search \(birdList.count)")
            //birdList = BirdBrain.generateBirdList()
            //print(birdList.count)
        case selectedScope.scientificName.rawValue:
            birdList = birdList.filter({ (aBird) -> Bool in
                return aBird.scientificName.lowercased().contains(text.lowercased())
            })
            self.tableView.reloadData()
            //birdList = BirdBrain.generateBirdList()
        default:
            print("no type")
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return birdList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellReuseIdentifier)!
        let birdForRow = birdList[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = birdForRow.commonName
        cell.detailTextLabel?.text = birdForRow.scientificName
        cell.imageView?.image = UIImage(named: birdForRow.pictureList[0])
        cell.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell
        
    }
    
    @IBAction func goToDetail(){
        performSegue(withIdentifier: "BirdView", sender: self)
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenBird = birdList[(indexPath as NSIndexPath).row]
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cellSegue"
        {
            let controller = segue.destination as! BirdView
            if let selectedCell = sender as? UITableViewCell {
                let indexPath = tableView.indexPath(for: selectedCell)!
                let selectedItem = indexPath.row
                chosenBird = birdList[selectedItem]
                controller.bird = chosenBird
            }
            
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
    
}

