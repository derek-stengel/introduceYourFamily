//
//  DetailViewController.swift
//  introduceYourFamily
//
//  Created by Derek Stengel on 2/28/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    var wifeStackViewIsVisible = false
    var familyStackViewIsVisible = false
    
    @IBOutlet weak var wifeStackView: UIStackView!
    @IBOutlet weak var familyStackView: UIStackView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if wifeStackViewIsVisible == true {
            wifeStackView.isHidden = false
            familyStackView.isHidden = true
        } else if familyStackViewIsVisible == true {
            familyStackView.isHidden = false
            wifeStackView.isHidden = true
        }
    }
    
}
