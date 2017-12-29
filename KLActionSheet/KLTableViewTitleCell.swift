//
//  KLTableViewTitleCell.swift
//  KLActionSheetDemo
//
//  Created by 雷珂阳 on 2017/12/29.
//  Copyright © 2017年 雷珂阳. All rights reserved.
//

import UIKit

class KLTableViewTitleCell: UITableViewCell {

    //MARK: - public property
    internal var titlelabel: UILabel!
    
    //MARK: - system cycle
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        titlelabel = UILabel()
        titlelabel.font = UIFont.boldSystemFont(ofSize: 17)
        titlelabel.textColor = UIColor.darkGray
        self.contentView.addSubview(titlelabel)
        titlelabel.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.backgroundColor = UIColor.clear
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        self.selectionStyle = .none
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        let centerX = NSLayoutConstraint(item: titlelabel, attribute: .centerX, relatedBy: .equal, toItem: self.contentView, attribute: .centerX, multiplier: 1.0, constant: 0)
        let centerY = NSLayoutConstraint(item: titlelabel, attribute: .centerY, relatedBy: .equal, toItem: self.contentView, attribute: .centerY, multiplier: 1.0, constant: 0)
        self.contentView.addConstraints([centerX, centerY])
    }

}
