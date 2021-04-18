//
//  PeaceCellDetailView.swift
//  SwiftUIProjectExercise
//
//  Created by Meera on 18/04/21.
//

import SwiftUI

struct PeaceCellDetailView: View {
    let peaceDetails: Moods_per_Person
    
    @State private var zoomFlag: Bool = false
    var body: some View {
    VStack {
        Image("BackGround").resizable().aspectRatio(contentMode: self.zoomFlag ? .fill: .fit).onTapGesture {
            withAnimation {
                self.zoomFlag.toggle()
            }
           
        }
            
            Text(peaceDetails.Anger)
            Text(peaceDetails.Depression)
            Text(peaceDetails.happiness)
            Text(peaceDetails.sadness)
    }.navigationBarTitle(peaceDetails.name,displayMode: .inline)
    }
    
   
}

struct PeaceCellDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PeaceCellDetailView(peaceDetails: Moods_per_Person(name: "NameNew", happiness: "NewHappiness", sadness: "New Sadness", Depression: "NewDepresseion", Anger: "NewAnger"))
    }
}
