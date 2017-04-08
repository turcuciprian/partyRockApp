//
//  ViewController.swift
//  partyRockApp
//
//  Created by Turcu Ciprian on 08/04/2017.
//  Copyright © 2017 Turcu Ciprian. All rights reserved.
//

import UIKit

class mainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    var partyRocks = [partyRock]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let p1 = partyRock(imageURL: "https://parade.com/wp-content/uploads/2014/01/1-12-14-Neil-deGrasse-Tyson-inside-main-ftr.jpg", videoURL: "https://www.youtube.com/embed/n5uGrJvMieo", videoTitle: "Neil")
        
//        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/n5uGrJvMieo\" frameborder=\"0\" allowfullscreen></iframe>"
        tableview.delegate = self
        tableview.dataSource = self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "videoVCIden") as? partyCellTableViewCell{
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        }else{
            return UITableViewCell()
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
    
    
    
    


}

