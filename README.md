# (VF) Auto layout Visual Format swift 3.0

Basic useful feature list

##### Tips to dont forget :

 * ```translatesAutoresizingMaskIntoConstraints = false```
 * ```self.view.addSubview( YOUR VIEW )```
  ```javascript
 self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "", options: [], metrics: metrics, views: views)
  ```



Lets create a multiple example using visual format language to create new constraints.

Look, a list!

 * [Example 1]()
 * [Example 2]()
 * [Example 3]()

And here's some code! :+1:

#### Example 1.

```javascript
let mainContainer = UIView()
mainContainer.backgroundColor = UIColor.blue
mainContainer.translatesAutoresizingMaskIntoConstraints = false
        
self.view.addSubview(mainContainer)
        
let views = ["mainContainer" : mainContainer]
        
let metrics = ["mainContainerWidth" : self.view.bounds.width]
        
self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[mainContainer]|", options: [], metrics: metrics, views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[mainContainer]|", options: [], metrics: metrics, views: views))
```

#### Example 1 screenshot result.

<img src="https://github.com/CristianCardosoA/Auto-layout-VF/blob/master/Screen%20Shot%202017-07-03%20at%2010.41.28%20PM.png" width="250" />

#### Example 2.

```javascript
let firstView = UIView()
firstView.backgroundColor = UIColor.blue
firstView.translatesAutoresizingMaskIntoConstraints = false
        
let secondView = UIView()
secondView.backgroundColor = UIColor.red
secondView.translatesAutoresizingMaskIntoConstraints = false
         
self.view.addSubview(firstView)
self.view.addSubview(secondView)
        
let views = ["firstView" : firstView, "secondView": secondView]
        
self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[firstView]|", options: [], metrics: [:], views: views))
        
self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[secondView]|", options: [], metrics: [:], views: views))
         
self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[firstView][secondView(==firstView)]|", options: [], metrics: [:], views: views))
```

#### Example 2 screenshot result.

<img src="https://github.com/CristianCardosoA/Auto-layout-VF/blob/master/Screen%20Shot%202017-07-03%20at%2010.41.28%20PM.png" width="250" />

### More info about VF language:

 * [Apple Developers](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/VisualFormatLanguage.html) for more info.


