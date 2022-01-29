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
        NavigationView {
        VStack{

            print("Test")
            Image("BackGround").resizable().aspectRatio(contentMode: .fit).cornerRadius(30).padding(.all)
            
            Text("Survey")
            Text("Samples").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            
            HStack{
               

                List(self.mood_per_person,id: \.name){ mood in
                  
                   
                    ExtractedView_forCell(mood_var: mood)
                    NavigationLink("", destination:PeaceCellDetailView(peaceDetails: mood))
                    
                   
                }
            
                }.cornerRadius(20).border(Color.red, width: 0.5).padding()
                
              
          
        }
        .navigationBarTitle("Find Peace")
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
            
            Image("personIcon").resizable().frame(width: 50, height: 50).cornerRadius(5)
            VStack(alignment: .leading){
                
                Text(mood_var.name).bold()
               
                
                
            }
            
            
        }.cornerRadius(30
        )
    }
}
