//
//  txtViewMaybe.swift
//  JigglyPuffApp
//
//  Created by Cesar Pacheco on 11/23/21.
//

import SwiftUI

struct txtViewMaybe: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TestView: View {
    @ObservedObject var model = Model()
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: PuffDoc(model: model)){ Text("License") }
            }.padding()
        }
    }
}

struct PuffDoc: View{
    @ObservedObject var model: Model
    var body: some View{
        ScrollView {
            VStack {
                Text(model.data).frame(maxWidth: .infinity)
            }
        }.padding()
        .navigationBarTitle("Bass Mage Mu Advice")
        
    }
}

class Model: ObservableObject {
    @Published var data: String = ""
    init() { self.load(file: "PuffDocv3") }
    func load(file: String) {
        if let filepath = Bundle.main.path(forResource: file, ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filepath)
                DispatchQueue.main.async {
                    self.data = contents
                }
            } catch let error as NSError {
                print(error.localizedDescription)
            }
        } else {
            print("File not found")
        }
    }
}









struct txtViewMaybe_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
