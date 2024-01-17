//
//  MainViewController+TableView.swift
//  movies-trends
//
//  Created by Andrés Rechimon on 17/01/2024.
//

import UIKit

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
        func setupTableView() {
            self.tableView.delegate = self
            self.tableView.dataSource = self
            self.tableView.backgroundColor = .clear
            
            self.registerCells()
        }
        
        func reloadTableView() {
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
        func registerCells() {
            self.tableView.register(MainMovieCell.register(), forCellReuseIdentifier: MainMovieCell.identifier)
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            viewModel.numberOfSections()
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            200
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            viewModel.numberOfRows(in: section)
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MainMovieCell.identifier, for: indexPath) as? MainMovieCell else {
                return UITableViewCell()
            }
            cell.setupCell(viewModel: moviesDataSource[indexPath.row])
            cell.selectionStyle = .none
            return cell
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let movieId = moviesDataSource[indexPath.row].id
            self.openDetails(movieId: movieId)
        }
}
