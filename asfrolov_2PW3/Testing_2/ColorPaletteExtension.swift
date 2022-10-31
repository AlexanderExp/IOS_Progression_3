//
//  ColorPaletteExtension.swift
//  Testing_2
//
//  Created by admin on 28.10.2022.
//

import Foundation
import UIKit

extension ColorPaletteView {
    public final class ColorSliderView: UIControl {
        public let slider = UISlider()
        private let colorLabel = UILabel()
        
        private(set) var value: Float
        
        init(colorName: String, value: Float) {
            self.value = value
            super.init(frame: .zero)
            
            slider.value = value
            colorLabel.text = colorName
            setupView()
        }
            @available(*, unavailable)
            required init?(coder: NSCoder) {
                fatalError("init(coder:) has not been implemented")
            }
            
            public func setupView() {
                let stackView = UIStackView(arrangedSubviews:
                [colorLabel, slider])
                stackView.axis = .horizontal
                stackView.spacing = 8
                
                addSubview(stackView)
                stackView.pin(to:self, [.left:12, .top: 12, .right: 12, .bottom: 12])
            }
        @objc
        func sliderMoved(_ slider: UISlider) {
            self.value = slider.value
            sendActions(for: .touchDragInside)
        }
        }
    }
