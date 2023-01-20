//
//  ViewController.swift
//  20230118-HasnainKhan-NYCSchools
//
//  Created by hasnain on 1/18/23.
//
import Alamofire
import UIKit

class ViewController: UICollectionViewController {
    typealias DataSource = UICollectionViewDiffableDataSource<Int, String>
    typealias Snapshot = NSDiffableDataSourceSnapshot<Int, String>
    var dataSource: DataSource!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let listLayout = listLayout()
        
        collectionView.collectionViewLayout = listLayout
        
        let cellRegistration = UICollectionView.CellRegistration { (cell: UICollectionViewListCell, indexPath: IndexPath, itemIdentifier: String) in
            
            let reminder = HighSchoolStructTest.sampleData[indexPath.item]
            
            var contentConfiguration = cell.defaultContentConfiguration()
            
            contentConfiguration.text = reminder.school_name
            
            cell.contentConfiguration = contentConfiguration
            
        }
        
        dataSource = DataSource(collectionView: collectionView) { (collectionView: UICollectionView, indexPath: IndexPath, itemIdentifier: String) in
            
            return collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: itemIdentifier)
        }
        
        var snapshot = Snapshot()
        snapshot.appendSections([0])
        snapshot.appendItems(HighSchoolStructTest.sampleData.map { $0.school_name })

        dataSource.apply(snapshot)

                

        collectionView.dataSource = dataSource
        
        
    }
         
        
    private func listLayout() -> UICollectionViewCompositionalLayout {

           var listConfiguration = UICollectionLayoutListConfiguration(appearance: .grouped)
        
                listConfiguration.showsSeparators = false

                listConfiguration.backgroundColor = .clear

                return UICollectionViewCompositionalLayout.list(using: listConfiguration)

       }
    
   
    
}
        

