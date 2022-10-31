//
//  GalleryGenresViewController.swift
//  Gallery
//
//  Created by Pavel on 30.10.22.
//

import UIKit
import SnapKit

class GalleryGenresViewController: UIViewController {
    var tableView = UITableView()
    var cellTitles = ["Abstraction", "Animals", "Anime", "Cities", "Flowers", "Food", "Mountains", "Space", "Sport", "Sunset"]
    var imageNames = ["Dragon", "SnowLeopard", "Girl", "City", "Rose", "Orange", "Fuji", "Space", "Snowboarding", "Sunset"]

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(GalleryGenresTableCell.self, forCellReuseIdentifier: "galleryGenresTableCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 66

        view.addSubview(tableView)

        tableView.snp.makeConstraints { tableView in
            tableView.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            tableView.size.height.equalTo(66)
            tableView.size.width.equalToSuperview()
        }
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Genres"
        tableView.tableHeaderView = UIView()
    }
}
