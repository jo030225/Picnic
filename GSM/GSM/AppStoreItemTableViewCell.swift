//
//  AppStoreItemTableViewCell.swift
//  GSM
//
//  Created by 조주혁 on 2020/11/05.
//

import UIKit

final class AppStoreItemTableViewCell: UITableViewCell {

    var isUpdateConstraint: Bool = false
    
    var thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .red
        return imageView
    }()
    var titleLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    var descriptionLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    var openButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    override func updateConstraints() {
        if !isUpdateConstraint {
            isUpdateConstraint = true
        }
        
        addSubview(thumbnailImageView)
        
        
        thumbnailImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
        thumbnailImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        thumbnailImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15).isActive = true
        thumbnailImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
        thumbnailImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        
        super.updateConstraints()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    func commonInit() {
//        thumbnailImageView = UIImageView()
//        titleLabel = UILabel()
//        descriptionLabel = UILabel()
//        openButton = UIButton()
//    }
//
//    override func awakeFromNib() {
//        commonInit()
//    }
//
//    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
//        super.init(style: style, reuseIdentifier: reuseIdentifier)
//
//        commonInit()
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
}
