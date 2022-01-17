//
//  ViewModel.swift
//  MVVM-1
//
//  Created by Александр Касьянов on 17.01.2022.
//

import Foundation

class ViewModel {
    //т.к. связи с контроллером быть не должно, делаем уровень доступа private
    private var profile = Profile(name: "John", secondName: "Smith", age: 33)
    
    var name: String {
        return profile.name
    }
    var secondName: String {
        return profile.secondName
    }
    var age: String {
        return String(describing: profile.age)
    }
}
