//
//  ViewController.swift
//  introduceYourFamily
//
//  Created by Derek Stengel on 2/28/24.
//

import UIKit

class DashboardViewController: UIViewController {
    
    
    @IBOutlet weak var wifeButtonPressed: UIButton!
    @IBOutlet weak var familyButtonPressed: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func wifeButton(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    @IBAction func familyButton(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else {return}
        guard let detailvc = segue.destination as? DetailViewController else {return}
        
        if sender == wifeButtonPressed {
            detailvc.wifeStackViewIsVisible = true
        } else if sender == familyButtonPressed {
            detailvc.familyStackViewIsVisible = true
        }
       
        
        
        // if sender is wifeButton, update wifeStackViewIsVisible to true
        // if sender is familyButton, update familyStackViewIsVisible to true
    }
    
    
    
    
}

