//
//  ProfnastilTableViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 08.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class ProfnastilTableViewController: UITableViewController {
    
    @IBOutlet weak var profnastilDescriptionLabel: UILabel!
    
    var profnastil: [Product] = [
//        Product(name: "Профлист С8", image: [#imageLiteral(resourceName: "proflistC8"),#imageLiteral(resourceName: "Untitled 2")], description: "Декоративный стеновой профнастил. Жесткость достигается большим наклоном боковых полок и маленьким радиусом гибки листа.", parameter1: "Ширина листа полная 1195 мм", parameter2: "Ширина листа полезная 1150 мм", parameter3: "Высота профиля 8 мм", parameter4: "Толщина  металла до 0,5 мм", parameter5: "Длина до 10 м", price: "от 150 руб"),
        Product(name: "Профлист Н10.40 - 1190", image: [#imageLiteral(resourceName: "proflistN10401190"), #imageLiteral(resourceName: "n1040")], description: "Применяется как облицовочный материал для потолков, стен, ограждений и т.д., а также в качестве кровельного покрытия.", parameter1: "Ширина листа полная 1190 мм", parameter2: "Ширина листа полезная 1100 мм", parameter3: "Высота профиля 10 мм", parameter4: "Толщина  металла до 0,5 мм", parameter5: "Длина до 12 м", price: "от 175 руб"),
        Product(name: "Профлист Н20.30 - 1140", image: [#imageLiteral(resourceName: "proflistN20301140"), #imageLiteral(resourceName: "proflist2030")], description: "Обладает большей жесткостью, что позволяет сократить количество несущих элементов при монтаже конструкций.", parameter1: "Ширина листа полная 1140 мм", parameter2: "Ширина листа полезная 1185 мм", parameter3: "Высота профиля 20 мм", parameter4: "Толщина  металла до 1 мм", parameter5: "Длина до 12 м", price: "от 265 руб"),
        Product(name: "Профлист С21.А Кровельный", image: [#imageLiteral(resourceName: "proflistC21A"), #imageLiteral(resourceName: "proflistC8")], description: "Изготавливается из оцинкованной стали с полимерным покрытием полиэстр согласно ГОСТ 24045-2010.", parameter1: "Ширина листа полная 1175 мм", parameter2: "Ширина листа полезная 1120 мм", parameter3: "Высота профиля 21 мм", parameter4: "Толщина  металла до 0,9 мм", parameter5: "Длина до 12 м", price: "от 203 руб"),
        Product(name: "Профлист С21.В Стеновой", image: [#imageLiteral(resourceName: "proflistC21B"), #imageLiteral(resourceName: "proflistC8")], description: "Изготавливается из оцинкованной стали с полимерным покрытием полиэстр согласно ГОСТ 24045-2010.", parameter1: "Ширина листа полная 1175 мм", parameter2: "Ширина листа полезная 1120 мм", parameter3: "Высота профиля 21 мм", parameter4: "Толщина  металла до 0,9 мм", parameter5: "Длина до 12 м", price: "от 203 руб"),
        Product(name: "Профлист НС-35 – 1060", image: [#imageLiteral(resourceName: "proflistNC351060"),#imageLiteral(resourceName: "proflistNC351060sizeChar")], description: "Обладает высокими показателями жесткости, область применения очень широкая (ограждения, кровля, модульные сооружения и др.).", parameter1: "Ширина листа полная 1060 мм", parameter2: "Ширина листа полезная 1000 мм", parameter3: "Высота профиля 35 мм", parameter4: "Толщина  металла до 0,8 мм", parameter5: "Длина до 12 м", price: "от 320 руб"),
//        Product(name: "Профлист H57 – 1047", image: [#imageLiteral(resourceName: "proflistN571047"), #imageLiteral(resourceName: "proflist-n44cheme")], description: "Несущий профнастил, имевший широчайшее применение ввиду своей универсальности.", parameter1: "Ширина листа полная 801 мм", parameter2: "Ширина листа полезная 750 мм", parameter3: "Высота профиля 57 мм", parameter4: "Толщина  металла до 0,9 мм", parameter5: "Длина до 9 м"),
        Product(name: "Профлист С44 – 1047", image: [#imageLiteral(resourceName: "proflistC441047"), #imageLiteral(resourceName: "proflist-n44cheme")], description: "Используется как стеновой или кровельный материал, отличается повышенной жесткостью, за счет продольных дополнительных ребер.", parameter1: "Ширина листа полная 1047 мм", parameter2: "Ширина листа полезная 1000 мм", parameter3: "Высота профиля 44 мм", parameter4: "Толщина  металла до 0,8 мм", parameter5: "Длина до 12 м", price: "от 213 руб"),
//        Product(name: "Профлист H60 – 902", image: [#imageLiteral(resourceName: "proflistN60902")], description: "Используется в качестве кровельного материала в ангарах, цехах, а также, для монтажа несъемной опалубки при строительстве монолитных перекрытий.", parameter1: "Ширина листа полная 902 мм", parameter2: "Ширина листа полезная 845 мм", parameter3: "Высота профиля 60 мм", parameter4: "Толщина  металла до 0,9 мм", parameter5: "Длина до 9 м"),
        Product(name: "Профлист Н-75 – 800", image: [#imageLiteral(resourceName: "proflistN75800"), #imageLiteral(resourceName: "n75")], description: "Применяется при покрытии больших пролетов цехов, ангаров, в монолитных перекрытиях, используется при установке наружных ограждений.", parameter1: "Ширина листа полная 800 мм", parameter2: "Ширина листа полезная 750 мм", parameter3: "Высота профиля 75 мм", parameter4: "Толщина  металла до 0,8 мм", parameter5: "Длина до 9 м", price: "от 280 руб")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profnastilDescriptionLabel.text = "Профлист маркируется следующим образом: несущий(Н), стеновой(С), комбинированный(НС). Качественными характеристиками данного материала являются: износостойкость и долговечность, легкость монтажа, широкая цветовая гамма."
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profnastil.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "profnastilCell", for: indexPath) as! ProfnastilTableViewCell
        
        cell.profnastilNameLabel.text = profnastil[indexPath.row].name
        cell.profnastilDetailImage.image = profnastil[indexPath.row].image?.first
        cell.profnastilDetailLabel.text = profnastil[indexPath.row].description
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProductDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DescriptionOfProductViewController
                
                destinationController.product = profnastil[indexPath.row]
            }
        }
    }
}
