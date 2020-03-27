//
//  ViewController.swift
//  Flashcards
//
//  Created by Kathryn Wantlin on 3/24/20.
//  Copyright © 2020 Kathryn Wantlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backLabel: UILabel!
    @IBOutlet weak var frontLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let navigationController = segue.destination as! UINavigationController
        
        let creationController = navigationController.topViewController as! CreationViewController
        
    creationController.flashcardsController = self
    }

    @IBAction func didTapOnFlashcard(_ sender: Any) {
        frontLabel.isHidden = !frontLabel.isHidden
    }
    
    func updateFlashcard(question: String, answer: String) {
        frontLabel.text = question
        backLabel.text = answer
    }
    
}

