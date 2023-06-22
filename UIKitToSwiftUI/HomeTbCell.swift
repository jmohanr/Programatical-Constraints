//
//  HomeTbCell.swift
//  UIKitToSwiftUI
//
//  Created by Kaplan2 on 22/06/23.
//

import UIKit

struct Contact {
    let name:String?
    let jobTitle:String?
    let country:String?
    
    static func getContacts() -> [Contact] {
        let contacts = [
            Contact(name: "Kelly Goodwin", jobTitle: "Designer", country: "bo"),
            Contact(name: "Mohammad Hussain", jobTitle: "SEO Specialist", country: "be"),
            Contact(name: "John Young", jobTitle: "Interactive Designer", country: "af"),
            Contact(name: "Tamilarasi Mohan", jobTitle: "Architect", country: "al"),
            Contact(name: "Kim Yu", jobTitle: "Economist", country: "br"),
            Contact(name: "Derek Fowler", jobTitle: "Web Strategist", country: "ar"),
            Contact(name: "Shreya Nithin", jobTitle: "Product Designer", country: "az"),
            Contact(name: "Emily Adams", jobTitle: "Editor", country: "bo"),
            Contact(name: "Aabidah Amal", jobTitle: "Creative Director", country: "au"),
        ]
        return contacts
    }
}
class HomeTbCell: UITableViewCell {
    var contact: Contact? {
        didSet {
            guard let item = contact else { return }
            if let name = item.jobTitle {
                profileName.text = name
            }
            if let img = item.name {
                profileImage.image = UIImage(named: img)
            }
        }
    }
    
    lazy var profileName: UILabel = {
        let label = UILabel()
        label.text = "Title Label"
        label.labeUI(lines: 0,alignMent: .left,textColor: .white,bgColor: .clear,
                     font: UIFont.systemFont(ofSize: 25, weight: .light))
        return label
    }()
    
    lazy var profileImage: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "hiddenlake")
        imageView.layer.cornerRadius = 35
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var subImage: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "ar")
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var baseView: UIView = {
       let tview = UIView()
        tview.clipsToBounds = true
        tview.cornerRadius(value: 10)
        tview.backgroundColor = .systemPink
          return tview
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    func addBaseView() {
        contentView.addSubview(baseView)
        baseView.addShadow(color: .black)
        baseView.translatesAutoresizingMaskIntoConstraints = false
        baseView.topToBaseConstraint(topValue: 7,view: contentView)
        baseView.leadingToBaseViewConstraint(leading: 10,view: contentView)
        baseView.trailingToBaseConstraint(trailing: 10,view: contentView)
        baseView.bottomToBaseConstraint(bottom: -7,view: contentView)
        baseView.centerYConstraint(view: contentView)
    }
    
    func addImage() {
        addSubview(profileImage)
        profileImage.translatesAutoresizingMaskIntoConstraints = false
        profileImage.centerYConstraint(view: baseView)
        profileImage.leadingWithInParentConstraint(leading: 10,view: baseView)
        profileImage.heightConstraint(height: 70)
        profileImage.widthConstraint(width: 70)
    }
    
    func addIProileName() {
        addSubview(profileName)
        profileName.translatesAutoresizingMaskIntoConstraints = false
        profileName.centerYConstraint(view: baseView)
        profileName.leadingToParentConstraint(leading: 10,view: profileImage)
        profileName.trailingWithInParentConstraint(trailing: -10,view: baseView)
        profileName.topWithInParentConstraint(topValue: 0,view: baseView)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.selectionStyle = .none
        addBaseView()
        addImage()       
        addIProileName()
       
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
      }
}
