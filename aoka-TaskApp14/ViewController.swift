//
//  ViewController.swift
//  aoka-TaskApp13
//
//  Created by aoka on 2021/04/26.
//

import UIKit

struct CheckItem {
    var name: String
    var isChecked: Bool
}

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    private var checkItems:[CheckItem] = [
        CheckItem(name: "りんご", isChecked: false),
        CheckItem(name: "みかん", isChecked: true),
        CheckItem(name: "バナナ", isChecked: false),
        CheckItem(name: "パイナップル", isChecked: true)
    ]
    
    @IBAction func cansel(segue: UIStoryboardSegue) {
    }
    
    @IBAction func save(segue: UIStoryboardSegue) {
        if  let nextVC = segue.source as? NextViewController {
            if let nameText = nextVC.textField.text {
                checkItems.append(CheckItem(name: nameText, isChecked: false))
                tableView.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        checkItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"cell1", for: indexPath) as! TableViewCell
        
        cell.configure(checkItem: checkItems[indexPath.row])
        return cell
    }
}
