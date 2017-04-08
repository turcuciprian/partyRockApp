//
//  partyCellTableViewCell.swift
//  partyRockApp
//
//  Created by Turcu Ciprian on 08/04/2017.
//  Copyright © 2017 Turcu Ciprian. All rights reserved.
//

import UIKit

class partyCellTableViewCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateUI(partyRock: partyRock) {
        videoTitle.text = partyRock.videoTitle
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func updateUI(){
         
    }

}
