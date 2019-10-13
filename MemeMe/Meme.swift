//
//  Meme.swift
//  MemeMe-2.0
//
//  Created by Shroog Salem on 10/10/2019.
//  Copyright © 2019 Shroug Salem. All rights reserved.
//
import UIKit
import Foundation

struct Meme {
    let topText: String
    let bottomText: String
    let originalImage: UIImage
    let memedImage: UIImage
    
    init(topText: String, bottomText: String, originalImage: UIImage, memedImage: UIImage){
       self.topText = topText
        self.bottomText = bottomText
        self.originalImage = originalImage
        self.memedImage = memedImage
    }
}
