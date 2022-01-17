//
//  ViewController.swift
//  MVVM-1
//
//  Created by Александр Касьянов on 17.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel: ViewModel! {
        didSet {
            self.nameLabel.text = viewModel.name
            self.secondNameLabel.text = viewModel.secondName
            self.ageLabel.text = viewModel.age
        }
    }
    
//    var profile: Profile? {
//        didSet {
//            guard let profile = profile else {return}
//
//            self.nameLabel.text = profile.name
//            self.secondNameLabel.text = profile.secondName
//            self.ageLabel.text = "\(profile.age)"
//        }
//    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var secondNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        profile = Profile(name: "John", secondName: "Smith", age: 33)
        viewModel = ViewModel()
    }


}

