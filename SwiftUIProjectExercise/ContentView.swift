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
                    ExtractedView_forCell(mood_var: mood)
                    
                   
                    
                }.cornerRadius(20).border(Color.red, width: 0.5).padding()
                
                
            
                
               
            }
        }
     
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ExtractedView_forCell: View {
    let mood_var: Moods_per_Person
    var body: some View {
        HStack{
            
            Image("personIcon").resizable().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).cornerRadius(10)
            VStack(alignment: .leading){
                
                Text(mood_var.name).bold()
                Text("Anger:\(mood_var.Anger)")
                Text("Happiness:\(mood_var.happiness)")
                Text("Sadness:\(mood_var.sadness)")
                
                
            }.multilineTextAlignment(.leading)
            
            
        }.cornerRadius(30
        )
    }
}
