//
//  ViewController.swift
//  Example
//
//  Created by Igors Nemenonoks on 13/03/17.
//  Copyright © 2017 Chili. All rights reserved.
//

import UIKit
import CHIPageControl

class ViewController: UIViewController {

    internal let numberOfPages = 4
    @IBOutlet var pageControls: [CHIBasePageControl]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pageControls.forEach { (control) in
            control.numberOfPages = self.numberOfPages
        }
    }

    func randomColor() -> UIColor{
        return UIColor(red: CGFloat(drand48()),
                       green: CGFloat(drand48()),
                       blue: CGFloat(drand48()),
                       alpha: 1.0)
        
    }
}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "aCell", for: indexPath)
        cell.backgroundColor = self.randomColor()
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return self.view.bounds.size
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let total = scrollView.contentSize.width - scrollView.bounds.width
        let offset = scrollView.contentOffset.x
        let percent = Double(offset / total)
        
        let progress = percent * Double(self.numberOfPages - 1)
        
        self.pageControls.forEach { (control) in
            control.progress = progress
        }
    }
}

