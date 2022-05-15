//
//  ViewController.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/14/22.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let viewModel = MainMenuViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView.dataSource = self
    }
    
}

extension MainMenuViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.viewModel.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let item = self.viewModel.item(at: indexPath.row), indexPath.section == 0 else {
            return UICollectionViewCell()
        }
        
        guard let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "itemCell", for: indexPath) as? ItemCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.configure(with: item)
        return cell
    }
    
}

