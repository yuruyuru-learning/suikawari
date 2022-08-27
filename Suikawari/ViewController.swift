//
//  ViewController.swift
//  Suikawari
//
//  Created by クワシマ・ユウキ on 2022/08/26.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
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

    func tableView(_ tableView: UITableView, didEndEditingRowAt indexPath: IndexPath?) {
        tableView.deleteRows(at: [indexPath!], with: .automatic)
        
    }
    
    func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
            formulaList.remove(at: indexPath.row)
            tableView.reloadData()
        }
    }

}

