//
//  ViewController.swift
//  MonkeyTable
//
//  Created by Ivan Babintsev on 29.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private var tableView: MonkeyTableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
    }
    
    // Mark: - Private
    
    private func configureTableView() {
        title = "Main View controller"
        tableView = MonkeyTableView(countOfCells: 10,
                                    heighCell: 100,
                                    frame: self.view.frame)
        self.view.addSubview(tableView!)
    }
}

