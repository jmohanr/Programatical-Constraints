//
//  SecondVC.swift
//  UIKitToSwiftUI
//
//  Created by Kaplan2 on 21/06/23.
//

import UIKit
import SwiftUI

final class SecondVC: UIViewController {
    
 
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Title Label"
        label.labeUI(lines: 0,alignMent: .left,textColor: .white,bgColor: .clear,
                     font: UIFont.systemFont(ofSize: 40, weight: .bold))
        return label
    }()
    
    lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = """
        Kotlin helped Zomato reduce the number of lines of code in their app significantly, and it has also helped them find important defects in their app at compile time.
        """
        label.labeUI(lines: 0,alignMent: .center,textColor: .white,bgColor: .clear,
                     font: UIFont.systemFont(ofSize: 25))
        return label
    }()
    
    lazy var imageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "hiddenlake")
        return imageView
    }()
    
    lazy var topView: UIView = {
       let tview = UIView()
        tview.addGradientBackground(colors: [.systemRed.withAlphaComponent(0.6),.black.withAlphaComponent(0.7)])
          return tview
    }()
    
    lazy var topImageView: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.image = UIImage(named: "hiddenlake")
        return imageView
    }()
    
    lazy var tableView: UITableView = {
        let tbView = UITableView()
        tbView.dataSource = self
        tbView.delegate = self
        tbView.separatorColor = .none
        tbView.separatorStyle = .none
        tbView.backgroundColor = .clear
        return tbView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGradientBackground(colors: [.systemPink.withAlphaComponent(0.6),.green.withAlphaComponent(0.7),.blue.withAlphaComponent(0.8)])
        addTopView()
        addHeaderImage()
        addProfileImage()
        addHeaderLabel()
        addSubHeaderLabel()
        addTableView()
    }
    func addTopView() {
        view.addSubview(topView)
        topView.cornerRadius(value: 10)
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.topToBaseConstraint(topValue: 10, view: view)
        topView.leadingToBaseViewConstraint(leading: 10,view: view)
        topView.heightMultipleConstraint(multiplier: 0.2,view: view)
        topView.trailingToBaseConstraint(trailing: 10, view: view)
    }
    
    func addHeaderImage() {
        topView.addSubview(topImageView)
        topImageView.cornerRadius(value: 10)
        topImageView.layer.masksToBounds = true
        topImageView.translatesAutoresizingMaskIntoConstraints = false
        topImageView.topWithInParentConstraint(topValue: 10,view: topView)
        topImageView.leadingWithInParentConstraint(leading: 10,view: topView)
//        topView.trailingWithInParentConstraint(trailing: -1,view: topView)
//        topView.bottomWithInParentConstraint(bottom: -1,view: topView)
        topImageView.centerXConstraint(view: topView)
        topImageView.centerYConstraint(view: topView)
    }
    
    func addHeaderLabel() {
        view.addSubview(titleLabel)
        titleLabel.cornerRadius(value: 10)
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.topToParentConstraint(topValue: 10, view: topView)
        titleLabel.leadingToParentConstraint(leading: 10, view: imageView)
        titleLabel.trailingToBaseConstraint(trailing: 10, view: view)

    }
    func addProfileImage() {
        view.addSubview(imageView)
        imageView.cornerRadius(value: 10)
        imageView.layer.masksToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topToParentConstraint(topValue: 10, view: topView)
        imageView.leadingToBaseViewConstraint(leading: 10, view: view)
        imageView.heightConstraint(height: 150)
        imageView.widthConstraint(width: 150)
        imageView.contentMode = .scaleToFill
    }
    func addSubHeaderLabel() {
        view.addSubview(subTitleLabel)
        subTitleLabel.cornerRadius(value: 10)
        subTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subTitleLabel.topToParentConstraint(topValue: 10, view: titleLabel)
        subTitleLabel.leadingToParentConstraint(leading: 10, view: imageView)
        subTitleLabel.trailingToBaseConstraint(trailing: 10, view: view)
    }
    func addTableView() {
        view.addSubview(tableView)
        tableView.register(HomeTbCell.self, forCellReuseIdentifier: "HomeTbCell")
        tableView.cornerRadius(value: 10)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.topToParentConstraint(topValue: 10,view: subTitleLabel)
        tableView.leadingToBaseViewConstraint(leading: 10,view: view)
        tableView.trailingToBaseConstraint(trailing: 10, view: view)
        tableView.bottomToBaseConstraint(bottom: 10,view: view)
        tableView.centerXConstraint(view: view)
    }
}
struct SecondVCRepresentable: UIViewRepresentable {
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> some UIView {
        return UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondVC").view
    }
    
}

struct SecondVC_Preview: PreviewProvider {
    static var previews: some View {
        SecondVCRepresentable()
    }
}


extension SecondVC: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Contact.getContacts().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTbCell") as? HomeTbCell {
            cell.contact = Contact.getContacts()[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
}
