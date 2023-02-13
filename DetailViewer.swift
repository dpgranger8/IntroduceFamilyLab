//
//  DetailViewer.swift
//  IntroduceFamily
//
//  Created by David Granger on 2/13/23.
//

import UIKit



class DetailViewer: UIViewController {

    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
//    var labelString: String?
//    var foodLabelString: String?
//    var whichImage: String = ""
    var selectedFamilyMember: FamilyMember!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.titleLabel.text = selectedFamilyMember.name
        
        self.foodLabel.text = selectedFamilyMember.favoriteFood
        self.detailImageView.image = UIImage(named: selectedFamilyMember.pictureAsset)
        // Do any additional setup after loading the view.
    }

}
