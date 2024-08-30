//
//  ViewController.swift
//  MonkeyTable
//
//  Created by Ivan Babintsev on 29.08.2024.
//

import UIKit

class ViewController: UIViewController {

    private let scrollView =  UIScrollView()
    
    private let label = UILabel()
        
    private let countOfCells = 19
    
    private let heightCell = 44
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Main controller"
        configureScrollView()
        configureCells()
    }
    
    // Mark: - Private
    private func configureScrollView() {
        scrollView.backgroundColor = .red
        scrollView.frame = self.view.frame
        scrollView.contentSize = CGSize(width: self.view.frame.width, 
                                        height: CGFloat(countOfCells * heightCell + 80))
        view.addSubview(scrollView)
    }
    
    
    private func configureCells() {
        for index in 0...countOfCells {
            let cellView = CellView(frame: CGRect(x: 0,
                                                  y: CGFloat(index * heightCell),
                                                  width: CGFloat(scrollView.frame.size.width),
                                                  height: CGFloat(heightCell))
            )
            cellView.setText(String(index + 1))
            
            scrollView.addSubview(cellView)
        }
    }


}

