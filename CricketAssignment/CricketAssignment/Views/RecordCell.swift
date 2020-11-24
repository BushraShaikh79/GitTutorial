//
//  RecordCell.swift
//  CricketAssignment
//
//  Created by Bushra on 22/09/20.

import UIKit

class RecordCell: UITableViewCell {
    
    //MARK:- outlets
    @IBOutlet weak var lblCountry: UILabel!
    
    //MARK:- lifecycle methods
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

