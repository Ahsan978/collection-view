//
//  ViewController.swift
//  CollectionViews
//
//  Created by Mac on 12/04/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionviews: UICollectionView!

    
// var edata = [
//        EntertainmentApp(section: "BMW M POWER", imageGallery: ["1","2","3","4","5","6"]) ,
//        EntertainmentApp(section: "BMW WALLPAPER", imageGallery: ["1","2","3","4","5","6"])
 
// ]
    
//var section = "BMW M POWER"
//var images = ["1","2","3","4","5","6","1","2","3","4"]
    var names = ["Android Studio","Blue Stack","Visual Studio","Xcode","Xampp","FireBase","Blue Stack","Visual Studio","Android Studio","Xampp"]
    
    var images = ["A","B","C","D","E","F","B","C","A","E"]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        collectionviews.delegate = self
        collectionviews.dataSource = self
    
        
    }
    
}


extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return images.count
       // return edata[collectionviews.tag].imageGallery.count
 
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
       let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! myCollectionViewCell
        cell.myImage.image = UIImage(named:images[indexPath.row])
        cell.myImage.layer.cornerRadius = 8.0
        cell.lblcell.text = names[indexPath.row]
       return cell
        
    }
    
    
}
    




    
