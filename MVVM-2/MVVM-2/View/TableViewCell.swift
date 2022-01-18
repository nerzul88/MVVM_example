//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by Александр Касьянов on 18.01.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        //перед установкой viewModel берём значения и помещаем в label
        willSet(viewModel) {
            guard let viewModel = viewModel else {return}
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }
}
