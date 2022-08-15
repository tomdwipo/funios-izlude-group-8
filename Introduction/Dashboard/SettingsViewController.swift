//
//  SettingsViewController.swift
//  Introduction
//
//  Created by Tommy-amarbank on 26/07/22.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        tableView.register(UINib(nibName: String(describing: SettingsTableViewCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SettingsTableViewCell.self))
        
        // Do any additional setup after loading the view.
    }
    
    // dipanggil ketika view controller ke nampil
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        print("viewDidAppear SettingsViewController")
//    }
//
//    override func viewDidDisappear(_ animated: Bool) {
//        super.viewDidDisappear(animated)
//        print("viewDidDisappear SettingsViewController")
//    }
}

extension SettingsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: SettingsTableViewCell.self), for: indexPath) as! SettingsTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
}


