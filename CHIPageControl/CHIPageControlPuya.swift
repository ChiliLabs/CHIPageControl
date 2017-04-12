//
//  CHIPageControlPuya.swift
//  CHIPageControl  ( https://github.com/ChiliLabs/CHIPageControl )
//
//  Copyright (c) 2017 Chili ( http://chi.lv )
//
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import UIKit

open class CHIPageControlPuya: CHIBasePageControl {

    fileprivate var diameter: CGFloat {
        return radius * 2
    }

    fileprivate var frames = [CGRect]()
    fileprivate var min: CGRect?
    fileprivate var max: CGRect?

    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
    }

    override open func layoutSubviews() {
        super.layoutSubviews()
        
        let floatCount = CGFloat(elements.count)
        let x = (self.bounds.size.width - self.diameter*floatCount - self.padding*(floatCount-1))*0.5
        let y = (self.bounds.size.height - self.diameter)*0.5
        var frame = CGRect(x: x, y: y, width: self.diameter, height: self.diameter)

        elements.forEach() { layer in
            layer.cornerRadius = self.radius
            layer.frame = frame
            frame.origin.x += self.diameter + self.padding
        }

        if let active = elements.first {
            active.backgroundColor = (self.currentPageTintColor ?? self.tintColor)?.cgColor
            active.borderWidth = 0
        }

        min = elements.first?.frame
        max = elements.last?.frame

        self.frames = elements.map { $0.frame }
        update(for: progress)
    }

    override func update(for progress: Double) {
        guard let min = self.min,
              let max = self.max,
              progress >= 0 && progress <= Double(numberOfPages - 1) else {
                return
        }

        let total = Double(numberOfPages - 1)
        let dist = max.origin.x - min.origin.x
        let percent = CGFloat(progress / total)
        let page = Int(progress)
        
        for (index, _) in self.frames.enumerated() {
            if page > index {
                self.elements[index+1].frame = self.frames[index]
            } else if page < index {
                self.elements[index].frame = self.frames[index]
            }
        }

        let offset = dist * percent
        guard let active = elements.first else { return }
        active.frame.origin.x = min.origin.x + offset
        active.borderWidth = 0

        let index = page + 1
        guard elements.indices.contains(index) else { return }
        let element = elements[index]
        guard frames.indices.contains(page), frames.indices.contains(page + 1) else { return }

        let prev = frames[page]
        let current = frames[page + 1]
        element.frame = prev
        element.frame.origin.x += current.origin.x - active.frame.origin.x
    }

    override open var intrinsicContentSize: CGSize {
        return sizeThatFits(CGSize.zero)
    }

    override open func sizeThatFits(_ size: CGSize) -> CGSize {
        return CGSize(width: CGFloat(elements.count) * self.diameter + CGFloat(elements.count - 1) * self.padding,
                      height: self.diameter)
    }
}
