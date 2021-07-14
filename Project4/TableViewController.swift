//
//  TableViewController.swift
//  Project4
//
//  Created by user on 13/07/21.
//

import UIKit

class TableViewController: UITableViewController {

    var viewController = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Choose a site to browse"
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewController.websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let text = viewController.websites[indexPath.row]
        cell.textLabel?.text = text.capitalized
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "viewController") as? ViewController {
            navigationController?.pushViewController(vc, animated: true)
            vc.site = vc.websites[indexPath.row]
        }
    }

}
