//
//  BackGroundDesign.swift
//  renk
//
//  Created by Mehmet Serhat Gültekin on 27.02.2025.
//

import Foundation
import UIKit

class BackgroundDesign: UIViewController {
public func setupGradientBackground() {
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = view.bounds
    
    // Renkleri belirle Hex kodları ile
    let color1 = UIColor(hex: "#8FE2D9")?.cgColor ?? UIColor.cyan.cgColor
    let color2 = UIColor(hex: "#FFB186")?.cgColor ?? UIColor.orange.cgColor
    let white = UIColor.white.cgColor  // Beyaza doğru geçiş
    
    // Gradient renklerini ayarla
    gradientLayer.colors = [color1, color2, white]
    
    // Renklerin ekran üzerindeki dağılımını belirle (%30 üst, geri kalanı beyaz)
    gradientLayer.locations = [0.0, 0.3, 1.0]  // İlk %30'da iki renk, sonra beyaz
    
    // Gradient yönünü belirle Yukarıdan aşağıya
    gradientLayer.startPoint = CGPoint(x: 0.5, y: 0)
    gradientLayer.endPoint = CGPoint(x: 0.5, y: 1)
    
    // Gradient katmanını ekrana ekle
    view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}

// UIColor için Hex kod desteği
extension UIColor {
    convenience init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
    
    
}
