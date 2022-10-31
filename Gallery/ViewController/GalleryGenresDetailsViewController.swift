//
//  GalleryGenresDetailsViewController.swift
//  Gallery
//
//  Created by Pavel on 31.10.22.
//

import UIKit

class GalleryGenresDetailsViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let titleInCellId = "titleInCellId"
    var index: Int = 0
    var titles = ["Abstraction", "Animals", "Anime", "Cities", "Flowers", "Food", "Mountains", "Space", "Sport", "Sunset"]
    
    var genres: [Category]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genres = Category.addImagesInCategory(index: index)
        collectionView.backgroundColor = .white
        collectionView.register(GalleryGenresDetailsCategoryCell.self, forCellWithReuseIdentifier: titleInCellId)
        navigationItem.title = titles[index]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: titleInCellId, for: indexPath) as! GalleryGenresDetailsCategoryCell
        cell.genre = genres?[indexPath.item]
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if let count = genres?.count {
            return count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.frame.width * 4 / 8)
    }
}
