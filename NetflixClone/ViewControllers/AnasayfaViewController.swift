//
//  AnasayfaViewController.swift
//  NetflixClone
//
//  Created by Oğuzhan Erdem on 30.08.2022.
//

import UIKit



var eData = [
    Netflix(sectionType: "Netflix'te Popüler", imageGallery: ["cosmos","harrypotter","pokemon","inception","tigerking"]),
    Netflix(sectionType: "Gündemdekiler", imageGallery: ["sexeducation","rickymorty","howimetyourmother", "coffeekareem","yesil-yol"]),
        Netflix(sectionType: "Yeniden İzleyin", imageGallery: ["blackmirror","thewitcher","onbiryirmiikialtmısüc", "narcos","lordofrings"])
]



class AnasayfaViewController: UIViewController {

    @IBOutlet weak var myTableView: UITableView!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        myTableView.delegate = self
        myTableView.dataSource = self
        view.backgroundColor = UIColor.black
       

    }
    


}
extension AnasayfaViewController: UITableViewDataSource,UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return eData[section].sectionType
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        eData.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.myColletionView.tag = indexPath.section
        return cell
            
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .black
        
    }
    
    
}
