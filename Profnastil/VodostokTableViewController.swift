//
//  VodostokTableViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 01.12.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class VodostokTableViewController: UITableViewController {
    
    @IBOutlet weak var vodostokDescriptionLabel: UILabel!
    
    var vodostok: [Product] = [
    Product(name: "Водосточная система", image: [#imageLiteral(resourceName: "vodostock"), #imageLiteral(resourceName: "vodostok2")], description: "Мы имеем большой опыт по изготовлению высокачественных и эстетичных водосливных систем. Отличительная особенность продукции — простота, что обеспечивает легкость монтажа." , parameter1: "", parameter2: "", parameter3: "Оцинковка 220 гр/м2.", parameter4: "Толщина  металла до 0,5 мм", parameter5: "Длина не ограниченна(сборная конструкция)", price: "от 100 руб"),
    Product(name: "Снегозадержатели", image: [#imageLiteral(resourceName: "snowBarrier"),#imageLiteral(resourceName: "krovla")], description: "Трубчатый снегозадержатель порционно пропускает снег и наледь между кровлей и трубками, не позволяя большим пластам скапливаться на кровле.", parameter1: "", parameter2: "", parameter3: "Монтируются как в строящуюся, так и готовую кровлю.", parameter4: "Возможна окраска в любой цвет RAL.", parameter5: "Длина не ограниченна(сборная конструкция)", price: "от 200 руб"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        vodostokDescriptionLabel.text? = "Система долговечна и не требует особого ухода, только несколько раз в год нужно удалять из водосточных желобов листья деревьев и другой накопившийся мусор."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return vodostok.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "vodostokCell", for: indexPath) as! VodostokTableViewCell
        
        cell.vodostokImage.image = vodostok[indexPath.row].image?.first
        cell.vodostokNameLabel.text? = vodostok[indexPath.row].name
        cell.vodostokDetailLabel.text? = vodostok[indexPath.row].description

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProductDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DescriptionOfProductViewController
                
                destinationController.product = vodostok[indexPath.row]
            }
        }
    }
}
