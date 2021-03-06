//
//  Dynamic.swift
//  Heartbeats
//
//  Created by iOS-3C on 16/1/2.
//  Copyright © 2016年 heart. All rights reserved.
//

import UIKit

let HBDynamicUser = "user"
let HBDynamicPhotos = "photos"
let HBDynamicContent = "content"
let HBDynamicPraises = "praises"
let HBDynamicComments = "comments"
class Dynamic: AVObject, AVSubclassing {
    @NSManaged var user: HeartUser!                 //  动态所属的user
    @NSManaged var photos: HBAVFile?                //  图片
    @NSManaged var content: String?                 //  内容
    @NSManaged var feeling: String?                 //  当前心情(对应图片的名字)
    @NSManaged var address: String?                 //  地址
    @NSManaged var praises: [AnyObject]?            //  赞的人数组
    @NSManaged var comments: [AnyObject]?           //  评论
    var cellHeight: CGFloat = 0                     //  缓存行高
    var commentTabVHeight: CGFloat = 0              //  评论tab高
   static func parseClassName() -> String? {
        return "Dynamic"
    }
}

extension Dynamic {
    class func photoUrls(dynamic: Dynamic) -> String? {
        if let photo = dynamic.photos {
            return photo.url
        }
        return nil
    }
}

