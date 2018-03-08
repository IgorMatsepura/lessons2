//
//  ViewController.swift
//  QuotesSimple3
//
//  Created by IgorMac on 3/8/18.
//  Copyright © 2018 IgorMac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var quoteTextLbl: UILabel!
    @IBOutlet weak var authorImage: UIImageView!
    @IBOutlet weak var authorLbl: UILabel!
    
    let quote = ["What is the name of the spaceship first landed on the moon?",
                 "What does 'umbros' mean in Latin? Translate it into Sentinelese.",
                 "What’s the first photo printed from a camera in the world?",
                 "When was the first email ever sent in the world?"
    ]
    
    let authors = ["Steve Jobs" , "Brendon Burchard", "Teodor Rusvelt", "Free people"
    ]
    
    let images = ["jobs", "brendon-burchard", "jobs", "brendon-burchard"]
    
    @IBAction func inspireMe(_ sender: Any) {
        
        let randomNumber = Int(arc4random()) % 4
        let newQuote = quote[randomNumber]
        let newAuthor = authors[randomNumber]
        let authorImages = images[randomNumber]
        quoteTextLbl.text = newQuote
        authorLbl.text = newAuthor
        authorImage.image = UIImage(named: authorImages)
    }
    
}

