//
//  ProjectManager - MainViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class MainViewController: UIViewController {
    
    // MARK: Properties
    
    private let projectManagerView = MainProjectManagerView()
    private let section: [String] = ["TODO", "DOING", "DONE"]
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = projectManagerView
        
        configureUI()
        projectManagerView.setUpTableView(with: self)
    }
    
    // MARK: Private Methods
    
    private func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Project Manager"
    }
}

// MARK: - TableViewDelegate

extension MainViewController: UITableViewDelegate {
}

// MARK: - TableViewDataSource

extension MainViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch tableView {
        case projectManagerView.leftTableView:
            return "TODO"
        case projectManagerView.centerTableView:
            return "DOING"
        case projectManagerView.rightTableView:
            return "DONE"
        default:
            return String()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch tableView {
        case projectManagerView.leftTableView:
            return 10
        case projectManagerView.centerTableView:
            return 1
        case projectManagerView.rightTableView:
            return 5
        default:
            return .zero
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch tableView {
        case projectManagerView.leftTableView:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: MainLeftTableViewCell.identifier,
                for: indexPath
            )
            return cell
        case projectManagerView.centerTableView:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: MainLeftTableViewCell.identifier,
                for: indexPath
            )
            return cell
        case projectManagerView.rightTableView:
            let cell = tableView.dequeueReusableCell(
                withIdentifier: MainLeftTableViewCell.identifier,
                for: indexPath
            )
            return cell
        default:
            return UITableViewCell()
        }
    }
}