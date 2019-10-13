//
//  SentMemesTableTableViewController.swift
//  MemeMe-2.0
//
//  Created by Shroog Salem on 11/10/2019.
//  Copyright © 2019 Shroug Salem. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UITableViewController {
    
    //MARK: Properties
    var memes: [Meme]! {
        let object = UIApplication.shared.delegate
        let appDelegate = object as! AppDelegate
        return appDelegate.memes
    }
    
    //MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }
   
    //MARK: Actions
    @IBAction func newMeme(_ sender: Any) {
        let memeVC = self.storyboard!.instantiateViewController(withIdentifier: "MemeViewController")
        self.navigationController!.pushViewController(memeVC, animated: true)
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableCell", for: indexPath) as! SentMemesTableViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        // Configure the cell
        cell.cellConfig(meme)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = self.storyboard?.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        let meme = self.memes[(indexPath as NSIndexPath).row]
        detailController.meme = meme
        self.navigationController!.pushViewController(detailController, animated: true)
    }

}
