import Foundation
import UIKit

extension ViewController {
    func createLayout() -> UICollectionViewCompositionalLayout {
        
        return UICollectionViewCompositionalLayout { section, _ in
            switch section {
            case 0:
                let item = createItem(withSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                
                let group = createGroup(
                    withSize: NSCollectionLayoutSize(widthDimension: .absolute(100), heightDimension: .estimated(104)),
                    insets: NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20),
                    item: item,
                    isVerticalOrientation: false)
                
                let section = createSection(
                    withscrollingBehaviour: .continuous,
                    group: group,
                    insets: NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 45, trailing: 30))
                return section
                
            case 1:
                let item = createItem(
                    withSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)),
                    insets: NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 12, trailing: 0))
                
                let group = createGroup(
                    withSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.85), heightDimension: .estimated(98)),
                    insets: NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20),
                    item: item,
                    elementsInGroup: 2)
                
                let section = createSection(
                    withscrollingBehaviour: .groupPaging,
                    group: group,
                    insets: NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 45, trailing: 30))
                return section
            case 2:
                let item = createItem(
                    withSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                
                let group = createGroup(
                    withSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.85), heightDimension: .absolute(175)),
                    insets: NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20),
                    item: item)
                
                let section = createSection(
                    withscrollingBehaviour: .groupPaging,
                    group: group,
                    insets: NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 60, trailing: 0))
                return section
            default:
                let item = createItem(
                    withSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1)))
                
                let group = createGroup(
                    withSize: NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(216)),
                    insets: NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 23, trailing: 25),
                    item: item)
                
                let section = createSection(
                    group: group,
                    // почему эти отступы не работают, приходится писать отступы группы?
                    insets: NSDirectionalEdgeInsets(top: 0, leading: 25, bottom: 0, trailing: 25))
                return section
            }
        }
        
        func createItem(withSize size: NSCollectionLayoutSize, insets: NSDirectionalEdgeInsets? = nil) -> NSCollectionLayoutItem {
            
            let item = NSCollectionLayoutItem(layoutSize: size)
            guard let insets = insets else { return item }
            item.contentInsets = insets
            return item
        }
        
        func createGroup(withSize size: NSCollectionLayoutSize, insets: NSDirectionalEdgeInsets, item: NSCollectionLayoutItem, isVerticalOrientation: Bool = true, elementsInGroup: Int = 1) -> NSCollectionLayoutGroup {
            
            let group = isVerticalOrientation ? NSCollectionLayoutGroup.vertical(layoutSize: size, repeatingSubitem: item, count: elementsInGroup) : NSCollectionLayoutGroup.horizontal(layoutSize: size, repeatingSubitem: item, count: elementsInGroup)
            group.contentInsets = insets
            return group
        }
        
        func createSection(withscrollingBehaviour scroll: UICollectionLayoutSectionOrthogonalScrollingBehavior? = nil, group: NSCollectionLayoutGroup, insets: NSDirectionalEdgeInsets) -> NSCollectionLayoutSection {
            
            let section = NSCollectionLayoutSection(group: group)
            guard let scroll = scroll else { return section}
            section.orthogonalScrollingBehavior = scroll
            section.contentInsets = insets
            return section
        }
    }
}

