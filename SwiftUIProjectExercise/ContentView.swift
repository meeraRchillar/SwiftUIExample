//
//  ContentView.swift
//  SwiftUIProjectExercise
//
//  Created by Meera on 15/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack{
            Text("Peace").bold().font(.largeTitle).foregroundColor(.blue)
            
            Image("BackGround").resizable().aspectRatio(contentMode: .fit).cornerRadius(30).padding(.all)
            
            Text("Find Peace")
            Text("Change")
            
            HStack{
                Text("Live")
                Text("Live1")
                Text("The Moment")
            }
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
