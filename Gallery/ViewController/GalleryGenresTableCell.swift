//
//  GalleryGenresTableCell.swift
//  Gallery
//
//  Created by Pavel on 30.10.22.
//

import UIKit

class GalleryGenresTableCell: UITableViewCell {
    var cellImageView = UIImageView()
    var cellLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "galleryGenresTableCell")
        
        cellImageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        cellImageView.layer.masksToBounds = true
        cellImageView.layer.cornerRadius = cellImageView.bounds.width / 2
        cellImageView.clipsToBounds = true
        
        contentView.addSubview(cellImageView)
        
        cellLabel.translatesAutoresizingMaskIntoConstraints = false
        cellLabel.font = UIFont.systemFont(ofSize: 16)
        
        contentView.addSubview(cellLabel)
        
        cellImageView.snp.makeConstraints { image in
            image.centerY.equalTo(contentView)
            image.size.width.height.equalTo(40)
            image.leading.equalTo(contentView).offset(20)
        }
        
        cellLabel.snp.makeConstraints { label in
            label.centerY.equalTo(contentView)
            label.leading.equalTo(cellImageView.snp.trailing).offset(10)
        }
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
