//
//  IndicatorView.swift
//
//  Created by Ratnesh on 12/01/17.
//

import UIKit

class IndicatorView: NSObject {
    
    fileprivate var _indicatorView: UIActivityIndicatorView = {
        let iv = UIActivityIndicatorView()
        iv.activityIndicatorViewStyle = .white
        iv.color = UIColor.gray
        iv.hidesWhenStopped = true
        iv.translatesAutoresizingMaskIntoConstraints = false
        return iv
    }()
    
    fileprivate let _indicatorLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.gray
        label.text = Messages.loading
        label.font = UIFont(name: FontName.LatoRegular, size: 12.0)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init() {
        super.init()
    }
    
    func showIndicator(`in` view: UIView) {
        view.addSubview(_indicatorView)
        view.addSubview(_indicatorLabel)
        _indicatorView.startAnimating()
        _indicatorView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        _indicatorView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        _indicatorLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        _indicatorLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 25).isActive = true
    }
    
    func start() {
        self._indicatorView.startAnimating()
    }
    
    func stop() {
        self._indicatorView.stopAnimating()
        self._indicatorView.removeFromSuperview()
        self._indicatorLabel.removeFromSuperview()
    }

    
}
