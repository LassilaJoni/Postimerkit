//
//  ViewController.swift
//  Postimerkit
//
//  Created by Joni Lassila on 24/11/2017.
//  Copyright © 2017 Joni Lassila. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var stamps = [Stamp]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Stamp.getStamps(completion: { stamps in
            self.stamps = stamps
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        })
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.stamps.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let stamp = self.stamps[indexPath.row]
        
        cell.textLabel?.text = stamp.name
        cell.detailTextLabel?.text = stamp.artist
        cell.imageView?.image = UIImage(named: (stamp.name?.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed))!)
        
        return cell
    }
}

