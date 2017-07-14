//
//  ColorTableViewController.swift
//  colorTable
//
//  Created by Carl Manganelli on 7/13/17.
//  Copyright © 2017 Carl Manganelli. All rights reserved.
//

import UIKit

class ColorTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    class Colors {
        let colorLabel: String
        let colorValue: UIColor
        
        init(colorLabel: String, colorValue: UIColor) {
            self.colorLabel = colorLabel
            self.colorValue = colorValue
        }
        
    }
    
    
    var colors: [Colors] = [Colors.init(colorLabel: "red", colorValue: UIColor.red), Colors.init(colorLabel: "orange", colorValue: UIColor.orange), Colors.init(colorLabel: "yellow", colorValue: UIColor.yellow), Colors.init(colorLabel: "green", colorValue: UIColor.green), Colors.init(colorLabel: "blue", colorValue: UIColor.blue), Colors.init(colorLabel: "purple", colorValue: UIColor.purple), Colors.init(colorLabel: "brown", colorValue: UIColor.brown)]
    
    //var colors = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row].colorLabel
        cell.backgroundColor = colors[indexPath.row].colorValue
        
        return cell
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
