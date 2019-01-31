//
//  CherepicaTableViewController.swift
//  Profnastil
//
//  Created by Blurry Rabbit on 13.11.17.
//  Copyright © 2017 Blurry Rabbit. All rights reserved.
//

import UIKit

class CherepicaTableViewController: UITableViewController {

    @IBOutlet weak var cherepicaDescriptionLabel: UILabel!
    
    var metallocherepica: [Product] = [
        Product(name: "Монтерей Люкс", image: [#imageLiteral(resourceName: "montereyLuxe"), #imageLiteral(resourceName: "moterreyLuxe")], description: "Один из самых популярных профилей металлочерепицы. Форма профиля имеет вид набегающей волны - плавный и гармоничный. Подштамповка в местах стыка листов обеспечивает их точное прилегание.", parameter1: "Ширина листа полная 1186 мм", parameter2: "Ширина листа полезная 1100 мм", parameter3: "Высота профиля 46 мм", parameter4: "Ширина волны 185 мм", parameter5: "Длина до 7,7 м", price: "от 270 руб"),
//        Product(name: "Монтерей Плюс", image: [#imageLiteral(resourceName: "montereyPlus")], description: "Производится из стали с покрытием Purex и поставляется с гарантией 40 лет на технические и 15 лет на эстетические свойства. Purex - это слегка структурированное покрытие с элегантной матовой поверхностью, разработанное Ruukki специально для кровельных листов.", parameter1: "Ширина листа полная 1180 мм", parameter2: "Ширина листа полезная 1100 мм", parameter3: "Высота профиля 39 мм", parameter4: "Ширина волны 350 мм", parameter5: "Длина до 7,7 м", price: "от 230 руб"),
//        Product(name: "Супер Монтерей", image: [#imageLiteral(resourceName: "montereySuper")], description: "Главной отличительной чертой усовершенствованного профиля от базового является лучшая имитация традиционной черепицы за счет увеличенной высоты волны.", parameter1: "Ширина листа полная 1180 мм", parameter2: "Ширина листа полезная 1100 мм", parameter3: "Высота профиля 46 мм", parameter4: "Ширина волны 183 мм", parameter5: "Длина до 7,7 м", price: "от 230 руб"),
        Product(name: "Монтерей Испанская Дюна", image: [#imageLiteral(resourceName: "spanishDune"), #imageLiteral(resourceName: "spanishDune2")], description: "Оригинальный профиль металлочерепицы «Испанская Дюна» обеспечивает ее жесткость и способность хорошо сохранять форму.", parameter1: "Ширина листа полная 1180 мм", parameter2: "Ширина листа полезная 1100 мм", parameter3: "Высота профиля 38 мм", parameter4: "Ширина волны 230 мм", parameter5: "Длина до 7,7 м", price: "от 290 руб"),
        Product(name: "Стальной бархат", image: [#imageLiteral(resourceName: "steelVelvet"), #imageLiteral(resourceName: "steelVelvet2")], description: "Уникальный кровельный материал высокого качества с текстурированным покрытием, сочетающий долговечность и привлекательный внешний вид натуральной черепицы.", parameter1: "Ширина листа полная 1170 мм", parameter2: "Ширина листа полезная 1100 мм", parameter3: "Высота профиля 24 мм", parameter4: "Ширина волны 180 мм", parameter5: "Длина до 7,7 м", price: "от 310 руб"),
        Product(name: "Каскад", image: [#imageLiteral(resourceName: "kaskad"), #imageLiteral(resourceName: "kaskad2")], description: "Отличительные черты кровельного материала: прямой, ровный рисунок рельефа и декоративные канавки. Благодаря этому рельеф металлочерепицы Каскад приобретает оригинальную форму плитки классического шоколада.", parameter1: "Ширина листа полная 1175 мм", parameter2: "Ширина листа полезная 1120 мм", parameter3: "Высота профиля 38 мм", parameter4: "Ширина волны 350 мм", parameter5: "Длина до 7,7 м", price: "от 280 руб"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        cherepicaDescriptionLabel.text = "Металлочерепица отличается прочностью долговечностью, экологической безопасностью, долгим сроком службы, а также устойчивостью к коррозии, механическим повреждениям, ультрафиолетовому излучению."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return metallocherepica.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cherepicaCell", for: indexPath) as! CherepicaTableViewCell
        
        cell.cherepicaNameLabel.text = metallocherepica[indexPath.row].name
        cell.cherepicaImage.image = metallocherepica[indexPath.row].image?.first
        cell.cherepicaDescriptionLabel.text = metallocherepica[indexPath.row].description
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showProductDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! DescriptionOfProductViewController
                
                destinationController.product = metallocherepica[indexPath.row]
            }
        }
    }
}
