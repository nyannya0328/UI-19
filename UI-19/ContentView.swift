//
//  ContentView.swift
//  UI-19
//
//  Created by にゃんにゃん丸 on 2020/10/14.
//

import SwiftUI

struct ContentView: View {
    
    let Girls:[Girl] = [

        .init(id: 0, name: "AB", image: "image1"),
        .init(id: 1, name: "CD", image: "image2"),
        .init(id: 2, name: "EF", image: "image3"),
        .init(id: 3, name: "GH", image: "image4"),
        .init(id: 4, name: "IJ", image: "image5"),
        .init(id: 5, name: "KL", image: "image6"),
        .init(id: 6, name: "MN", image: "image7")
    
    
    ]
    
    
    var body: some View {
        NavigationView{
            
            List{
                
                
               
                    ForEach(Girls){Girl in
                      
                        
                        
                        HStack {
                            NavigationLink(
                                destination: Next(girl: Girl)){
                               
                                    
                                
                                Image(Girl.image).resizable().frame(width: 50, height: 50)
                                    .cornerRadius(30)
                        
                            
                                Text(Girl.name)
                                    .padding(.leading,30)
                                
                                
                                
                                }
                            
                            
                           
                        }
                        
                        
                       
                        
                        
                        
                    }.frame(height: 60)
                
                
                
                
                
            }.navigationBarTitle("アルファベット")
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct Girl : Identifiable {
    var id : Int
    var name : String
    var image : String
}


struct Next : View {
    
    
    let girl : Girl
    var body: some View {
        
        NavigationView{
        
        
            
            VStack{
        Image(girl.image)
            .resizable()
            .frame(width: 400, height: 400)
            .cornerRadius(30)
        
        
        Text(girl.name)
            .font(.system(size: 100, weight: .heavy))
            .foregroundColor(Color(#colorLiteral(red: 0.6392872432, green: 0.3414758134, blue: 0.7516320634, alpha: 1)))
            }
      
        }.navigationBarTitle("Girl",displayMode: .inline)
        
    }
}
