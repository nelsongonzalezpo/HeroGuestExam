//
//  ViewControllerTableViewCell.swift
//  HeroGuestExam-IEXApp
//
//  Created by Nelson Gonzalez on 5/23/19.
//  Copyright © 2019 Nelson Gonzalez. All rights reserved.
//

import Foundation
import UIKit

class ViewControllerTableViewCell: UITableViewCell{
    
    
    @IBOutlet weak var mySymbol: UILabel!
    @IBOutlet weak var myCompanyName: UILabel!
    
    
    @IBOutlet weak var mySymbolActive: UILabel!
    @IBOutlet weak var myCompanyNameActive: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //Set row selected (Not used)
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
}
