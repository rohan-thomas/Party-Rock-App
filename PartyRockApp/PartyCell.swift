//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Rohan Thomas on 2016-11-20.
//  Copyright © 2016 Rohan Thomas. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {


    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.main.sync {
                    self.videoPreviewImage.image = UIImage(data: data)
                    }
            } catch{
                        //error handler
            }
        }
    }

}
