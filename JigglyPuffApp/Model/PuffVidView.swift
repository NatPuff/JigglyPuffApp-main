//
//  PuffVidView.swift
//  JigglyPuffApp
//
//  Created by Cesar Pacheco on 11/12/21.
//

import SwiftUI
import WebKit

struct PuffVidView: UIViewRepresentable {
    
    
    let videoID: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)") else {return}
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}

//struct PuffVidView_Previews: PreviewProvider {
//    static var previews: some View {
//        PuffVidView()
//    }
//}
