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
    
    var dictStore = [[String: String]]()
    var dictionaryArray: [Dictionary<String,String>] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        let date = Date()
        let formatter = DateFormatter()
        
        formatter.dateFormat = "dd.MM.yyyy HH:mm"
        let datetime = formatter.string(from: date)
        // Do any additional setup after loading the view.
            if let loadedData = UserDefaults.standard.array(forKey: "dictStore") as? [[String: String]] {
//                print(loadedData)
                dictStore.append(contentsOf: loadedData)
            }
   
        nmLbl.text = "Hello " + "\"\(DataManager.shared.name)\"" + ","
        ans1Lbl.text = "Answer " + "\"\(DataManager.shared.ques1)\"" + ","
        ans2Lbl.text = "Answer " + "\"\(DataManager.shared.ques2)\""
        dictStore.append(["date": datetime, "name" : DataManager.shared.name, "ques1" : DataManager.shared.ques1,"ques2" : DataManager.shared.ques2])
        UserDefaults.standard.set(dictStore, forKey: "dictStore")

 

    }
    
    @IBAction func doNextAct(_ sender: Any) {
        UserDefaults.standard.set(dictStore, forKey: "dictStore")

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
