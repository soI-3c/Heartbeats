//
//  UIButton+Extension.swift
//  Heartbeats
//
//  Created by liaosenshi on 15/12/30.
//  Copyright © 2015年 heart. All rights reserved.

import UIKit

extension UILabel {
    /// - returns: UILabel
    convenience init(title: String?, fontSize: CGFloat, balckBack: Bool = false) {
        // 实例化当前对象
        self.init()
        // 设置对象属性
        text = title
        sizeToFit()
        textColor = UIColor.whiteColor()
        jm_setCornerRadius(3.5, withBackgroundColor: UIColor(red: 19.0 / 255.0, green: 19.0 / 255.0, blue: 19.0 / 255.0, alpha: 0.8))
        font = UIFont(name: "Helvetica-Bold", size: fontSize)

    }
    /// - returns: UILabel
    convenience init(title: String?, fontSize: CGFloat, textColor: UIColor, backColor: UIColor,  cornerRadius: CGFloat) {
        self.init()
        // 设置对象属性
        text = title
        font = UIFont(name: "Helvetica-Bold", size: fontSize)
        self.textColor = textColor
       jm_setCornerRadius(cornerRadius, withBackgroundColor: backColor)
    }

}
