//
//  TableCell.swift
//  COVID-Tracker
//
//  Created by Ravi dwivedi on 22/06/21.
//  Copyright © 2021 Ravi dwivedi. All rights reserved.
//

import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet weak var lbl_date:UILabel!
    @IBOutlet weak var lbl_totalCase:UILabel!
    @IBOutlet weak var lbl_stateName:UILabel!

    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
