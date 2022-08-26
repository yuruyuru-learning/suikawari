//
//  ViewController.swift
//  Suikawari
//
//  Created by クワシマ・ユウキ on 2022/08/26.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var suikaView: UIImageView!
    var randomNumber: Int = 0
    var count: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        suikaView.image = UIImage(named: "suika")
        randomNumber = Int.random(in: 3..<10)
    }
    
    @IBAction func waru(){
        count += 1
        if count == randomNumber {
            suikaView.image = UIImage(named: "suika2")
        }
    }


}

