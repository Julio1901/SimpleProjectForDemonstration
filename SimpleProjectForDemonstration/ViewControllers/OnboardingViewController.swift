//
//  OnboardingViewController.swift
//  SimpleProjectForDemonstration
//
//  Created by Julio Cesar Pereira on 30/12/24.
//

import UIKit


class OnboardingViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {

    private let pages: [UIViewController] = [
        OnboardingPageViewController(text: "Bem-vindo ao App!", backgroundColor: .systemPink),
        OnboardingPageViewController(text: "Descubra recursos incríveis.", backgroundColor: .systemGreen),
        OnboardingPageViewController(text: "Organize sua rotina.", backgroundColor: .systemOrange),
        OnboardingPageViewController(text: "Pronto para começar?", backgroundColor: .systemPink)
    ]

    private var currentPageIndex: Int = 0

    // Adicionando o Page Control
    private let pageControl: UIPageControl = {
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.pageIndicatorTintColor = .white
        pageControl.translatesAutoresizingMaskIntoConstraints = false
        return pageControl
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = self
        delegate = self

        // Configura a primeira página
        if let firstPage = pages.first {
            setViewControllers([firstPage], direction: .forward, animated: true, completion: nil)
        }

        // Configura o Page Control
        pageControl.numberOfPages = pages.count
        pageControl.currentPage = 0
        view.addSubview(pageControl)

        NSLayoutConstraint.activate([
            pageControl.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            pageControl.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }

    // MARK: - UIPageViewControllerDataSource

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController), index > 0 else {
            return nil
        }
        return pages[index - 1]
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let index = pages.firstIndex(of: viewController), index < pages.count - 1 else {
            return nil
        }
        return pages[index + 1]
    }

    // MARK: - UIPageViewControllerDelegate

    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
        if completed, let visibleViewController = viewControllers?.first, let index = pages.firstIndex(of: visibleViewController) {
            currentPageIndex = index
            pageControl.currentPage = index // Atualiza o indicador de página
        }
    }
}
