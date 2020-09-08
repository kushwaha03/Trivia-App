//
//  HistoryViewController.swift
//  Trivia App
//
//  Created by Krishna Kushwaha on 08/09/20.
//  Copyright © 2020 Krishna Kushwaha. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var gameLbl: UILabel!

    @IBOutlet weak var nmLbl: UILabel!
    @IBOutlet weak var ans1Lbl: UILabel!
    @IBOutlet weak var ans2Lbl: UILabel!
    
    override func viewDidLoad() {
         super.viewDidLoad()

         // Do any additional setup after loading the view.
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let result = formatter.string(from: date)
        gameLbl.text = "GAME: " + result
         nmLbl.text = "Name: " + DataManager.shared.name
         ans1Lbl.text = "Answer " + "\"\(DataManager.shared.ques1)\"" + ","
         ans2Lbl.text = "Answer " + "\"\(DataManager.shared.ques2)\""
     }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
