//
//  TweetsViewController.swift
//  TwitterClient
//
//  Created by Anand Gupta on 9/29/15.
//  Copyright © 2015 walmartlabs. All rights reserved.
//

import UIKit

class TweetsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var tweets : [Tweet]?
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func onLogout(sender: AnyObject) {
        User.currentUser?.logout()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        TwitterAPIClient.sharedInstance.homeTimeLineWithCompletion([:] , completion: {(tweets, error) -> () in
                self.tweets = tweets
            for tweet in tweets! {
             //   print(<#T##items: Any...##Any#>)
            }
        })
        
        
        
        //tableView.delegate = self
        //tableView.dataSource = self
    }
    

    

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tweets != nil {
            return tweets!.count
        } else {
            return 0
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TweetCell", forIndexPath: indexPath) as! tweetCell
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
