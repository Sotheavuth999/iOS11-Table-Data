//
//  ProductVC.swift
//  iOS11-Table-Data
//
//  Created by Sotheavuth Nguon on 8/23/17.
//  Copyright © 2017 Sotheavuth Nguon. All rights reserved.
//

import UIKit

class ProductVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    private(set) public var products = [Product]()
    
    @IBOutlet weak var productCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.productCollectionView.dataSource = self
        self.productCollectionView.delegate = self
    }
    
    func initProducts(category: Category) {
        self.products = DataService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductCollectionViewCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductCollectionViewCell()
        }
    }

}
