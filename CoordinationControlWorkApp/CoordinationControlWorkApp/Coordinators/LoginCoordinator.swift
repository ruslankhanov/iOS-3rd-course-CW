//
//  LoginCoordinator.swift
//  CoordinationControlWorkApp
//
//  Created by Ruslan Khanov on 22.11.2021.
//

import Foundation
import UIKit

class LoginCoordinator: Coordinator {

    // MARK: - Instance properties

    var childCoordinators: [Coordinator] = []

    var navigationController: UINavigationController
    var flowCompletionHandler: CoordinatorHandler?

    // MARK: - Init

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: - Instance methods

    func start() {
        showEnterLoginScene()
    }

    private func showEnterLoginScene() {
        let scene = LoginViewController()
        scene.completionHandler = { [weak self] _ in
            self?.flowCompletionHandler?()
        }

        navigationController.pushViewController(scene, animated: true)
    }
}
