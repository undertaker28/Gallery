//
//  UITableViewDelegate+Extensions.swift
//  Gallery
//
//  Created by Pavel on 30.10.22.
//

import UIKit

extension GalleryGenresViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        if indexPath.row == tableView.numberOfRows(inSection: indexPath.section) - 1 {
            cell.separatorInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: tableView.bounds.width)
        }
    }
    
    // MARK: - Going on tap to GalleryGenresDetailsViewController
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailsViewController = GalleryGenresDetailsViewController(collectionViewLayout: UICollectionViewFlowLayout())
        detailsViewController.index = indexPath.row
        navigationController?.pushViewController(detailsViewController, animated: true)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            cellTitles.remove(at: indexPath.row)
            imageNames.remove(at: indexPath.row)
            titles.remove(at: indexPath.row)
            chapters.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
}
