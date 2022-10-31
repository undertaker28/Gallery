//
//  UICollectionViewController+Extensions.swift
//  Gallery
//
//  Created by Pavel on 31.10.22.
//

import UIKit

extension GalleryGenresDetailsCategoryCell: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = genre?.imageNames?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: imageInCellId, for: indexPath) as! CellWithImages
        cell.cellImage = genre?.imageNames?[indexPath.item]
        return cell
    }
}
