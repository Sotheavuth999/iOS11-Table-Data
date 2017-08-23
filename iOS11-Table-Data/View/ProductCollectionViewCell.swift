//
//  ProductCollectionViewCell.swift
//  iOS11-Table-Data
//
//  Created by Sotheavuth Nguon on 8/23/17.
//  Copyright © 2017 Sotheavuth Nguon. All rights reserved.
//

import UIKit

class ProductCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        self.productImage.image = UIImage(named: product.imageName)
        self.productPrice.text = product.price
        self.productTitle.text = product.title
    }
    
}
