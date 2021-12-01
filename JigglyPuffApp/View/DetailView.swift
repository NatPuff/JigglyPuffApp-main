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
        VStack{
        Text(moveData.move)
                .font(.title)
                .bold()
        GifImageView(moveData.gifName)
        .scaledToFit()
        .padding()
            Text("Base Damage: " + moveData.baseDamage)
         
            Text("Start up: " + moveData.startup)
            
            Text("Active on: " + moveData.activeOn)
               
            Text("On shield: " + moveData.onShield)
               
            Text("Shield stun: " + moveData.shieldStun)
                
            Text("total frames: " + moveData.totalFrames)
              
            Text("Shield lag: " + moveData.shieldLag)
    
            
        }
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView()
//    }
//}
