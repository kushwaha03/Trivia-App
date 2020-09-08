//
//  Ques2ViewController.swift
//  Trivia App
//
//  Created by Krishna Kushwaha on 08/09/20.
//  Copyright © 2020 Krishna Kushwaha. All rights reserved.
//

import UIKit

class Ques2ViewController: UIViewController {

        @IBOutlet weak var ansABtn: UIButton!
        @IBOutlet weak var ansBBtn: UIButton!
        @IBOutlet weak var ansCBtn: UIButton!
        @IBOutlet weak var ansDBtn: UIButton!
    
        var ansA = ""
        var ansB = ""
        var ansC = ""
        var ansD = ""
    
        var isSelectA = false
        var isSelectB = false
        var isSelectC = false
        var isSelectD = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    }
    
    @IBAction func ansABtnAct(_ sender: UIButton) {
        if !isSelectA{
            ansABtn.backgroundColor = .blue
            ansA = "White "
            isSelectA = true
        } else {
            ansABtn.backgroundColor = .clear
            ansA = ""
            isSelectA = false
            
        }
        
    }
    @IBAction func ansBBtnAct(_ sender: UIButton) {

        if !isSelectB {
            ansBBtn.backgroundColor = .blue
            ansB = "Yellow "
            isSelectB = true
        } else {
            ansBBtn.backgroundColor = .clear
            ansB = ""
            isSelectB = false
        }
        


    }
    
    @IBAction func ansCBtnAct(_ sender: UIButton) {

        if !isSelectC {
            ansCBtn.backgroundColor = .blue
            ansC = "Orange "
            isSelectC = true
        } else {
            ansCBtn.backgroundColor = .clear
            ansC = ""
            isSelectC = false
        }


    }
    @IBAction func ansDBtnAct(_ sender: UIButton) {

        if !isSelectD {
            ansDBtn.backgroundColor = .blue
            ansD = "Green "
            isSelectD = true
        } else {
            ansDBtn.backgroundColor = .clear
            ansD = ""
            isSelectD = false
            
        }
    }
    
    @IBAction func doNextAct(_ sender: Any) {
        
        if (ansA + ansB + ansC + ansD).isEmpty {
            
            let alert = UIAlertController(title: "Error", message: "Please select at least one option.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            
            DataManager.shared.ques2 = (ansA + ansB + ansC + ansD).replacingOccurrences(of: " ", with: ",", options: .literal, range: nil)
            guard let ques1V = self.storyboard?.instantiateViewController(identifier: "SummaryViewController") as? SummaryViewController else { return  }
            self.navigationController?.pushViewController(ques1V, animated: true)
            
        }
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
