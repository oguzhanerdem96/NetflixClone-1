//
//  MyTableViewCell.swift
//  NetflixClone
//
//  Created by Oğuzhan Erdem on 31.08.2022.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myColletionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        myColletionView.dataSource = self
        myColletionView.delegate = self


    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
extension MyTableViewCell: UICollectionViewDelegate , UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myColletionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myColletionView.dequeueReusableCell(withReuseIdentifier: "colletioncell", for: indexPath) as! MyCollectionViewCell
        cell.myImage.image = UIImage(named: eData[myColletionView.tag].imageGallery[indexPath.row]!)
        return cell
    }
    
    
}
