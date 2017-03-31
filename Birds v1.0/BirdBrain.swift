//
//  BirdBrain.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 25/3/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import Foundation
class BirdBrain{
    
    var birdList = [Bird]()
    
    func createBirdList () {
        birdList.append(Bird(newID: 1, newCommonName: "aaa", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Red", "Blue"], newPictureList:["bird1.png"]))
        birdList.append(Bird(newID: 2, newCommonName: "bbb", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Red", "Yellow"], newPictureList:["bird2.png"]))
        birdList.append(Bird(newID: 3, newCommonName: "ccc", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Red", "Orange"], newPictureList:["bird3.png"]))
        birdList.append(Bird(newID: 4, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird4.png"]))
        birdList.append(Bird(newID: 5, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird5.png"]))
        birdList.append(Bird(newID: 6, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird6.png"]))
        birdList.append(Bird(newID: 7, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird7.png"]))
        birdList.append(Bird(newID: 8, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird8.png"]))
        birdList.append(Bird(newID: 9, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird9.png"]))
        
        
    }
    
    init (){
        birdList = [Bird]()
        createBirdList()
    }
    
    func getBirdList() -> [Bird]{
        return birdList
    }
    
    func setBirdList(newBirdList: [Bird]){
        birdList = newBirdList
    }
    
    class func generateBirdList() -> [Bird]{
        var list = [Bird]()
        
        list.append(Bird(newID: 1, newCommonName: "Southern cassowary", newScientificName: "Casuarius casuarius", newDescription: "aaaxxx", newColourList: ["Red", "Blue"], newPictureList:["bird1.png","bird2.png"]))
        list.append(Bird(newID: 2, newCommonName: "Common pheasant", newScientificName: "Phasianus colchicus", newDescription: "aaaxxx", newColourList: ["Red", "Yellow"], newPictureList:["bird2.png","bird2.png"]))
        list.append(Bird(newID: 3, newCommonName: "Radjah shelduck", newScientificName: "Tadorna radjah", newDescription: "aaaxxx", newColourList: ["Red", "Orange"], newPictureList:["bird3.png","bird2.png"]))
        list.append(Bird(newID: 4, newCommonName: "White-tailed tropicbird", newScientificName: "Phaethon lepturus", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird4.png","bird2.png"]))
        list.append(Bird(newID: 5, newCommonName: "Southern cassowary", newScientificName: "Casuarius casuarius", newDescription: "aaaxxx", newColourList: ["Red", "Blue"], newPictureList:["bird5.png","bird2.png"]))
        list.append(Bird(newID: 6, newCommonName: "Common pheasant", newScientificName: "Phasianus colchicus", newDescription: "aaaxxx", newColourList: ["Red", "Yellow"], newPictureList:["bird6.png"]))
        list.append(Bird(newID: 7, newCommonName: "Radjah shelduck", newScientificName: "Tadorna radjah", newDescription: "aaaxxx", newColourList: ["Red", "Orange"], newPictureList:["bird7.png"]))
        list.append(Bird(newID: 8, newCommonName: "White-tailed tropicbird", newScientificName: "Phaethon lepturus", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird8.png"]))
        list.append(Bird(newID: 9, newCommonName: "White-tailed tropicbird", newScientificName: "Phaethon lepturus", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird9.png"]))
        
        
        return list
    }
    
    
}
