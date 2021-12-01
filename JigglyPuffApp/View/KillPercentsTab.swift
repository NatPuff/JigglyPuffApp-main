//
//  KillPercentsTab.swift
//  JigglyPuffApp
//
//  Created by Cesar Pacheco on 11/7/21.
//

import SwiftUI

struct KillPercentsTab: View {
    @ObservedObject var model: Model
    var body: some View {
        NavigationView{
            
            ZStack {
                Image("Puff background")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 550, height: 820)
                    .ignoresSafeArea()
                VStack{
                    NavigationLink(destination: PuffDoc(model: model))
                    { Text("MU Advice Doc")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                    
                    
                NavigationLink(destination: UpThrowKillPercents()){
                Button(action: {
                    
                }){
                }
                    Text("Up Throw Kill Percents")
                        .foregroundColor(Color.black)
                        .bold()
                }
                .padding()
                
                NavigationLink(destination: RestKillView()){
                    Button(action: {
                        
                    }){
                        
                    }
                    VStack{
          
                    Text("Rest Kill Percents")
                            .foregroundColor(Color.black)
                            .bold()
                    }
                    .padding()
                    
                    
                    
                }
                    Spacer()
                        .frame(height: 350, alignment: .bottom)
                }
             
                .navigationTitle("Puff Documents!")
            }
        }
    }
}

struct KillPercentsTab_Previews: PreviewProvider {
    static var previews: some View {
        KillPercentsTab(model: .init())
    }
}
