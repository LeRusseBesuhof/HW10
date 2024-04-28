import UIKit

final class ViewController: UIViewController {

    private let collectionData = Section.mockData()
    
    private lazy var collectionView : UICollectionView = {
        $0.register(StoryCell.self, forCellWithReuseIdentifier: StoryCell.reuseID)
        $0.register(MessageCell.self, forCellWithReuseIdentifier: MessageCell.reuseID)
        $0.register(BannerCell.self, forCellWithReuseIdentifier: BannerCell.reuseID)
        $0.register(ImageCell.self, forCellWithReuseIdentifier: ImageCell.reuseID)
        $0.dataSource = self
        return $0
        // почему не надо кастить?
    }(UICollectionView(frame: view.frame, collectionViewLayout: createLayout()))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collectionView)
    }
}

extension ViewController : UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        // количество секций в коллекции
        collectionData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // количество элементов в секции
        collectionData[section].group.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let item = collectionData[indexPath.section].group[indexPath.item]
        
        switch indexPath.section {
        case 0:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryCell.reuseID, for: indexPath) as? StoryCell else { return UICollectionViewCell()}
            
            cell.setCell(item: item)
            return cell
        case 1:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MessageCell.reuseID, for: indexPath) as? MessageCell else { return UICollectionViewCell()}
            
            cell.setCell(item: item)
            return cell
        case 2:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: BannerCell.reuseID, for: indexPath) as? BannerCell else { return UICollectionViewCell()}
            
            cell.setCell(item: item)
            return cell
        case 3:
            guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ImageCell.reuseID, for: indexPath) as? ImageCell else { return UICollectionViewCell()}
            
            cell.setCell(item: item)
            return cell
        default:
            return UICollectionViewCell()
        }
    }
}
