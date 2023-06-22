//
//  ViewController.swift
//  UIKitToSwiftUI
//
//  Created by Kaplan2 on 21/06/23.
//

import UIKit
import SwiftUI

final class ViewController: UIViewController {
  private(set) var imagesArray: [String] = ["umbagog","twinlake","turtlerock","turtlerock_feature"
                                        ,"stmarylake","stmarylake_feature","silversalmoncreek"]
    let topView = UIHostingController(rootView: HomeView())
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        addingTopView()
        
    }
    func addingTopView() {
        addChild(topView)
        topView.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topView.view)
        topView.view.backgroundColor = .red
        topView.didMove(toParent: self)
        addHostConstraints(baseView: topView.view)
        addingSecondViewView()
    }
    
    func addingSecondViewView() {
        let secondView = UIHostingController(rootView: ScrollHomeView(imagesArray: imagesArray))
        addChild(secondView)
        secondView.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondView.view)
        secondView.view.backgroundColor = .orange
        secondView.didMove(toParent: self)
        addHostConstraints(baseView: secondView.view)
    }
    func addSecondConstraints(baseView: UIView,parentView: UIView) {
        baseView.widthConstraint(width: view.bounds.size.width-10)
        baseView.heightMultipleConstraint(multiplier: 0.9, view: view)
        baseView.topToParentConstraint(topValue: 200,view: parentView)
        baseView.centerXConstraint(view: view)
    }
    func addHostConstraints(baseView: UIView) {
        baseView.widthConstraint(width: view.bounds.size.width-10)
        baseView.heightMultipleConstraint(multiplier: 0.2, view: view)
        baseView.topToBaseConstraint(topValue: 10, view: view)
        baseView.centerXConstraint(view: view)
    }
}

struct ViewControllerRepresentable: UIViewRepresentable {
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> some UIView {
        return UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "ViewController").view
    }
    
    
}

struct ViewController_Preview: PreviewProvider {
    static var previews: some View {
        ViewControllerRepresentable()
    }
    
}
