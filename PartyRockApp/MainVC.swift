//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Rohan Thomas on 2016-11-20.
//  Copyright © 2016 Rohan Thomas. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/9l86_4Or-84/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=lEtMfHe3r8uG6d_cRB6TZUAz25o", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/9l86_4Or-84\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Calvin Rodgers in da Pocket")
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/ZBBU3wZyXL4/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=HBxh2Unwa0uruDFrOSEt8BXxkrk", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ZBBU3wZyXL4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Things to do at SFU")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/hMaTETuxfeA/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=5mbRKJk9w28N_fSfoYLT3bVuwTs", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/hMaTETuxfeA\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "latin drumming")
        
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/0DKVgxSKG0w/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=-ffUmn6TVy-ytQzOXzn8Q4Xv3M8", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/0DKVgxSKG0w\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Congas")
        
        let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/1dShR9VrzG4/hqdefault.jpg?custom=true&w=196&h=110&stc=true&jpg444=true&jpgq=90&sp=68&sigh=x2e4A37Ugrqc23kB2nJuJfxZ-S0", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1dShR9VrzG4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Spanish Guitar")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
            
        tableView.delegate = self //when the table view is working it knows to call the below functions
        tableView.dataSource = self //when the table view is working it knows to call the below functions
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            //its telling the tableview to give a reusable partycell, if there's none then create one
            
            let partyRock = partyRocks[indexPath.row]
            
            cell.updateUI(partyRock: partyRock)
            return cell
            
        }else{
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "Video_VC", sender: partyRock)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? Video_VC {
            
            if let party = sender as? PartyRock {
                destination.partyRock = party
            }
            
        }
        
    }

}

















