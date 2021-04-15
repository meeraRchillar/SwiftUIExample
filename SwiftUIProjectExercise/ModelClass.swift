//
//  ModelClass.swift
//  SwiftUIProjectExercise
//
//  Created by Meera on 15/04/21.
//

import Foundation

struct Moods_per_Person {
    var name: String
    var happiness: String
    var sadness: String
    var Depression: String
    var Anger: String
}

extension Moods_per_Person {
 static func getAllMoods() -> [Moods_per_Person] {
        
        return [
            Moods_per_Person(name: "Meera", happiness: "I am Happy", sadness: "I am not sad", Depression: "Not Depressed", Anger: "At times"),
            Moods_per_Person(name: "House", happiness: "I am Super Happy", sadness: "Attimes", Depression: "Not Depressed", Anger: "At times"),
            Moods_per_Person(name: "Chase", happiness: "I am not Happy", sadness: "I am sad", Depression: "Not Depressed", Anger: "At times"),
            Moods_per_Person(name: "Freeman", happiness: "I am not Happy", sadness: "I am sad", Depression: "I am Depressed", Anger: "Always")
        
        ]
        
    }
    
}
