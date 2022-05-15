//
//  LargeTableViewController.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/15/22.
//

import Foundation
import UIKit

class LargeTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    let viewModel = RandomFactsViewModel(numItems: 500)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
}

extension LargeTableViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "itemTableViewCell", for: indexPath) as? ItemTableViewCell else {
            return UITableViewCell()
        }
        
        guard let item = self.viewModel.item(at: indexPath.row) else {
            return UITableViewCell()
        }
        
        cell.configure(with: item)
        return cell
    }
    
    
}
