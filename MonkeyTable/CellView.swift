//
//  CellView.swift
//  MonkeyTable
//
//  Created by Ivan Babintsev on 30.08.2024.
//

import UIKit

class CellView: UIView {
    private let separatorView = UIView()
    
    private let label = UILabel()
    
    private func configureLabel() {
        label.frame = self.bounds
        label.textColor = .green
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: CGFloat(26))
        self.addSubview(label)
    }
    
    private func configureSeparatorView() {
        separatorView.backgroundColor = .white
        separatorView.frame = CGRect(x: 0,
                                     y: CGFloat(frame.size.height - 3),
                                     width: CGFloat(frame.size.width),
                                     height: 3)
        self.addSubview(separatorView)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .blue
        configureLabel()
        configureSeparatorView()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setText(_ text: String) {
        
        label.text = text
        
        
    }
    
    
    
    
    
}
