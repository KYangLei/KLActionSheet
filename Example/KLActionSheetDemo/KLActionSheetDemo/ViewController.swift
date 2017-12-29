//
//  ViewController.swift
//  KLActionSheetDemo
//
//  Created by 雷珂阳 on 2017/12/29.
//  Copyright © 2017年 雷珂阳. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBAction func button1Handler() {
        let actionSheet = KLActionSheet(cancelButton: true, buttonList: ["ActionSheet 1", "ActionSheet 2", "ActionSheet 3"])
        present(actionSheet, animated: false, completion: nil)
        actionSheet.handler = {index in
            print("index = ", index)
        }
    }
    
    @IBAction func button2Handler() {
        let actionSheet = KLActionSheet(buttonList: ["ActionSheet 1", "ActionSheet 2", "ActionSheet 3"])
        present(actionSheet, animated: false, completion: nil)
        actionSheet.handler = {index in
            print("index = ", index)
        }
    }
    
    @IBAction func button3Handler() {
        let actionSheet = KLActionSheet(buttonList: ["ActionSheet 1", "ActionSheet 2", "ActionSheet 3"])
        actionSheet.delegate = self
        actionSheet.actionSheetTitle = "PGActionSheet"
        present(actionSheet, animated: false, completion: nil)
    }
    
    @IBAction func button4Handler() {
        let actionSheet = KLActionSheet(buttonList: ["ActionSheet 1", "ActionSheet 2", "ActionSheet 3"])
        actionSheet.delegate = self
        actionSheet.translucent = false
        present(actionSheet, animated: false, completion: nil)
    }
    
    @IBAction func button5Handler() {
        let actionSheet = KLActionSheet(buttonList: ["ActionSheet 1", "ActionSheet 2", "ActionSheet 3"])
        actionSheet.delegate = self
        actionSheet.actionSheetTranslucent = false
        present(actionSheet, animated: false, completion: nil)
    }
    
    @IBAction func button6Handler() {
        let actionSheet = KLActionSheet(cancelButton: true, buttonList: ["ActionSheet 1", "ActionSheet 2", "ActionSheet 3", "ActionSheet 4"])
        actionSheet.delegate = self
        present(actionSheet, animated: false, completion: nil)
        actionSheet.textFont = UIFont.boldSystemFont(ofSize: 20)
        actionSheet.textColor = UIColor.orange
        actionSheet.cancelTextColor = UIColor.blue
        actionSheet.cancelTextFont = UIFont.systemFont(ofSize: 20)
        actionSheet.actionSheetTitle = "KLActionSheet"
        actionSheet.actionSheetTitleFont = UIFont.boldSystemFont(ofSize: 22)
        actionSheet.actionSheetTitleColor = UIColor.red
    }
}

extension ViewController: KLActionSheetDelegate {
    func actionSheet(_ actionSheet: KLActionSheet, clickedButtonAt index: Int) {
        print("index = ", index)
    }
}

