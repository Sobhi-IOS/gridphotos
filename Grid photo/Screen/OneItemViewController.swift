//
//  OneItemViewController.swift
//  Grid photo
//
//  Created by Sobhi Imad on 12/08/2021.
//

import UIKit

class OneItemViewController: UIViewController {

    @IBOutlet weak var gridView: GridView!
    var images = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addData()
        
        displayImages()
    }
    //MARK:- add data images
    private func addData(){
        images.append(UIImage(named: "car")!)
        images.append(UIImage(named: "car")!)
        images.append(UIImage(named: "car")!)
        images.append(UIImage(named: "car")!)
        images.append(UIImage(named: "car")!)
    }
    //MARK:-  Display images
    private func displayImages(){
        if images.count == 1 {
            self.gridView.displayOneImage(object: images)
        }
        else if images.count == 2{
            self.gridView.displayTwoImage(object: images)
        }
        else if images.count == 3 {
            self.gridView.displayThreeImage(object: images)
        }
        else if images.count == 4{
            self.gridView.displayFourImage(object: images)
        }
        else if images.count == 5{
            self.gridView.displayMoreThanFour(object: images)
        }else{
            self.gridView.isHidden = true
        }
    }

}
