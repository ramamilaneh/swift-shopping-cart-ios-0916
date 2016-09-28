//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by James Campagno on 9/26/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Cart {
    var items = [Item]()
    
    func totalPriceInCents() ->Int{
        var sum = 0
        for item in self.items{
            sum += item.priceInCents
        }
        return sum
    }
    
    func add(item: Item){
        items.append(item)
    }
    
    func remove(item: Item){
        for (index,item1) in items.enumerated(){
            if item1 == item{
                items.remove(at: index)
            }
        }
    }
    
    func items(withName name: String) ->[Item]{
       var newArray = [Item]()
        for item in items{
            if item.name==name{
                newArray.append(item)
            }
        }
        return newArray
    }
    
    func items(withMaxPrice price:Int) ->[Item]{
        var newArray = [Item]()
        for item in items{
            if item.priceInCents<=price{
                newArray.append(item)
            }
        }
        return newArray
    }
    
    func items(withMinPrice price:Int) ->[Item]{
        var newArray = [Item]()
        for item in items{
            if item.priceInCents>=price{
                newArray.append(item)
            }
        }
        return newArray
    }
}
