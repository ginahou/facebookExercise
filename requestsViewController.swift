//
//  requestsViewController.swift
//  facebookExercise
//
//  Created by Gina Hou on 2/9/15.
//  Copyright (c) 2015 Chris Royer. All rights reserved.
//

import UIKit

class requestsViewController: UIViewController {

    @IBOutlet weak var requestsScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        requestsScrollView.contentSize = CGSize(width: 320, height: 1006)
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
