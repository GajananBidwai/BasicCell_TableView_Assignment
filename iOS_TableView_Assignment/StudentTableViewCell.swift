//
//  StudentTableViewCell.swift
//  iOS_TableView_Assignment
//
//  Created by Mac on 03/01/24.
//

import UIKit

class StudentTableViewCell: UITableViewCell {

        
    
    @IBOutlet weak var studentNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
       
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }
    
}
