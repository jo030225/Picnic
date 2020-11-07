//
//  SearchViewController.swift
//  GSM
//
//  Created by 조주혁 on 2020/11/05.
//

import UIKit

class SearchViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = AppStoreItemTableViewCell()
        
        cell.updateConstraintsIfNeeded()
        
        return cell
    }

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.delegate = self
            tableView.dataSource = self

        }
    }
}
