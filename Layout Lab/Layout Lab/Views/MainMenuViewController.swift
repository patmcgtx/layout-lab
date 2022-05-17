//
//  ViewController.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/14/22.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private let viewModel = MainMenuViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
}

extension MainMenuViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.viewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let item = self.viewModel.item(at: indexPath.row), indexPath.section == 0 else {
            return UITableViewCell()
        }
        
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "itemTableCell", for: indexPath) as? ItemTableViewCell else {
            return UITableViewCell()
        }
        
        cell.configure(with: item)
        return cell
    }
    
}

extension MainMenuViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let item = self.viewModel.item(at: indexPath.row), let storyboardId = item.storyboardId {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let viewController = storyboard.instantiateViewController(withIdentifier: storyboardId)
            self.present(viewController, animated: true)
        }
    }
    
}
        
