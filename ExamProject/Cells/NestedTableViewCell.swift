//
//  NestedTableViewCell.swift
//  ExamProject
//
//  Created by Nail on 23.01.2021.
//  Copyright © 2021 Nail. All rights reserved.
//

import UIKit

class NestedTableViewCell: UITableViewCell {

    @IBOutlet weak var thirdTableView: UITableView!
    @IBOutlet weak var childComment: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}


