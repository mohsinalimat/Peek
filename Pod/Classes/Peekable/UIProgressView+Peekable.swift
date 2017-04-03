/*
  Copyright © 23/04/2016 Shaps

  Permission is hereby granted, free of charge, to any person obtaining a copy
  of this software and associated documentation files (the "Software"), to deal
  in the Software without restriction, including without limitation the rights
  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
  copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in
  all copies or substantial portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
  THE SOFTWARE.
 */

import UIKit

extension UIProgressView {
  
  /**
   Configures Peek's properties for this object
   
   - parameter context: The context to apply these properties to
   */
  public override func preparePeek(_ context: Context) {
    super.preparePeek(context)
    
    context.configure(.attributes, "Appearance") { (config) in
      config.addProperty("progressViewStyle", displayName: "View Style", cellConfiguration: { (cell, view, value) in
        if let mode = UIProgressViewStyle(rawValue: value as! Int) {
          cell.detailTextLabel?.text = mode.description
        }
      })
    }
    
    context.configure(.attributes, "Colors") { (config) in
      config.addProperties([ "progressTintColor", "trackTintColor" ])
    }
    
    context.configure(.attributes, "Images") { (config) in
      config.addProperties([ "trackImage", "progressImage" ])
    }
    
    context.configure(.attributes, "Value") { (config) in
      config.addProperties([ "progress" ])
    }
  }
  
}
