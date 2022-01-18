//
//  TableViewCellViewModelType.swift
//  MVVM-2
//
//  Created by Александр Касьянов on 18.01.2022.
//

import Foundation

protocol TableViewCellViewModelType: class {
    var fullName: String {get}
    var age: String {get}
}
