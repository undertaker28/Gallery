//
//  UICollectionViewDelegate+Extensions.swift
//  Gallery
//
//  Created by Pavel on 31.10.22.
//

import UIKit

extension GalleryGenresDetailsCategoryCell: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: frame.width * 4 / 10, height: frame.height * 4 / 6)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
