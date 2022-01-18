//
//  DetailViewModel.swift
//  MVVM-2
//
//  Created by Александр Касьянов on 18.01.2022.
//

import Foundation

class DetaiViewModel: DetailViewModelType {
    
    private var profile: Profile
    
    var description: String {
        return String(describing: "\(profile.name) \(profile.secondName) is \(profile.age) age old")
    }
    
    var age: Box<String?> = Box(nil)    
    
    init(profile: Profile) {
        self.profile = profile
    }
}
