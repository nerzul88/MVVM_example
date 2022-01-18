//
//  NetworkManager.swift
//  MVVM-3
//
//  Created by Александр Касьянов on 18.01.2022.
//

import Foundation

class NetworkManager: NSObject {
    
    func fetchMovies(completion: ([String]) -> ()) {
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
    
}
