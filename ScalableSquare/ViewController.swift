//
//  ViewController.swift
//  ScalableSquare
//
//  Created by Eduard Sinyakov on 3/9/21.
//

import UIKit

final class ViewController: UIViewController {
    private let square = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        setupSquareAndAnimate()
    }

    private func setupView() {
        view.backgroundColor = .white
    }

    private func setupSquareAndAnimate() {
        view.addSubview(square)
        square.backgroundColor = .green
        square.translatesAutoresizingMaskIntoConstraints = false

        let horizontalConstraint = NSLayoutConstraint(item: square, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: square, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)
        let widthConstraint = NSLayoutConstraint(item: square, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        let heightConstraint = NSLayoutConstraint(item: square, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        view.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])

        UIView.animate(withDuration: 2, animations: { [weak self] in
            guard let self = self else { return }
            self.square.transform = CGAffineTransform(scaleX: 2, y: 2)
        })
    }
}

