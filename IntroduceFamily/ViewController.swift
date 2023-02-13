//
//  ViewController.swift
//  IntroduceFamily
//
//  Created by David Granger on 2/13/23.
//

import UIKit

struct FamilyMember {
    var name: String
    var pictureAsset: String
    var favoriteFood: String
}

class ViewController: UIViewController {
    @IBOutlet weak var davidButtonOutlet: UIButton!
    
    
    
    @IBAction func kashaButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "presentDetailView", sender: kashaButtonOutlet)
    }
    @IBAction func shaylaButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "presentDetailView", sender: shaylaButtonOutlet)
    }
    @IBAction func davidButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "presentDetailView", sender: davidButtonOutlet)
    }
    @IBAction func fayeButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "presentDetailView", sender: fayeButtonOutlet)
    }
    @IBAction func michaelButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "presentDetailView", sender: michaelButtonOutlet)
    }
    @IBAction func daveButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "presentDetailView", sender: daveButtonOutlet)
    }
    
    @IBOutlet weak var kashaButtonOutlet: UIButton!
    @IBOutlet weak var shaylaButtonOutlet: UIButton!
    @IBOutlet weak var fayeButtonOutlet: UIButton!
    @IBOutlet weak var michaelButtonOutlet: UIButton!
    @IBOutlet weak var daveButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sender = sender as? UIButton else { return }
        let detailViewPage: DetailViewer = segue.destination as! DetailViewer
        if sender == daveButtonOutlet {
            let dave = FamilyMember(name: "Dave Granger", pictureAsset: "dave", favoriteFood: "Likes all foods")
            detailViewPage.selectedFamilyMember = dave
        } else if sender == michaelButtonOutlet {
            let michael = FamilyMember(name: "Michael Granger", pictureAsset: "michael", favoriteFood: "Mom's cooking")
            detailViewPage.selectedFamilyMember = michael
        } else if sender == shaylaButtonOutlet {
            let shayla = FamilyMember(name: "Shayla Granger", pictureAsset: "shayla", favoriteFood: "Anything chocolate")
            detailViewPage.selectedFamilyMember = shayla
        } else if sender == fayeButtonOutlet {
            let faye = FamilyMember(name: "Faye Granger", pictureAsset: "faye", favoriteFood: "Chick-fil-A")
            detailViewPage.selectedFamilyMember = faye
        } else if sender == kashaButtonOutlet {
            let kasha = FamilyMember(name: "Kasha Granger", pictureAsset: "kasha", favoriteFood: "Not a picky eater")
            detailViewPage.selectedFamilyMember = kasha
        } else {
            let david = FamilyMember(name: "David Granger", pictureAsset: "david", favoriteFood: "Quality burgers")
            detailViewPage.selectedFamilyMember = david
        }
    }
}

