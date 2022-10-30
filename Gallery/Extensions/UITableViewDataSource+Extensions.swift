//
//  UITableViewDataSource+Extensions.swift
//  Gallery
//
//  Created by Pavel on 30.10.22.
//

import UIKit

extension GalleryGenresViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "galleryGenresTableCell", for: indexPath) as? GalleryGenresTableCell else {
            fatalError("Unable to dequeue galleryGenresTableCell")
        }
        
        cell.accessoryType = .disclosureIndicator
        
        let imageName = imageNames[indexPath.row]
        cell.cellImageView.image = UIImage(named: imageName)
        
        let title = cellTitles[indexPath.row]
        cell.cellLabel.text = title
        
        return cell
    }
}
