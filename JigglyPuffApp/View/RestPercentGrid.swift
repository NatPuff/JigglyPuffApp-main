//
//  RestPercentGrid.swift
//  JigglyPuffApp
//
//  Created by Cesar Pacheco on 11/5/21.
//

import SwiftUI

struct RestPercentGrid: View {
    let restData: RestData
    let restViewModel: RestViewModel
    
    init(restData: RestData, restViewModel: RestViewModel){
        self.restData = restData
        self.restViewModel = restViewModel
    }
    var body: some View {
        VStack{
            Text(restData.Character)
                .font(.title2)
                .fontWeight(.bold)
                
        }
        .padding()
        HStack{
            Text("BF: " + String(restData.BF))
                .padding(.trailing)
            Text("BF plat: " + String(restData.BFplat))
                .padding(.trailing)
            Text("FD: " + String(restData.FD))
                .padding(.trailing)
            Text("SBF plat: " + String(restData.SBFplat))
                .padding()
         
        }
    }
}

//struct RestPercentGrid_Previews: PreviewProvider {
//    static var previews: some View {
//        RestPercentGrid()
//    }
//}
