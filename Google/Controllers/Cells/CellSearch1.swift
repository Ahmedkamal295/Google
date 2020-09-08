//
//  CellSearch1.swift
//  Google
//
//  Created by Ahmed kamal on 8/11/20.
//  Copyright © 2020 Ahmed kamal. All rights reserved.
//

import UIKit

class CellSearch1: UITableViewCell {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblRate: UILabel!
    
    @IBOutlet weak var btnStar: UIButton!
    
    @IBOutlet weak var lblPrice: UILabel!
    @IBOutlet weak var lblTime: UILabel!
    @IBOutlet weak var lblLocation: UILabel!
    
    @IBOutlet weak var btnCall: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func btnCall(_ sender: Any) {
    }
    @IBAction func btnStar(_ sender: Any) {
    }
    
}
