import Foundation
import UIKit

extension ViewController {
    func createLayout() -> UICollectionViewCompositionalLayout {
        
        return UICollectionViewCompositionalLayout { section, _ in
            switch section {
            case 0: return createStorySection()
            case 1: return createMessageSection()
            case 2: return createBannerSection()
            default: return createImageSection()
            }
        }
        
        func createStorySection() -> NSCollectionLayoutSection {
            
            let itemLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
            let item = NSCollectionLayoutItem(layoutSize: itemLayoutSize)
            
            let groupLayoutSize = NSCollectionLayoutSize(widthDimension: .absolute(100), heightDimension: .estimated(104))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupLayoutSize, repeatingSubitem: item, count: 1)
            group.contentInsets = .init(top: 0, leading: 0, bottom: 0, trailing: 20)
            
            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .continuous
            section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 45, trailing: 30)
            return section
        }
        
        func createMessageSection() -> NSCollectionLayoutSection {
            
            let itemLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
            let item = NSCollectionLayoutItem(layoutSize: itemLayoutSize)
            item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0)
            
            let groupLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.85), heightDimension: .estimated(98))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupLayoutSize, repeatingSubitem: item, count: 2)
            group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20)
            
            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .groupPaging
            section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 45, trailing: 30)
            return section
        }
        
        func createBannerSection() -> NSCollectionLayoutSection {
            
            let itemLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
            let item = NSCollectionLayoutItem(layoutSize: itemLayoutSize)
            
            let groupLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.85), heightDimension: .absolute(175))
            let group = NSCollectionLayoutGroup.horizontal(layoutSize: groupLayoutSize, repeatingSubitem: item, count: 1)
            group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20)
            
            let section = NSCollectionLayoutSection(group: group)
            section.orthogonalScrollingBehavior = .groupPaging
            section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 60, trailing: 0)
            return section
        }
        
        func createImageSection() -> NSCollectionLayoutSection {
            
            let itemLayoutSize = NSCollectionLayoutSize(widthDimension: .absolute(370), heightDimension: .fractionalHeight(1))
            let item = NSCollectionLayoutItem(layoutSize: itemLayoutSize)
            // выставляю парметры отступов тут, а не для группы
            item.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 23, trailing: 30)
            
            let groupLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(239))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupLayoutSize, repeatingSubitem: item, count: 1)
            // group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0)
            
            let section = NSCollectionLayoutSection(group: group)
            section.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 0)
            return section
        }
    }
}

