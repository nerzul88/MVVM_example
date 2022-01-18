//
//  DetailViewModelType.swift
//  MVVM-2
//
//  Created by Александр Касьянов on 18.01.2022.
//

import Foundation

protocol DetailViewModelType {
    var description: String {get}
    var age: Box<String?> {get}
}
