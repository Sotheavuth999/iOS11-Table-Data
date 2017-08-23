//
//  CategoryTableViewCell.swift
//  iOS11-Table-Data
//
//  Created by Sotheavuth Nguon on 8/23/17.
//  Copyright © 2017 Sotheavuth Nguon. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    
    @IBOutlet weak var categoryTitle: UILabel!
    
    func updateViews(category: Category) {
        self.categoryImage.image = UIImage(named: category.imageName)
        self.categoryTitle.text = category.title
    }
    
}
