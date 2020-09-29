//
//  ViewController.swift
//  Example_iOS_5
//
//  Created by Nicola Dalle Vedove on 29/09/2020.
//

import UIKit
import CHIPageControl

class ViewController: UIViewController {

    @IBOutlet weak var pageControl: CHIPageControlChimayo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func previousClicked(_ sender: UIButton) {
        let currentPage = Int(pageControl.progress)
        
        if currentPage > 0 {
            pageControl.set(progress: currentPage - 1, animated: true)
        }
    }
    
    @IBAction func nextClicked(_ sender: UIButton) {
        let currentPage = Int(pageControl.progress)
        
        if currentPage < pageControl.numberOfPages - 1 {
            pageControl.set(progress: currentPage + 1, animated: true)
        }
    }
}

