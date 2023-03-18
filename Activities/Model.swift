//
//  Model.swift
//  Activities
//
//  Created by Александра Маслова on 18.03.2023.
//

import Foundation

struct Bored: Codable {
    let activity: String?
    let type: String?
    let participants: Int?
}


class ActivityFether: ObservableObject {
    @Published var activity = [Bored]()
    
    func fetch() {
        let url = URL(string: "http://www.boredapi.com/api/activity")!
        let task = URLSession.shared.dataTask(with: url) {data, response, error in
            let decoder = JSONDecoder()
            
            if let data = data {
                do {
                    let activity = try decoder.decode(Bored.self, from: data)
                    print(activity)
                } catch {
                    print(error)
                }
                
            }
        }
        task.resume()
    }
}


