//
//  GameTViewCell.swift
//  Trivia App
//
//  Created by Krishna Kushwaha on 08/09/20.
//  Copyright © 2020 Krishna Kushwaha. All rights reserved.
//

import UIKit

class GameTViewCell: UITableViewCell {

    @IBOutlet weak var gameLbl: UILabel!

    @IBOutlet weak var nmLbl: UILabel!
    @IBOutlet weak var ans1Lbl: UILabel!
    @IBOutlet weak var ans2Lbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
