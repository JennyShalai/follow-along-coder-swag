//
//  ViewController.swift
//  follow-along-coder-swag
//
//  Created by Jenny Shalai on 6/29/22.
//

import UIKit

class CategoriesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    
    @IBOutlet weak var categotyTable: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        categotyTable.dataSource = self
        categotyTable.delegate = self
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.dataService.getCategories().count
    }
    
    // feed the data into cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {
            let category = DataService.dataService.getCategories()[indexPath.row]
            cell.updateCell(withCategory: category)
            //cell.layoutIfNeeded()
            return cell
        } else {
            return CategoryCell()
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.dataService.getCategories()[indexPath.row]
        performSegue(withIdentifier: "ProductsVC", sender: category)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let prepareVC = segue.destination as? ProductViewController {
            setUINavicationButton()
            prepareVC.initProducts(withCategory: sender as! Category)
        }
    }
    
    private func setUINavicationButton() {
        let barButton = UIBarButtonItem()
        barButton.title = ""
        navigationItem.backBarButtonItem = barButton
    }
}

