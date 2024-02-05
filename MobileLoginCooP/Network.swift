//
//  Network.swift
//  MobileLoginCooP
//
//  Created by eleman on 05/02/2024.
//

import Foundation
import Foundation

struct User: Decodable {
    
}

func requestPost(username: String, password: String, completion: @escaping (User?, String?) -> Void) {
    guard let url = URL(string: "https://dummyjson.com/auth/login") else {
        print("Invalid URL")
        completion(nil, "something went wrong")
        return
    }

    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error fetching data: \(error.localizedDescription)")
            completion(nil, "something went wrong")
            return
        }
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            print("Error: Invalid response")
            completion(nil, "something went wrong")
            return
        }
        guard let data = data else {
            print("Error: No data")
            completion(nil, "Error: no user")
            return
        }
        // Decode the JSON into the Post model
        do {
            let decoder = JSONDecoder()
            print("data", data)
            let postData = try decoder.decode(User.self, from: data)
            completion(postData, nil) // Pass the decoded data
        } catch {
            print("Error decoding JSON: \(error.localizedDescription)")
            completion(nil, error.localizedDescription)
        }
    }
    task.resume() // Starts the network request
}
