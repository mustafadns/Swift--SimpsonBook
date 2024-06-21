//
//  detailsVC.swift
//  SimpsonBook
//
//  Created by Mustafa DANIŞAN on 30.05.2024.
//

import UIKit

class detailsVC: UIViewController {

    // Seçilen simpson'un özelliklerinin detaylı gösterildiği sayfa ...
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    // Seçilen simpson'un tanımlanması ...
    var selectedSimpson : Simpson?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Seçilen simpsonun özelliklerinin gerekli yerlere yazılması işlemi ...
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
    }

}
