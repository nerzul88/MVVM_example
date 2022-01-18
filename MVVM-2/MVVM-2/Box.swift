//
//  Box.swift
//  MVVM-2
//
//  Created by Александр Касьянов on 18.01.2022.
//

import Foundation

class Box<T> {
    
    typealias Listener = (T) -> ()
    
    var listener: Listener?
    
    //значение, за которым наблюдает наблюдатель
    var value: T {
        //как толко меняется listener, передаём в него значение
        didSet {
            listener?(value)
        }
    }
    
    //связываемся с наблюдателем
    func bind(listener: @escaping Listener) {
        self.listener = listener
        listener(value)
    }
    
    init(_ value: T) {
        self.value = value
    }
}
