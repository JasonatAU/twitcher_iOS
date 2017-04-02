//
//  Bird.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 25/3/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import Foundation

class Bird:Equatable{
    var ID:Int
    var commonName:String
    var scientificName:String
    var size:[Int]
    var description:String
    var voiceLink:String
    var colourList:[String]
    var pictureList:[String]
    
    init(newID: Int, newCommonName:String, newScientificName:String, newSize:[Int], newDescription:String, newVoiceLink:String,newColourList:[String], newPictureList:[String]) {
        ID = newID
        commonName = newCommonName
        scientificName = newScientificName
        size = newSize
        description = newDescription
        voiceLink = newVoiceLink
        colourList = newColourList
        pictureList = newPictureList
    }
    
    init(){
        ID = 0
        commonName = ""
        scientificName = ""
        size = [0, 0]
        description = ""
        voiceLink = ""
        colourList = [""]
        pictureList = [""]
    }
    
    static func == (lhs: Bird, rhs: Bird) -> Bool {
        return lhs.commonName == rhs.commonName
    }
    
    
    
}
