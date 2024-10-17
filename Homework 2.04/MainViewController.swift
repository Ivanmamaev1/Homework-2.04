//
//  MainViewController.swift
//  Homework 2.04
//
//  Created by Ivan on 17.10.2024.
//

import UIKit

protocol SettingsViewControllerDelegate: AnyObject {
    func setColor(_ color: UIColor)
}

final class MainViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navigationVC = segue.destination as? SettingsViewController
        navigationVC?.delegate = self
        navigationVC?.newColor = view.backgroundColor
    }
}
// MARK: - SettingsViewControllerDelegate
extension MainViewController: SettingsViewControllerDelegate {
    func setColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
