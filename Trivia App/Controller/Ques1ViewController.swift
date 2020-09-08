//
//  Ques1ViewController.swift
//  Trivia App
//
//  Created by Krishna Kushwaha on 08/09/20.
//  Copyright © 2020 Krishna Kushwaha. All rights reserved.
//

import UIKit

class Ques1ViewController: UIViewController {

    @IBOutlet weak var ansABtn: UIButton!
        @IBOutlet weak var ansBBtn: UIButton!
        @IBOutlet weak var ansCBtn: UIButton!
        @IBOutlet weak var ansDBtn: UIButton!
    
        var ans = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        print(DataManager.shared.name)

    }
    
    @IBAction func ansABtnAct(_ sender: UIButton) {
        ansABtn.backgroundColor = .blue
        ansBBtn.backgroundColor = .clear
        ansCBtn.backgroundColor = .clear
        ansDBtn.backgroundColor = .clear
        ans = "Sachin Tendulkar"
    }
    @IBAction func ansBBtnAct(_ sender: UIButton) {
        ansABtn.backgroundColor = .clear
        ansBBtn.backgroundColor = .blue
        ansCBtn.backgroundColor = .clear
        ansDBtn.backgroundColor = .clear
        ans = "Virat Kolli"


    }
    
    @IBAction func ansCBtnAct(_ sender: UIButton) {
        ansABtn.backgroundColor = .clear
        ansBBtn.backgroundColor = .clear
        ansCBtn.backgroundColor = .blue
        ansDBtn.backgroundColor = .clear
        
        ans = "Adam Gilchirst"



    }
    @IBAction func ansDBtnAct(_ sender: UIButton) {
        ansABtn.backgroundColor = .clear
        ansBBtn.backgroundColor = .clear
        ansCBtn.backgroundColor = .clear
        ansDBtn.backgroundColor = .blue

        ans = "Jacques Kallis"

    }
    
    
    @IBAction func doNextAct(_ sender: Any) {
        
        if ans.isEmpty {
            let alert = UIAlertController(title: "Error", message: "Please select at least one option.", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            DataManager.shared.ques1 = ans
            guard let ques1V = self.storyboard?.instantiateViewController(identifier: "Ques2ViewController") as? Ques2ViewController else { return  }
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
