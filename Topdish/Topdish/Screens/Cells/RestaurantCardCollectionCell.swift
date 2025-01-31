//
//  RestaurantCardCollectionCell.swift
//  Topdish
//
//  Created by Chris Chau on 2019-12-02.
//  Copyright © 2019 Topdish Inc. All rights reserved.
//

import UIKit
import Cosmos

class RestaurantCardCollectionCell: UICollectionViewCell, UICollectionViewDelegate {
    
    @IBOutlet var RestaurantImage: UIImageView!
    @IBOutlet var RestaurantLabel: UILabel!
    @IBOutlet var CuisineLabel: UILabel!
    @IBOutlet weak var StarView: CosmosView!
    
    var restaurant: Restaurant! {
        didSet {
            self.updateUI()
        }
    }
    
    func updateUI() {
        if let restaurant = restaurant {
            RestaurantImage.image = restaurant.featuredImage
            RestaurantLabel?.text = restaurant.title
            CuisineLabel?.text = restaurant.typeOfCuisine
            StarView?.rating = restaurant.rating
        } else {
            RestaurantImage.image = nil
            RestaurantLabel = nil
            CuisineLabel = nil
            StarView.rating = 0.0
        }
        
        
    }
}


   /*
      func collectionView(_ collectionView: UICollectionView,
      didSelectItemAt indexPath: IndexPath) {
          
           if (collectionView == self.TopPlacesCollectionView) {
               let cell = collectionView.cellForItem(at: indexPath)  as! HomePageCollectionCell

               print(cell)
               print(topRestaurants[indexPath.row])
               self.clickedRestaurant = topRestaurants[indexPath.row]
               performSegue(withIdentifier: "restaurantSegue", sender:self)

          }
      }
*/
