//
//  ViewController.swift
//  CollectionViewTute

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var tableData: [String] = ["Evo X", "458", "GTR", "Evo X", "458", "GTR", "Evo X", "458", "GTR", "Evo X", "458", "GTR"]
    var tableImages: [String] = ["evox.jpg", "458.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg", "evox.jpg", "458.jpg", "gtr.jpg"]
    
    if tableData[index] == 0 {
    tableData[index] = "cricket1.png"
    }
    if tableData[index] == 1 {
    tableData[index] = "cricket1.png"
    }
    if tableData[index] == 0 {
    tableData[index] = "cricket1.png"
    }
    if tableData[index] == 0 {
    tableData[index] = "cricket1.png"
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: colvwCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as! colvwCell
        cell.lblCell.text = tableData[indexPath.row]
        cell.imgCell.image = UIImage(named: tableImages[indexPath.row])
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("Cell \(indexPath.row) selected")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

