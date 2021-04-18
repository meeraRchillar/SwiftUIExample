//
//  PeaceCellDetailView.swift
//  SwiftUIProjectExercise
//
//  Created by Meera on 18/04/21.
//

import SwiftUI

struct PeaceCellDetailView: View {
    let peaceDetails: Moods_per_Person
    fileprivate func extractedFunc() -> VStack<TupleView<(Image, Text, Text, Text, Text, Text)>> {
        return VStack {
            Image("BackGround")
            Text(peaceDetails.name)
            Text(peaceDetails.Anger)
            Text(peaceDetails.Depression)
            Text(peaceDetails.happiness)
            Text(peaceDetails.sadness)
        }
    }
    
    var body: some View {
        extractedFunc()
    }
}

struct PeaceCellDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PeaceCellDetailView(peaceDetails: Moods_per_Person(name: "NameNew", happiness: "NewHappiness", sadness: "New Sadness", Depression: "NewDepresseion", Anger: "NewAnger"))
    }
}
