//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Rohan Thomas on 2016-11-20.
//  Copyright © 2016 Rohan Thomas. All rights reserved.
//

import UIKit

class Video_VC: UIViewController {



    @IBOutlet weak var weby: UIWebView!
    
    @IBOutlet weak var titlelabel: UILabel!
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        } set {
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       titlelabel.text = partyRock.videoTitle
        weby.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
