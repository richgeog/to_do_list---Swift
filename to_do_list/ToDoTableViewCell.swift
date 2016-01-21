//
//  ToDoTableViewCell.swift
//  to_do_list
//
//  Created by Richard Geoghegan on 21/01/2016.
//  Copyright © 2016 Richard Geoghegan. All rights reserved.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBOutlet weak var toDoCellLabel: UIView!
}
