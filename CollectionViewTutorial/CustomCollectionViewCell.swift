//
//  CustomCollectionViewCell.swift
//  CollectionViewTutorial
//
//  Created by Alejandro Guerra Hernandez on 10/02/25.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "CustomCollectionViewCell"
    
    private let myImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFill
        iv.image = UIImage(systemName: "questionmark")
        iv.tintColor = .black
        iv.clipsToBounds = true
        return iv
    }()
    
    public func configure(image: UIImage) {
        myImageView.image = image
        setupUI()
    }
    
    private func setupUI() {
        self.backgroundColor = .systemRed
        
        self.addSubview(myImageView)
        myImageView.frame = CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.myImageView.image = UIImage(systemName: "questionmark")
    }
    
}
