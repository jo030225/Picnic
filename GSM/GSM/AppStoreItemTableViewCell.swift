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
        imageView.backgroundColor = UIColor(red: 196/255, green: 196/255, blue: 196/255, alpha: 1.0)
        imageView.layer.cornerRadius = 10
        return imageView
    }()
    var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "재르시 키보드"
        return label
    }()
    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "jeasungLEE"
        label.textColor = UIColor(red: 158/255, green: 160/255, blue: 161/255, alpha: 1.0)
        label.font = UIFont.systemFont(ofSize: 10)
        return label
    }()
    var openButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("보기", for: .normal)
        button.setTitleColor(UIColor(red: 52/255, green: 120/255, blue: 246/255, alpha: 1.0), for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        button.backgroundColor = UIColor(red: 238/255, green: 238/255, blue: 239/255, alpha: 1.0)
        button.layer.cornerRadius = 14
        return button
    }()
    
    override func updateConstraints() {
        if !isUpdateConstraint {
            isUpdateConstraint = true
            
            addSubview(thumbnailImageView)
            addSubview(titleLabel)
            addSubview(descriptionLabel)
            addSubview(openButton)
            
            thumbnailImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
            thumbnailImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
            thumbnailImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15).isActive = true
            thumbnailImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
            thumbnailImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
            
            
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 22).isActive = true
            titleLabel.leadingAnchor.constraint(equalTo: thumbnailImageView.trailingAnchor, constant: 10).isActive = true
            titleLabel.trailingAnchor.constraint(equalTo: openButton.leadingAnchor, constant: 15).isActive = true
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0).isActive = true
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 0).isActive = true
            descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 0).isActive = true
            
            openButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
            openButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
            openButton.widthAnchor.constraint(equalToConstant: 66).isActive = true
        }
        
        super.updateConstraints()
    }
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


