//
//  ViewController.swift
//  Project4
//
//  Created by Juan Felipe Zorrilla Ocampo on 29/09/21.
//

import UIKit

class ViewController: UITableViewController {
    var websites = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Webpages Viewer"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        websites = ["juanfelipe82193.github.io/object-page/", "hackingwithswift.com"]
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return websites.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Website", for: indexPath)
        cell.textLabel?.text = websites[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 1. try loading the "Detail" view controller and typecasting it to be DetailViewController
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            // 2: Success! Set uts selectedWebsite property
            vc.selectedWebsite = websites[indexPath.row]
            
            // 3: now push it onto the navigation controller
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    

}
