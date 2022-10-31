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
        
        sectionCollectionView.dataSource = self
        sectionCollectionView.delegate = self
        sectionCollectionView.register(CellWithImages.self, forCellWithReuseIdentifier: imageInCellId)
        
        addSubview(sectionCollectionView)
        addSubview(sectionLabel)
        
        makeConstraints()
    }
    
    func makeConstraints() {
        sectionCollectionView.snp.makeConstraints { collectionView in
            collectionView.leading.equalToSuperview()
            collectionView.trailing.equalToSuperview().offset(-16)
            collectionView.top.equalToSuperview().offset(50)
            collectionView.bottom.equalToSuperview()
        }
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

class CellWithImages: UICollectionViewCell {
    var cellImage: ImageName? {
        didSet {
            if let imageName = cellImage?.imageName {
                photoImageView.image = UIImage(named: imageName)
            }
        }
    }
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 15
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(photoImageView)
        makeConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func makeConstraints() {
        photoImageView.snp.makeConstraints { imageView in
            imageView.leading.equalToSuperview().offset(16)
            imageView.trailing.equalToSuperview()
            imageView.bottom.equalToSuperview()
            imageView.top.equalToSuperview()
        }
    }
}
