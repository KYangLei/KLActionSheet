//
//  KLActionSheetDelegate.swift
//  KLActionSheetDemo
//
//  Created by 雷珂阳 on 2017/12/29.
//  Copyright © 2017年 雷珂阳. All rights reserved.
//

import Foundation

@objc public protocol KLActionSheetDelegate {
    @objc optional func actionSheet(_ actionSheet: KLActionSheet, clickedButtonAt index: Int)
}
