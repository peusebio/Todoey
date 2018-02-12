//
//  ViewController.swift
//  Todoey
//
//  Created by Pedro Eusébio - ISEP on 11/02/18.
//  Copyright © 2018 Pedro Eusébio. All rights reserved.
//

import UIKit

class ToDoListViewController: UITableViewController {
    
    var itemArray = [Item]()
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if let items = defaults.array(forKey: "ToDoListArray") as? [String]{
//            itemArray = items
//        }
        let newItem = Item()
        newItem.title = "Find Mike"
        itemArray.append(newItem)
        
        let newItem2 = Item()
        newItem2.title = "Buy Eggos"
        itemArray.append(newItem2)
        
        let newItem3 = Item()
        newItem3.title = "Destroy Demogorgon"
        itemArray.append(newItem3)
        
        let newItem4 = Item()
        newItem4.title = "Destroy Demogorgon 1"
        itemArray.append(newItem4)
        
        let newItem5 = Item()
        newItem5.title = "Destroy Demogorgon 2"
        itemArray.append(newItem5)
        
        let newItem6 = Item()
        newItem6.title = "Destroy Demogorgon 3"
        itemArray.append(newItem6)
        
        let newItem7 = Item()
        newItem7.title = "Destroy Demogorgon 4"
        itemArray.append(newItem7)
        
        let newItem8 = Item()
        newItem8.title = "Destroy Demogorgon 5"
        itemArray.append(newItem8)
        
        let newItem9 = Item()
        newItem9.title = "Destroy Demogorgon 6"
        itemArray.append(newItem9)
        
        let newItem10 = Item()
        newItem10.title = "Destroy Demogorgon 7"
        itemArray.append(newItem10)
        
        if let items = defaults.array(forKey: "ToDoListArray") as? [Item]{
            itemArray = items
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        let item = itemArray[indexPath.row]
        
        cell.textLabel?.text = item.title
        
        cell.accessoryType = item.done ? .checkmark : .none
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        itemArray[indexPath.row].done = !itemArray[indexPath.row].done
        
        tableView.reloadData()
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add a new Todoey item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add item", style: .default) { (action) in
            //what will happen wjem the user clicks the Add item button
            
            let newItem = Item()
            newItem.title = textField.text!
            
            self.itemArray.append(newItem)
            self.defaults.set(self.itemArray, forKey: "ToDoListArray")
            self.tableView.reloadData()
        }
        
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
        }
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
}

