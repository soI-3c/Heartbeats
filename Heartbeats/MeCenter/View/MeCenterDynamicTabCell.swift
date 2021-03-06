//
//  MeCenterDynamicTabCell.swift
//  Heartbeats
//
//  Created by liaosenshi on 16/8/23.
//  Copyright © 2016年 heart. All rights reserved.
//

import UIKit

/** 个人中心 动态显示的 cell */
class MeCenterDynamicTabCell: UITableViewCell {
    var deleDynamicBlock: ((MeCenterDynamicTabCell) -> Void)?           // 删除
    private let imgV = UIImageView()
    private lazy var deleBtn :UIButton = {
        let btn = UIButton(frame: CGRectMake(screenMaimWidth - 48, 8, 40, 40))
        btn .setImage(UIImage(named: "closeIcon"), forState: .Normal)
        btn.addTarget(self, action:"deleDynamic", forControlEvents: .TouchUpInside)
        return btn
    }()
    var dynamicImageUrl: String? {
        didSet {
            imgV.sd_setImageWithURL(NSURL(string: dynamicImageUrl!))
        }
    }
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

    private func setUpUI() {
        backgroundColor = UIColor.clearColor()
        imgV.contentMode = .ScaleAspectFill
        contentView.addSubview(imgV)
        contentView.addSubview(deleBtn)
        imgV.snp_makeConstraints { (make) in
            make.edges.equalTo(contentView)
        }
    }
    func deleDynamic() {
        self.deleDynamicBlock?(self)
    }
}
