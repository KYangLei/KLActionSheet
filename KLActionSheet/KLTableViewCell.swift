//
//  KLTableViewCell.swift
//  KLActionSheetDemo
//
//  Created by 雷珂阳 on 2017/12/29.
//  Copyright © 2017年 雷珂阳. All rights reserved.
//

import UIKit

class KLTableViewCell: UITableViewCell {

    //MARK: - public property
    internal var signlabel: UILabel!
    
    //MARK: - system cycle
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        signlabel = UILabel()
        self.contentView.addSubview(signlabel)
        signlabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let centerX = NSLayoutConstraint(item: signlabel, attribute: .centerX, relatedBy: .equal, toItem: self.contentView, attribute: .centerX, multiplier: 1.0, constant: 0)
        let centerY = NSLayoutConstraint(item: signlabel, attribute: .centerY, relatedBy: .equal, toItem: self.contentView, attribute: .centerY, multiplier: 1.0, constant: 0)
        self.contentView.addConstraints([centerX, centerY])
    }

}
