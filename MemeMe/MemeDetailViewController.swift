//
//  MemeDetailViewController.swift
//  MemeMe-2.0
//
//  Created by Shroog Salem on 11/10/2019.
//  Copyright © 2019 Shroug Salem. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    //MARK: - Properties
    @IBOutlet weak var detailMemeImage: UIImageView!
    var meme:Meme!
   
    // MARK: - LifeCycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        detailMemeImage.image = self.meme.memedImage
        self.tabBarController?.tabBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        self.tabBarController?.tabBar.isHidden = false
    }
}
