//
//  StationResponseModel.swift
//  SubwayApp
//
//  Created by 박진성 on 2023/08/18.
//

import Foundation

struct StationResponseModel : Decodable {
    
    var stations : [Station] { searchInfo.row } //함수 사용에 간단하게 접근하기 위해
    
    private let searchInfo : SearchInfoBySubWayNameServiceModel
    
    enum CodingKeys : String, CodingKey {
        case searchInfo = "SearchInfoBySubwayNameService"
    }
    struct SearchInfoBySubWayNameServiceModel : Decodable {
        var row : [Station] = []
    }
}

struct Station : Decodable {
    
    let stationName : String
    let lineNumber : String
    
    enum CodingKeys : String, CodingKey {
        case stationName = "STATION_NM"
        case lineNumber = "LINE_NUM"
    }
    
}
