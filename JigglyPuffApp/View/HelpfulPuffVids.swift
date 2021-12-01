//
//  HelpfulPuffVids.swift
//  JigglyPuffApp
//
//  Created by Cesar Pacheco on 11/12/21.
//

import SwiftUI
import WebKit

struct HelpfulPuffVids: View {
    let idList = ["488eCmNb5hs", "rf148MVlP4o", "yfFT19Bg0Sw" ]
    let gridItems = [GridItem(.flexible())]
    var body: some View {
        
        List(){
        PuffVidView(videoID: "488eCmNb5hs" )
                .scaledToFit()
            .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.5)
            .cornerRadius(12)
            PuffVidView(videoID: "rf148MVlP4o")
                .scaledToFit()
            .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.5)
            .cornerRadius(12)
            PuffVidView(videoID: "yfFT19Bg0Sw")
                .scaledToFit()
            .frame(minHeight: 0, maxHeight: UIScreen.main.bounds.height * 0.5)
            .cornerRadius(12)
        }
        
        }
    }
       

struct HelpfulPuffVids_Previews: PreviewProvider {
    static var previews: some View {
        HelpfulPuffVids()
    }
}
