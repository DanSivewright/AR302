//
//  DialogViewController.swift
//  ImageDetectionAR
//
//  Created by Dan Sivewright on 2020/04/21.
//  Copyright © 2020 Wixels. All rights reserved.
//

import UIKit

class DialogViewController: UIViewController {

    @IBOutlet weak var screenCollectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        screenCollectionView.delegate = self
        screenCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension DialogViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "screenCell", for: indexPath)
        
        return cell
    }
    
    
}
