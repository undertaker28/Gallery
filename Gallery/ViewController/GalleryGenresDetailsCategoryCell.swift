//
//  GalleryGenresDetailsCategoryCell.swift
//  Gallery
//
//  Created by Pavel on 31.10.22.
//

import UIKit

class GalleryGenresDetailsCategoryCell: UICollectionViewCell, UICollectionViewDelegateFlowLayout {
    var genre: Category? {
        didSet {
            if let name = genre?.name {
                sectionLabel.text = name
            }
        }
    }
    
    let imageInCellId = "imageInCellId"
    
    let sectionCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        return collectionView
    }()
    
    let sectionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        if UIDevice.current.userInterfaceIdiom == .phone {
            label.font = UIFont.systemFont(ofSize: 14.0, weight: UIFont.Weight.medium)
        } else {
            label.font = UIFont.systemFont(ofSize: 20.0, weight: UIFont.Weight.medium)
        }
        label.textAlignment = .left
        label.textColor = UIColor.darkGray
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(sectionCollectionView)
        sectionCollectionView.dataSource = self
        sectionCollectionView.delegate = self
        sectionCollectionView.register(GenreCell.self, forCellWithReuseIdentifier: imageInCellId)
        
        sectionCollectionView.snp.makeConstraints { collectionView in
            collectionView.leading.equalToSuperview()
            collectionView.trailing.equalToSuperview().offset(-16)
            collectionView.top.equalToSuperview().offset(50)
            collectionView.bottom.equalToSuperview()
        }
        
        addSubview(sectionLabel)
        
        sectionLabel.snp.makeConstraints { label in
            label.leading.equalTo(sectionCollectionView).offset(16)
            label.trailing.equalTo(sectionCollectionView).offset(-16)
            label.bottom.equalTo(sectionCollectionView.snp.top).offset(-16)
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class GenreCell: UICollectionViewCell {
    var cellImage: ImageName? {
        didSet {
            if let imageName = cellImage?.imageName {
                photoImageView.image = UIImage(named: imageName)
            }
        }
    }
    
    let photoImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleToFill
        iv.clipsToBounds = true
        iv.layer.cornerRadius = 15
        iv.layer.masksToBounds = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(photoImageView)
        photoImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16).isActive = true
        photoImageView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0).isActive = true
        photoImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
