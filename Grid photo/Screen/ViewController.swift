//
//  ViewController.swift
//  Grid photo
//
//  Created by Sobhi Imad on 12/08/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!{
        didSet{
            tableView.dataSource = self
            tableView.delegate = self
            tableView.separatorStyle = .none
            tableView.rowHeight = 156
            tableView.register(UINib(nibName: "OrderTableViewCell", bundle: nil), forCellReuseIdentifier: "OrderTableViewCell")
            tableView.backgroundColor = .systemGray5
        }

    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.title = "Grid photo"
    }


}

//MARK:- UITableViewDataSource
extension ViewController: UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell") as! OrderTableViewCell
        if indexPath.row == 0 {
            cell.displayOneImage()
        }
        if indexPath.row == 1 {
            cell.displayTwoImage()
        }
        if indexPath.row == 2{
            cell.displayThreeImage()
        }
        if indexPath.row == 3{
            cell.displayFourImage()
        }
        if indexPath.row == 4 {
            cell.displayMoreThanFour()
        }
        return cell
    }


}

