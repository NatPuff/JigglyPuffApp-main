//
//  TBagView.swift
//  JigglyPuffApp
//
//  Created by Cesar Pacheco on 11/5/21.
//

import SwiftUI

struct MainView: View {
    @ObservedObject var model: Model
    @State var crouchShow = false
    var body: some View {
        
        TabView{
            ZStack {
                VStack{
                Image("pink background")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 900, height: 860)
                Spacer()
                    .frame(height: 95)
                }
            Button(action: {
                crouchShow.toggle()
            }){
                if crouchShow == false{
                   
             
                Image("yag")
                        .interpolation(.none)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    
                } else{
                    Image("SmoshPuff")
                        .interpolation(.none)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }
            }
                
                
                
            }
        
        .tabItem {
            Image("CoolPuff")
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
        }
            MovesList()
                .tabItem {
                    Image(systemName: "doc.plaintext")
                    Text("Puff")
                     
                }
                
                
            KillPercentsTab(model: model)
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Puff Docs")
                }
                
                
            HelpfulPuffVids()
                .tabItem{
                    Image(systemName: "play")
                    Text("Puff Guides")
                }
        }
        }
    }






struct MainView_Previews: PreviewProvider {
    @ObservedObject var model: Model
    static var previews: some View {
        MainView(model: .init())
    }
}


