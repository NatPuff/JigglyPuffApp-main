//
//  MoveViewModel.swift
//  JigglyPuffApp
//
//  Created by Cesar Pacheco on 10/31/21.
//

import SwiftUI


class MoveViewModel: ObservableObject {
    @Published var move = [MoveData]()
    
    let apiURL = "https://firebasestorage.googleapis.com/v0/b/jigglypuff-frame-data.appspot.com/o/jigglypuff-frame-data-default-rtdb-export%20(3).json?alt=media&token=b1fe5a01-8fe0-4044-8e60-77bec60445dc"
    
    init(){
      fetchMoveData()
    }
    func fetchMoveData(){
        guard let url = URL(string: apiURL) else {return}
        let session = URLSession.shared
        let task = session.dataTask(with: url) {(data, response, error) in
            guard let cleanData = data?.parseData(removeString: "null,") else {return}
            
            
            DispatchQueue.main.async {
                do{
                    let move = try JSONDecoder().decode([MoveData].self, from: cleanData)
                    self.move = move
                }catch{
                    print("error msg:", error)
                }
            }
        }
        task.resume()
    }
}


extension Data{
    func parseData(removeString string: String) -> Data? {
        let dataAsString = String(data: self, encoding: .utf8)
        let ParseDataString = dataAsString?
            .replacingOccurrences(of: string, with: "")
        guard let data = ParseDataString?.data(using: .utf8)
        else {return nil}
        return data
    }
}
