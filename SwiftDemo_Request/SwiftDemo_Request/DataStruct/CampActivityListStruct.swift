//
//  CampActivityListStruct.swift
//  Camping
//
//  Created by 陈海哥 on 2022/3/3.
//  Copyright © 2022 Camp. All rights reserved.
//

import Foundation


struct CampImage: Codable {
    let url: String
}

struct ActivityDetailContent: Codable {
    let content: String?
    let image: CampImage?
    let type: Int64? //1是图片，2是文字， 3是标题加文字
    var title: String?
}

struct CampActivityListStruct: Codable {
    let activities: [CampActivitys]?
    let has_more: Bool?
    let page: Int64?
    let size: Int64?
}

struct CampActivitys: Codable {
    let activity_id: Int64?
    let goods_url: [CampImage]?
    let title: String?
    let content_detail: [ActivityDetailContent]?
    let organizer: CampActivityOrganizer?
    let end_time: Int64?
    let start_time: Int64?
    let location_address: String?
    let related_camp: CampActivityRelatedCamp?
    let phone: String?
    let price_range: [Int64]?
    let is_refund: Int64?
    let longitude: String?
    let latitude: String?
//    let refund_rule: [Any]?
    let other_info: ActivityOtherinfo?
    /// 活动状态 1-可预定 2-已售罄 3-已结束
    let act_status: Int64?
    let is_free: Bool?
    /// 详情显示时间
    let end_show_time: String?
    ///  详情显示结束时间
    let start_show_time: String?
    ///0 正常收费， 1免费， 2不在觅野收费
    let free_type: Int64?
    var vr: ActivityVR?
    ///是否需要填身份证，0否1是
    let is_identity: Int64
}

struct ActivityVR: Codable {
    let exist_vr: Bool?
    let img: String?
    var url: String?
}

struct ActivityOtherinfo: Codable {
    let introduce_info: [ActivityDetailContent]?
    let join_notice_info: [ActivityDetailContent]?
    let path_info: [ActivityDetailContent]?
    let buy_ticket_info: [ActivityDetailContent]?
}

struct CampActivityOrganizer: Codable {
    let id: Int64?
    let nick: String?
    let portrait: String?
}

struct CampActivityRelatedCamp: Codable {
    let id: Int64?
    let name: String?
}
