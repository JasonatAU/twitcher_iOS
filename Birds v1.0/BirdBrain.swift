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
//        birdList.append(Bird(newID: 1, newCommonName: "aaa", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Red", "Blue"], newPictureList:["bird1.png"]))
//        birdList.append(Bird(newID: 2, newCommonName: "bbb", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Red", "Yellow"], newPictureList:["bird2.png"]))
//        birdList.append(Bird(newID: 3, newCommonName: "ccc", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Red", "Orange"], newPictureList:["bird3.png"]))
//        birdList.append(Bird(newID: 4, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird4.png"]))
//        birdList.append(Bird(newID: 5, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird5.png"]))
//        birdList.append(Bird(newID: 6, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird6.png"]))
//        birdList.append(Bird(newID: 7, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird7.png"]))
//        birdList.append(Bird(newID: 8, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird8.png"]))
//        birdList.append(Bird(newID: 9, newCommonName: "ddd", newScientificName: "aaa aaa", newDescription: "aaaxxx", newColourList: ["Black", "Blue"], newPictureList:["bird9.png"]))
//        
//        
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
        
        list.append(Bird(
            newID: 0,
            newCommonName: "Southern cassowary",
            newScientificName: "Casuarius casuarius",
            newSize:[150,190],
            newDescription: "Southern Cassowary is the second largest and tallest  bird after the Ostrich. This species differs in general facts by the female.  She has the criterions of most of the other species males, such as brighter  colours, really much larger size, and she does not share the nesting duties  with the male.",
            newVoiceLink:"http://www.xeno-canto.org/species/Casuarius-casuarius",
            newColourList: ["Black", "Blue", "Red"],
            newPictureList:["0_1.png","0_2.png","0_3.png","0_4.png","0_5.png","0_6.png","0_7.png","0_8.png","0_9.png","0_10.png"]))
        
        list.append(Bird(
            newID: 1,
            newCommonName: "Emu",
            newScientificName: "Dromaius novaehollandiae",
            newSize: [180,230],
            newDescription: "The Emu is  a flightless bird, but the long, powerful legs make it well adapted for walking  and running over wide areas. This is the second largest living bird, after the Ostrich.",
            newVoiceLink:"http://www.xeno-canto.org/species/Dromaius-novaehollandiae",
            newColourList: ["Brown"],
            newPictureList:["1_0.png","1_1.png","1_2.png","1_3.png","1_5.png","1_6.png","1_7.png","1_8.png"]))
        
        list.append(Bird(
            newID: 10,
            newCommonName: "Indian peafowl",
            newScientificName: "Pavo cristatus",
            newSize:[75,89],
            newDescription: "The Indian Peafowl is the National Bird of India where  this superb bird is sacred and very prominent in mythology and folklore of  Indian people. Several legends tell numerous wonderful stories about this  beautiful bird. Thanks to its beauty and popularity, the species has been  protected both in its native and introduced ranges. Very common in India, the Indian Peafowl is found in  almost all villages and protected under Indian Wildlife Protection act, 1972.",
            newVoiceLink:"http://www.xeno-canto.org/species/Pavo-cristatus",
            newColourList: ["Blue", "Green"],
            newPictureList:["10_8.png","10_7.png"]))
        
        list.append(Bird(
            newID: 13,
            newCommonName: "Common pheasant",
            newScientificName: "Phasianus colchicus",
            newSize: [53,89],
            newDescription: "Common Pheasant adult male (or cock) has rich chestnut  plumage, with golden-brown, black and pale blue markings on body. The very long  tail is golden-brown barred with black. The lower back varies from chestnut, to  pale blue and purple. Underparts are golden-chestnut with dark markings.  Vent and undertail coverts are dark chestnut.",
            newVoiceLink:"http://www.xeno-canto.org/species/Phasianus-colchicus",
            newColourList: ["Brown", "Tan"],
            newPictureList:["13_0.png","13_1.png","13_2.png","13_3.png","13_4.png","13_5.png","13_6.png","13_7.png","13_8.png"]))
        
        list.append(Bird(
            newID: 16,
            newCommonName: "Magpie gooseeee",
            newScientificName: "Anseranas semipalmataeeee",
            newSize:[130,180],
            newDescription: "The Magpie  Goose is a very peculiar species, usually more terrestrial than other Anseriformes.This bird is a mix of  duck and goose by its appearance, but actually, it is more often considered an  evolutionary link between the Anatidae species and the more terrestrial screamers of the family Anhimidae. It is  the only member of the family Anseranatidae, closer to screamers than ducks and  geese.",
            newVoiceLink:"",
            newColourList: ["Black", "White"],
            newPictureList:["16_0.png","16_1.png","16_2.png","16_3.png","16_4.png","16_5.png","16_6.png"]))
        
        list.append(Bird(
            newID: 20,
            newCommonName: "Musk duck",
            newScientificName: "Biziura lobata",
            newSize:[61,73],
            newDescription: "Musk Duck is an endemic Australian bird species and  the largest of Australian ducks. Male is larger than female. Its name comes  from the strong musk odour produced by a gland on the rump.",
            newVoiceLink:"",
            newColourList: ["Brown"],
            newPictureList:["20_0.png","20_1.png","20_2.png","20_3.png","20_4.png"]))
        
        
        list.append(Bird(
            newID: 22,
            newCommonName: "Cape Barren goose",
            newScientificName: "Cereopsis novaehollandiae",
            newSize:[75,100],
            newDescription: "The Cape  Barren Goose was nearly extinct by the 1950s. This Australian primitive goose,  endemic to Australia, has been considered first as an aberrant shelduck, and  then as the immature phase of the Black Swan. This species  is now the unique member of the genus Cereopsis.",
            newVoiceLink:"http://www.xeno-canto.org/species/Cereopsis-novaehollandiae",
            newColourList: ["Grey"],
            newPictureList:["22_0.png","22_1.png","22_2.png","22_3.png","22_4.png","22_5.png","22_6.png"]))

        
        list.append(Bird(
            newID: 23,
            newCommonName: "Black swan",
            newScientificName: "Cygnus atratus",
            newSize:[110,140],
            newDescription: "The Black  Swan is the emblem of Western Australia. Its black silhouette appears in the  Coat of Arms of the state.",
            newVoiceLink:"",
            newColourList: ["Grey"],
            newPictureList:["23_0.png","23_1.png","23_2.png","23_3.png","23_4.png","23_5.png","23_6.png"]))

        
        list.append(Bird(
            newID: 24,
            newCommonName: "Mute swan",
            newScientificName: "Cygnus olor",
            newSize: [125,160],
            newDescription: "The Mute Swan is an integral part of our urban parks  and of most of the waters in our regions. But this beautiful white bird is originally  a wild animal, with not always compatible behaviour and habits with the life in  city parks.When the breeding season starts, the male becomes  aggressive because it defends its family. We have to be careful and to make a  detour if we find a nest close to the path.",
            newVoiceLink:"",
            newColourList: ["White"],
            newPictureList:["24_0.png","24_1.png","24_2.png","24_3.png","24_4.png","24_5.png","24_6.png"]))
        
        
        list.append(Bird(
            newID: 25,
            newCommonName: "Canada goose",
            newScientificName: "Branta canadensis",
            newSize:[55,110],
            newDescription: "",
            newVoiceLink:"",
            newColourList: ["Brown"],
            newPictureList:["25_0.png","25_1.png"]))
        
        
        
        return list
    }
    
    class func filterBirds(colours:[String], size:String) -> [Bird]{
        
        var minimam = 0;
        var maximam = 0;
        
        switch size {
        case "Small":
            minimam = 0
            maximam = 20
        case "Medium":
            minimam = 21
            maximam = 50
        case "Big":
            minimam = 101
            maximam = 150
        case "Huge":
            minimam = 151
            maximam = 500
        default:
            minimam = 0
            maximam = 1000
        }
        
        var resultList = [Bird]()
        var afterSize = [Bird]()
        var fullList = BirdBrain.generateBirdList()
        for i in 0..<fullList.count{
            if Set(fullList[i].colourList).isSuperset(of: Set(colours)){
                resultList.append(fullList[i])
            }
        }
        
        for j in 0..<resultList.count{
            if resultList[j].size[0] > minimam && resultList[j].size[1] < maximam{
                afterSize.append(resultList[j])
            }
        }
        
        for k in 0..<resultList.count{
            if resultList[k].size[0] < minimam && resultList[k].size[1] < maximam && resultList[k].size[1] > minimam{
                afterSize.append(resultList[k])
            }
        }
        
        for l in 0..<resultList.count{
            if resultList[l].size[0] > minimam && resultList[l].size[0] < maximam && resultList[l].size[1] > maximam{
                afterSize.append(resultList[l])
            }
        }
        
        return afterSize
    }
    
    
}
