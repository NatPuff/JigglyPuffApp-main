//
//  DetailView.swift
//  JigglyPuffApp
//
//  Created by Cesar Pacheco on 11/1/21.
//

import SwiftUI

struct DetailView: View {
    let moveData: MoveData
    let moveViewModel: MoveViewModel
    
    init(moveData: MoveData, moveViewModel: MoveViewModel){
        self.moveData = moveData
        self.moveViewModel = moveViewModel
    }
    
    var body: some View {
        ZStack {
            Color("NewColor").ignoresSafeArea()
            VStack{
            Text(moveData.move)
                    .font(.title)
                    .bold()
            GifImageView(moveData.gifName)
                    .ignoresSafeArea()
            .scaledToFit()
            .frame(minWidth: 0, minHeight: UIScreen.main.bounds.height * 0.3)
                ZStack{
                    Color("GoodColor").edgesIgnoringSafeArea(.all)
                ScrollView{
                    Spacer()
                        .frame(height: 15)
                Text("Base Damage: " + moveData.baseDamage)
                    .padding(5)
                Text("Start up: " + moveData.startup)
                    .padding(5)
                Text("Active on: " + moveData.activeOn)
                    .padding(5)
                Text("On shield: " + moveData.onShield)
                    .padding(5)
                Text("Shield stun: " + moveData.shieldStun)
                    .padding(5)
                Text("total frames: " + moveData.totalFrames)
                    .padding(5)
                Text("Shield lag: " + moveData.shieldLag)
                }
        
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.white)
                .cornerRadius(50.0)
                .edgesIgnoringSafeArea(.bottom)
            }
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
