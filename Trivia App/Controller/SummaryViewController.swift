//
//  SummaryViewController.swift
//  Trivia App
//
//  Created by Krishna Kushwaha on 08/09/20.
//  Copyright © 2020 Krishna Kushwaha. All rights reserved.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var nmLbl: UILabel!
    @IBOutlet weak var ans1Lbl: UILabel!
    @IBOutlet weak var ans2Lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
   
        nmLbl.text = "Hello " + "\"\(DataManager.shared.name)\"" + ","
        ans1Lbl.text = "Answer " + "\"\(DataManager.shared.ques1)\"" + ","
        ans2Lbl.text = "Answer " + "\"\(DataManager.shared.ques2)\""
    }
    
    @IBAction func doNextAct(_ sender: Any) {

            guard let page1V = self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController else { return  }
            page1V.navigationItem.hidesBackButton  = true
                   self.navigationController?.pushViewController(page1V, animated: true)
            
    
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
