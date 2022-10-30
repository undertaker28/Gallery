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
    var cellTitles = ["Animals", "Anime", "Cities", "Flowers", "Food", "Mountains", "Music", "Space", "Sport", "Sunset"]
    var imageNames = ["SnowLeopard", "Girl", "City", "Rose", "Orange", "Fuji", "HamsterWithHeadphones", "Space", "FCBayern", "Sunset"]

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(GalleryGenresTableCell.self, forCellReuseIdentifier: "galleryGenresTableCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.rowHeight = 60

        view.addSubview(tableView)

        tableView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.size.height.equalTo(60)
            make.size.width.equalToSuperview()
        }
        
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Genres"
        tableView.tableHeaderView = UIView()
    }
}
