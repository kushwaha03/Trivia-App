//
//  HistoryViewController.swift
//  Trivia App
//
//  Created by Krishna Kushwaha on 08/09/20.
//  Copyright © 2020 Krishna Kushwaha. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var dictStore = [[String: String]]()

    @IBOutlet weak var gameTbl: UITableView!
    
    override func viewDidLoad() {
         super.viewDidLoad()



    if let loadedData = UserDefaults.standard.array(forKey: "dictStore") as? [[String: String]] {
        print(loadedData)
        dictStore = loadedData
        gameTbl.reloadData()
        
    }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dictStore.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! GameTViewCell
        cell.gameLbl.text = "GAME \(indexPath.row+1): "  + dictStore[indexPath.row]["date"]! as? String
        cell.nmLbl.text = "Name : " + dictStore[indexPath.row]["name"]! as? String
    
        cell.ans1Lbl.text = "Answer : " + "\"\((dictStore[indexPath.row]["ques1"]! as? String)!)\"" + ","
        cell.ans2Lbl.text = "Answer : " + "\"\((dictStore[indexPath.row]["ques2"]! as? String)!)\""
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
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
