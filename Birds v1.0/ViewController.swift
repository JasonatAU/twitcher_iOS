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

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        let scroll: UIPanGestureRecognizer = UIPanGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        scroll.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        view.addGestureRecognizer(scroll)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}


class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource,UISearchBarDelegate {
    @IBOutlet weak var tableView: UITableView!

    //@IBOutlet weak var searchBar: UISearchBar!
    
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
        self.hideKeyboardWhenTappedAround()
    }
    
    func searchBarSetup(){
        //let searchBar = UISearchBar(frame:CGRect(x: 0, y: 0, width: (UIScreen.main.bounds.width), height: 70))
        //searchBar.showsScopeBar = true
        //searchBar.scopeButtonTitles = ["Common Name", "Scientific Name"]
        searchBar.selectedScopeButtonIndex = 0
        searchBar.delegate = self
        searchBar.setShowsCancelButton(true, animated: true)
        //self.tableView.tableHeaderView = searchBar
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
        
        var birdByCommonName = birdList.filter({ (aBird) -> Bool in
            
            return aBird.commonName.lowercased().contains(text.lowercased())
            
        })
        
        var birdByScientificName = birdList.filter({ (aBird) -> Bool in
            
            return aBird.scientificName.lowercased().contains(text.lowercased())
            
        })
        
        var repeatBirds = [Int]()
        
        for i in 0..<birdByCommonName.count{
            if birdByScientificName.contains(birdByCommonName[i]) {
                repeatBirds.append(i)
            }
        }
        
        for i in 0..<repeatBirds.count{
            birdByCommonName.remove(at: (repeatBirds.count-i-1))
        }
        
        birdList = birdByCommonName + birdByScientificName
        //birdList = Array(Set<Bird>(birdList))
        self.tableView.reloadData()
        
        
//        switch ind {
//        case selectedScope.commonName.rawValue:
//            birdList = birdList.filter({ (aBird) -> Bool in
//                return aBird.commonName.lowercased().contains(text.lowercased())
//            })
//            self.tableView.reloadData()
//            print("after search \(birdList.count)")
//            //birdList = BirdBrain.generateBirdList()
//            //print(birdList.count)
//        case selectedScope.scientificName.rawValue:
//            birdList = birdList.filter({ (aBird) -> Bool in
//                return aBird.scientificName.lowercased().contains(text.lowercased())
//            })
//            self.tableView.reloadData()
//            //birdList = BirdBrain.generateBirdList()
//        default:
//            print("no type")
//        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return birdList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: self.cellReuseIdentifier)!
        let birdForRow = birdList[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = birdForRow.commonName
        cell.detailTextLabel?.text = birdForRow.scientificName
        
        
        var rowImage = UIImage()
        var resultImage = UIImage()
        
        for i in 0..<birdForRow.pictureList.count{
            rowImage = UIImage(named: birdForRow.pictureList[i])!
            if Int(rowImage.size.width) > Int(rowImage.size.height){
                resultImage = rowImage
                if i == (birdForRow.pictureList.count - 1){
                    resultImage = UIImage(named: birdForRow.pictureList[0])!
                }
                break
            }
        }
        
        resultImage = resizeImage(image: resultImage, targetSize: CGSize(width: 375, height: 200))
        
        cell.imageView?.image = resultImage//UIImage(named: birdForRow.pictureList[0])
        
        
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

    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        
        let widthRatio  = targetSize.width  / image.size.width
        let heightRatio = targetSize.height / image.size.height
        
        // Figure out what our orientation is, and use that to form the rectangle
        var newSize: CGSize
        if(widthRatio > heightRatio) {
            newSize = CGSize(width: 300, height: 200)
            //newSize = CGSize(width: size.width * heightRatio, height: size.height * heightRatio)
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
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

