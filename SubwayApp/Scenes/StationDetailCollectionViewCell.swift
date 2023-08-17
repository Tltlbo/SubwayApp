//
//  StationDetailCollectionViewCell.swift
//  SubwayApp
//
//  Created by 박진성 on 2023/08/17.
//

import UIKit
import SnapKit

final class StationDetailCollectionViewCell : UICollectionViewCell {
    
    private lazy var lineLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .bold)
        
        return label
    }()
    
    private lazy var remainTimeLabel : UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 15.0, weight: .medium)
        
        return label
    }()
    
    func setup() {
        layer.cornerRadius = 12.0
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.2
        layer.shadowRadius = 10.0
        
        backgroundColor = .systemBackground //백그라운드에 색상이 없으면 그림자 생성 x
        
        [lineLabel, remainTimeLabel].forEach {addSubview($0)}
        
        lineLabel.snp.makeConstraints {
            $0.leading.equalToSuperview().inset(16.0)
            $0.top.equalToSuperview().inset(16.0)
        }
        
        remainTimeLabel.snp.makeConstraints {
            $0.leading.equalTo(lineLabel)
            $0.top.equalTo(lineLabel.snp.bottom).offset(16.0)
            $0.bottom.equalToSuperview().inset(16.0)
        }
        
        lineLabel.text = "한양대 방면"
        remainTimeLabel.text = "뚝섬 도착"
    }
}
