//
//  TableViewCell.swift
//  aoka-TaskApp13
//
//  Created by aoka on 2021/04/26.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet private weak var checkImage: UIImageView!
    @IBOutlet private weak var memoLabel: UILabel!
    
    func configure(checkItem: CheckItem) {
        memoLabel.text = checkItem.name
        checkImage.image = UIImage(named: "oranngeCheck")
        checkImage.image = checkItem.isChecked ? UIImage(named: "oranngeCheck") : nil
    }
}
