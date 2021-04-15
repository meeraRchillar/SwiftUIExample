//
//  ContentView.swift
//  SwiftUIProjectExercise
//
//  Created by Meera on 15/04/21.
//

import SwiftUI

struct ContentView: View {
    
 
        let mood_per_person =  Moods_per_Person.getAllMoods()

   
    var body: some View {
       
        VStack{
            Text("Let us find Peace").bold().font(.largeTitle).foregroundColor(.blue)
            
            Image("BackGround").resizable().aspectRatio(contentMode: .fit).cornerRadius(30).padding(.all)
            
            Text("Survey")
            Text("Samples").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            HStack{
               

                List(self.mood_per_person,id: \.name){ mood in
                    VStack{
                        Text(mood.name).bold()
                        Text("Anger:\(mood.Anger)")
                        Text("Happiness:\(mood.happiness)")
                        Text("Sadness:\(mood.sadness)")
                        
                    }.multilineTextAlignment(.leading)
                   
                    
                }.cornerRadius(30).border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/).padding(.all)
                
                
              //  List(mood_per_person,id(\.name) as! KeyPath<Moods_per_Person, [Moods_per_Person]?>){ mood_per_person in Text(mood_per_person.name)
                    
                    
               // }
                
               
            }
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
