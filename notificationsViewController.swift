//
//  notificationsViewController.swift
//  facebookExercise
//
//  Created by Gina Hou on 2/9/15.
//  Copyright (c) 2015 Chris Royer. All rights reserved.
//

import UIKit

class notificationsViewController: UIViewController {
    
    @IBOutlet weak var notificationsScrollView: UIScrollView!

    override func viewDidLoad() {
        super.viewDidLoad()

        notificationsScrollView.contentSize = CGSize(width: 320, height: 818)
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
