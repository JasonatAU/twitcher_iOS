//
//  Bird.swift
//  Birds v1.0
//
//  Created by Qiuye Jin on 25/3/17.
//  Copyright © 2017 Qiuye Jin. All rights reserved.
//

import Foundation

class Bird{
    var ID:Int
    var commonName:String
    var scientificName:String
    var description:String
    var voiceLink:String
    var colourList:[String]
    var pictureList:[String]
    
    init(newID: Int, newCommonName:String, newScientificName:String, newDescription:String, newVoiceLink:String,newColourList:[String], newPictureList:[String]) {
        ID = newID
        commonName = newCommonName
        scientificName = newScientificName
        description = newDescription
        voiceLink = newVoiceLink
        colourList = newColourList
        pictureList = newPictureList
    }
    
    init(){
        ID = 0
        commonName = ""
        scientificName = ""
        description = ""
        voiceLink = ""
        colourList = [""]
        pictureList = [""]
    }
    
    
    
}
