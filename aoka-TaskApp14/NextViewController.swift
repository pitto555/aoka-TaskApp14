//
//  NextViewController.swift
//  aoka-TaskApp13
//
//  Created by aoka on 2021/05/11.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet private weak var textField: UITextField!
    
    private(set) var name: String?
    
    @IBAction func didTapSaveButton(_ sender: Any) {
        name = textField.text
        performSegue(withIdentifier: "Save", sender: nil)
    }
}
