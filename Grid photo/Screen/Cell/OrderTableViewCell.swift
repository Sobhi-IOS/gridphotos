//
//  OrderTableViewCell.swift
//  Wasef
//
//  Created by Sobhi Imad on 25/07/2021.
//

import UIKit

class OrderTableViewCell: UITableViewCell {

    @IBOutlet weak var oneImage: UIImageView!
    @IBOutlet weak var moreCountLbl: UILabel!
    @IBOutlet weak var fourImage: UIImageView!
    @IBOutlet weak var thiredImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var fourView: UIView!
    @IBOutlet weak var thiredView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var firstView: UIView!
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var statusLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var numLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        firstView.layer.borderWidth = 1
        secondView.layer.borderWidth = 1
        thiredView.layer.borderWidth = 1
        fourView.layer.borderWidth = 1
        oneImage.layer.borderWidth = 1

        firstView.layer.borderColor = UIColor.systemGray6.cgColor
        secondView.layer.borderColor = UIColor.systemGray6.cgColor
        thiredView.layer.borderColor = UIColor.systemGray6.cgColor
        fourView.layer.borderColor = UIColor.systemGray6.cgColor
        oneImage.layer.borderColor = UIColor.systemGray6.cgColor

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        oneImage.isHidden = true
        firstView.isHidden = true
        secondView.isHidden = true
        thiredView.isHidden = true
        fourView.isHidden = true

    }
    func displayOneImage(){
        self.oneImage.isHidden = false
        self.firstView.isHidden = true
        self.secondView.isHidden = true
        self.thiredView.isHidden = true
        self.fourView.isHidden = true


    }
    func displayTwoImage(){
        self.oneImage.isHidden = true
        self.firstView.isHidden = false
        self.secondView.isHidden = false
        self.thiredView.isHidden = true
        self.fourView.isHidden = true

    }
    func displayThreeImage(){
        self.oneImage.isHidden = true
        self.firstView.isHidden = false
        self.secondView.isHidden = false
        self.thiredView.isHidden = false
        self.fourView.isHidden = true


    }
    func displayFourImage(){
        self.oneImage.isHidden = true
        self.firstView.isHidden = false
        self.secondView.isHidden = false
        self.thiredView.isHidden = false
        self.fourView.isHidden = false
        self.moreCountLbl.isHidden = true
        self.fourImage.isHidden = false


    }
    func displayMoreThanFour(){
        self.oneImage.isHidden = true
        self.firstView.isHidden = false
        self.secondView.isHidden = false
        self.thiredView.isHidden = false
        self.fourView.isHidden = false
        self.moreCountLbl.isHidden = false
        self.fourImage.isHidden = true
    }
}
