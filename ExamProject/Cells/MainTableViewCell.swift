//
//  MainTableViewCell.swift
//  ExamProject
//
//  Created by Nail on 23.01.2021.
//  Copyright © 2021 Nail. All rights reserved.
//

import UIKit

class MainTableViewCell: UITableViewCell {


    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var parentCommentLabel: UILabel!
    @IBOutlet weak var insideTableView: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateCell(padding: CGFloat) {
        colorView.frame.origin.x = padding
        parentCommentLabel.frame.origin.x = padding + 15
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
   

}


