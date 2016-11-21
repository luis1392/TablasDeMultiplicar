//
//  ViewController.swift
//  Tablas de Multiplicar
//
//  Created by Luis Enrique Tierrafria Rodriguez on 9/19/16.
//  Copyright © 2016 Luis Enrique Tierrafria Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var slider: UISlider!
    
    
    @IBOutlet weak var table: UITableView!
    
    @IBAction func slideMoved(_ sender: AnyObject) {
        print(slider.value)
        table.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 20
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        let timesTable = Int(slider.value * 20)
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1) )
        
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

