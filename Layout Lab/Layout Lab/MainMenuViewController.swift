//
//  ViewController.swift
//  Layout Lab
//
//  Created by Patrick McGonigle on 5/14/22.
//

import UIKit

class MainMenuViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    	
    override func viewDidLoad() {
        super.viewDidLoad()
	    }

}

extension MainMenuViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        return UICollectionViewCell()
    }
    
}

extension MainMenuViewController: UICollectionViewDelegate {
    
}
	
