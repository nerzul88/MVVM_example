//
//  DetailViewController.swift
//  MVVM-2
//
//  Created by Александр Касьянов on 18.01.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    var viewModel: DetailViewModelType?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //помещаем данные во viewModel
        guard let viewModel = viewModel else {return}
        self.textLabel.text = viewModel.description
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //связываем свойство age
        viewModel?.age.bind { [unowned self] in
            guard let string = $0 else {return}
            
            self.textLabel.text = string
        }
        
        //обновляем ярлык
        delay(delay: 5) { [unowned self] in
            self.viewModel?.age.value = "some new value"
        }
    }
    
    //делаем отсрочку выполнение closure
    private func delay(delay: Double, closure: @escaping () -> ()) {
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + delay) {
            closure()
        }
    }

}
