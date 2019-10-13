//
//  SentMemeCollectionViewController.swift
//  MemeMe-2.0
//
//  Created by Shroog Salem on 11/10/2019.
//  Copyright © 2019 Shroug Salem. All rights reserved.
//

import UIKit

private let reuseIdentifier = "MemeCollectionCell"

class SentMemesCollectionViewController: UICollectionViewController {
    //MARK: Properties
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let space:CGFloat = 3.0
        let widthDimension = (view.frame.size.width - (2 * space)) / 3.0
        let heightDimension = (view.frame.size.height - (2 * space)) / 3.0
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: widthDimension, height: heightDimension)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.collectionView!.reloadData()
    }
    
    //MARK: Actions
    @IBAction func addNewMeme(_ sender: Any) {
        let memeVC = self.storyboard!.instantiateViewController(withIdentifier: "MemeViewController")
        self.navigationController!.pushViewController(memeVC, animated: true)
    }

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MemeCollectionCell", for: indexPath) as! SentMemesCollectionViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        cell.collectionViewCellImage!.image = meme.memedImage
        return cell
    }
    
    // MARK: UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailController = self.storyboard?.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        let meme = self.memes[(indexPath as NSIndexPath).row]
        detailController.meme = meme
        self.navigationController!.pushViewController(detailController, animated: true)
    }

}
