//
//  SidingTableViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 30.11.2017.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class SidingTableViewController: UITableViewController {
    
    @IBOutlet weak var sidingDescriptionLabel: UILabel!
    
    var siding: [Product] = [
        Product(name: "Корабельная доска", image: [#imageLiteral(resourceName: "korabelnayaDoska1"), #imageLiteral(resourceName: "korabelnayaDoska")], description: "Обладает повышенной механической прочностью, огнестойкостью, долговечностью и устойчивостью цвета. Позволяет осуществлять его укладку вертикально, горизонтально и по диагонали, что придает зданиям неповторимый внешний вид.", parameter1: "Ширина листа полная 270 мм", parameter2: "Ширина листа полезная 241 мм", parameter3: "Высота профиля 10 мм", parameter4: "Толщина материала 0,5 мм", parameter5: "Длина до 6 м", price: "от 285 руб"),
//         Product(name: "Софит", image: [#imageLiteral(resourceName: "montereyLuxe")], description: "Изготовленное из оцинкованной стали в виде панелей с замком и кромкой для крепёжных элементов, защищает здание от неблагоприятных природных воздействий и одновременно используется в качестве декоративной отделки.", parameter1: "Ширина листа полная 273 мм", parameter2: "Ширина листа полезная 240 мм", parameter3: "Высота профиля 12 мм", parameter4: "Толщина материала 0,5 мм", parameter5: "Длина до 6 м", price: "от 285 руб"),
         Product(name: "Бревно", image: [#imageLiteral(resourceName: "brevno2"), #imageLiteral(resourceName: "brevno")], description: "Является отличной имитацией оцилиндрованного бруса, которым можно облицовать любой фасад. Бывает различных цветов и оттенков, с фактурой дерева и без нее. Он абсолютно не горючий и обладает всеми преимуществами навесных вентилируемых фасадов.", parameter1: "Ширина листа полная 382 мм", parameter2: "Ширина листа полезная 356 мм", parameter3: "Высота профиля 27 мм", parameter4: "Толщина материала 0,5 мм", parameter5: "Длина до 6 м", price: "от 450 руб"),
         Product(name: "Евробрус", image: [#imageLiteral(resourceName: "brus"), #imageLiteral(resourceName: "brus2")], description: "Пoвтopяет форму и pиcyнoк клееного бруса. Это одна из последних разновидностей металлосайдинга, сочетающая в себе все достоинства металла и презентабельный внешний вид бруса.", parameter1: "Ширина листа полная 365 мм", parameter2: "Ширина листа полезная 340 мм", parameter3: "Высота профиля 20 мм", parameter4: "Толщина материала 0,5 мм", parameter5: "Длина до 6 м", price: "от 450 руб"),
         Product(name: "Софит с перфорацией", image: [#imageLiteral(resourceName: "sofit"), #imageLiteral(resourceName: "sofit2")], description: " С помощью этих панелей подшивают внутренние поверхности элементов крыши, защищенные от попадания воды, подходит для обустройства карнизных свесов, потолка козырьков, террас, беседок.", parameter1: "Ширина листа полная 273 мм", parameter2: "Ширина листа полезная 240 мм", parameter3: "Высота профиля 12 мм", parameter4: "Толщина материала 0,5 мм", parameter5: "Длина до 6 м", price: "от 280 руб")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
          sidingDescriptionLabel.text? = "Металлический сайдинг это окрашенное металлическое покрытие для фасадов зданий, изготовленное из оцинкованной стали в виде панелей с замком и кромкой для крепёжных элементов, которые легко скрепляются в секцию любого размера."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return siding.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sidingCell", for: indexPath) as! SidingTableViewCell
        
        cell.nameLabel.text = siding[indexPath.row].name
        cell.detailLabel.text = siding[indexPath.row].description
        cell.detailImage.image = siding[indexPath.row].image?.first

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProductDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DescriptionOfProductViewController
                
                destinationController.product = siding[indexPath.row]
            }
        }
    }
}
