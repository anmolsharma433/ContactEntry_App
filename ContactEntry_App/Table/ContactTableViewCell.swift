//
//  ContactTableViewCell.swift
//  ContactEntry_App
//
//  Created by Anmol Sharma on 2020-01-18.
//  Copyright © 2020 anmol. All rights reserved.
//

import UIKit

class ContactTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    let coreData = ViewController()
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func setContact()
    {
        
    }

}
