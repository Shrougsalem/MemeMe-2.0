//
//  SentMemeTableViewCell.swift
//  MemeMe-2.0
//
//  Created by Shroog Salem on 11/10/2019.
//  Copyright © 2019 Shroug Salem. All rights reserved.
//

import UIKit

class SentMemesTableViewCell: UITableViewCell {

    @IBOutlet weak var tableViewCellImage: UIImageView!
    @IBOutlet weak var tableViewCellText: UITextField!
    
    func cellConfig(_ meme: Meme) {
        tableViewCellImage.image = meme.memedImage
        tableViewCellText.text = meme.topText + "..." + meme.bottomText
        tableViewCellText.isEnabled = false
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
