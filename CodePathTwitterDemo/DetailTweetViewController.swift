//
//  DetailTweetViewController.swift
//  CodePathTwitterDemo
//
//  Created by Mhatre, Aniket on 4/16/17.
//  Copyright © 2017 Mhatre, Aniket. All rights reserved.
//

import UIKit
import AFNetworking

class DetailTweetViewController: UIViewController {
    
    @IBOutlet weak var profilePicView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var screennameLabel: UILabel!
    @IBOutlet weak var tweetTextLabel: UILabel!
    
    var tweet: Tweet!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        profilePicView.setImageWith(tweet.user!.profileUrl!)
        nameLabel.text = tweet.user!.name
        screennameLabel.text = tweet.user!.screenName
        tweetTextLabel.text = tweet.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onBackButton(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
