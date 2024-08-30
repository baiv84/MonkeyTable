//
//  MonkeyTableView.swift
//  MonkeyTable
//
//  Created by Ivan Babintsev on 31.08.2024.
//

import UIKit

class MonkeyTableView: UIView {
    private let scrollView =  UIScrollView()
    
    private var countOfCells = 19
    private var heightCell = 44
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureScrollView()
        configureCells()
    }
    
    init(countOfCells: Int, heighCell: Int, frame: CGRect) {
        super.init(frame: frame)
        
        self.countOfCells = countOfCells
        self.heightCell = heighCell
        
        configureScrollView()
        configureCells()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureScrollView() {
        scrollView.backgroundColor = .red
        scrollView.frame = self.frame
        scrollView.contentSize = CGSize(width: self.frame.width,
                                        height: CGFloat(countOfCells * heightCell + 80))
        self.addSubview(scrollView)
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
