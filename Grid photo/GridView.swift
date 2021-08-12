//
//  GridView.swift
//  Grid photo
//
//  Created by Sobhi Imad on 12/08/2021.
//

import UIKit


class GridView: UIView {
    @IBOutlet weak var oneImage: UIImageView!{
        didSet{
            oneImage.layer.borderWidth = 1
            oneImage.layer.borderColor = UIColor.systemGray6.cgColor
        }
    }
    @IBOutlet weak var fourImage: UIImageView!
    @IBOutlet weak var thiredImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var fourView: UIView!{
        didSet{
            fourView.layer.borderWidth = 1
            fourView.layer.borderColor = UIColor.systemGray6.cgColor
        }
    }
    @IBOutlet weak var thiredView: UIView!{
        didSet{
            thiredView.layer.borderWidth = 1
            thiredView.layer.borderColor = UIColor.systemGray6.cgColor
        }
    }
    @IBOutlet weak var secondView: UIView!{
        didSet{
            secondView.layer.borderWidth = 1
            secondView.layer.borderColor = UIColor.systemGray6.cgColor
        }
    }
    @IBOutlet weak var firstView: UIView!{
        didSet{
            firstView.layer.borderWidth = 1
            firstView.layer.borderColor = UIColor.systemGray6.cgColor
        }
    }
    @IBOutlet weak var moreCountLbl: UILabel!

    func displayOneImage(object:[UIImage]){
        self.oneImage.isHidden = false
        self.firstView.isHidden = true
        self.secondView.isHidden = true
        self.thiredView.isHidden = true
        self.fourView.isHidden = true
        self.oneImage.image = object[0]


    }
    func displayTwoImage(object:[UIImage]){
        self.oneImage.isHidden = true
        self.firstView.isHidden = false
        self.secondView.isHidden = false
        self.thiredView.isHidden = true
        self.fourView.isHidden = true
        self.firstImage.image = object[0]
        self.secondImage.image = object[1]

    }
    func displayThreeImage(object:[UIImage]){
        self.oneImage.isHidden = true
        self.firstView.isHidden = false
        self.secondView.isHidden = false
        self.thiredView.isHidden = false
        self.fourView.isHidden = true
        self.firstImage.image = object[0]
        self.secondImage.image = object[1]
        self.thiredImage.image = object[2]



    }
    func displayFourImage(object:[UIImage]){
        self.oneImage.isHidden = true
        self.firstView.isHidden = false
        self.secondView.isHidden = false
        self.thiredView.isHidden = false
        self.fourView.isHidden = false
        self.moreCountLbl.isHidden = true
        self.fourImage.isHidden = false
        self.firstImage.image = object[0]
        self.secondImage.image = object[1]
        self.thiredImage.image = object[2]
        self.fourImage.image = object[3]


    }
    func displayMoreThanFour(object:[UIImage]){
        self.oneImage.isHidden = true
        self.firstView.isHidden = false
        self.secondView.isHidden = false
        self.thiredView.isHidden = false
        self.fourView.isHidden = false
        self.moreCountLbl.isHidden = false
        self.fourImage.isHidden = true
        self.firstImage.image = object[0]
        self.secondImage.image = object[1]
        self.thiredImage.image = object[2]
        self.fourImage.image = object[3]

    }

    
}
