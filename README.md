# Programatical-Constraints
extension UIView {
    ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////---->TOP CONSTRAINTS<---////////////////////////////////////////////////////////////////////
    
    func topToBaseConstraint(topValue: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.topAnchor.constraint(equalTo: top.safeAreaLayoutGuide.topAnchor, constant: topValue).isActive = true
        }
    }
    
    func topToParentConstraint(topValue: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.topAnchor.constraint(equalTo: top.bottomAnchor, constant: topValue).isActive = true
        }
    }
    func topWithInParentConstraint(topValue: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.topAnchor.constraint(equalTo: top.topAnchor, constant: topValue).isActive = true
        }
    }
    ///////////////////////////////// ////////////////////////////////////////////////////////////////---->BOTTOM CONSTRAINTS<---///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    func bottomToBaseConstraint(bottom: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.bottomAnchor.constraint(equalTo: top.safeAreaLayoutGuide.bottomAnchor, constant: bottom).isActive = true
        }
    }
    
    func bottomToParentConstraint(bottom: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.bottomAnchor.constraint(equalTo: top.topAnchor, constant: bottom).isActive = true
        }
    }
    func bottomWithInParentConstraint(bottom: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.bottomAnchor.constraint(equalTo: top.bottomAnchor, constant: bottom).isActive = true
        }
    }
    ///////////////////////////////// ////////////////////////////////////////////////////////////////---->LEADING CONSTRAINTS<---///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    func leadingToBaseViewConstraint(leading: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.leadingAnchor.constraint(equalTo: top.safeAreaLayoutGuide.leadingAnchor, constant: leading).isActive = true
        }
    }
    func leadingToParentConstraint(leading: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.leadingAnchor.constraint(equalTo: top.trailingAnchor, constant: leading).isActive = true
        }
    }
    func leadingWithInParentConstraint(leading: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.leadingAnchor.constraint(equalTo: top.leadingAnchor, constant: leading).isActive = true
        }
    }
    ///////////////////////////////// ////////////////////////////////////////////////////////////////---->TRAILING CONSTRAINTS<---///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    
    func trailingToBaseConstraint(trailing: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.trailingAnchor.constraint(equalTo: top.safeAreaLayoutGuide.trailingAnchor, constant: -trailing).isActive = true
        }
    }
    
    func trailingToParentConstraint(trailing: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.trailingAnchor.constraint(equalTo: top.leadingAnchor, constant: trailing).isActive = true
        }
    }
    func trailingWithInParentConstraint(trailing: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.trailingAnchor.constraint(equalTo: top.trailingAnchor, constant: trailing).isActive = true
        }
    }
    ///////////////////////////////// ////////////////////////////////////////////////////////////////---->HEIGHT CONSTRAINTS<---///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    func heightConstraint(height: CGFloat,view:UIView? = nil) {
        
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    func heightMultipleConstraint(multiplier: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.heightAnchor.constraint(equalTo: top.heightAnchor, multiplier: multiplier).isActive = true
        }
    }
    ///////////////////////////////// ////////////////////////////////////////////////////////////////---->WIDTH CONSTRAINTS<---///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    func widthConstraint(width: CGFloat,view:UIView? = nil) {
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func widthMultipleConstraint( multiplier: CGFloat,view:UIView? = nil) {
        if let top = view {
            self.heightAnchor.constraint(equalTo: top.widthAnchor, multiplier: multiplier).isActive = true
        }
    }
    ///////////////////////////////// ////////////////////////////////////////////////////////////////---->REMAING CONSTRAINTS<---///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
    
    func centerXConstraint(view:UIView) {
        self.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func centerYConstraint(view:UIView) {
        self.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func cornerRadius(value: CGFloat){
        self.layer.cornerRadius = value
    }
    func addShadow(color: UIColor) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize(width: 2, height: 2)
        self.layer.shadowRadius = 6
        self.layer.masksToBounds = false
    }
    func addGradientBackground(colors: [UIColor]) {
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = colors.map { $0.cgColor }
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}

extension UILabel {
    public func labeUI(lines: Int = 0,alignMent: NSTextAlignment = .left, textColor: UIColor = .black,bgColor: UIColor = .blue, font: UIFont = UIFont.systemFont(ofSize: 40, weight: .bold)) {
        self.textColor = textColor
        self.textAlignment = alignMent
        self.numberOfLines = lines
        self.backgroundColor = bgColor
        self.font = font
    }
    
}
