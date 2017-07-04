# (VF) Auto layout Visual Format swift 3.0

Basic useful feature list

##### Tips to dont forget :

 * ```translatesAutoresizingMaskIntoConstraints = false```
 * ```self.view.addSubview( YOUR VIEW )```
  ```Swift
 self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "", options: [], metrics: metrics, views: views)
  ```



Lets create a multiple example using visual format language to create new constraints.

Look, a list!

 * [Example 1](#example-1)
 * [Example 2](#example-2)
 * [Example 3](#example-3)
 * [Example 4](#example-4)

And here's some code! :+1:

## Example 1

```Swift
let mainContainer = UIView()
mainContainer.backgroundColor = UIColor.blue
mainContainer.translatesAutoresizingMaskIntoConstraints = false
        
self.view.addSubview(mainContainer)
        
let views = ["mainContainer" : mainContainer]
        
let metrics = ["mainContainerWidth" : self.view.bounds.width]
        
self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[mainContainer]|", options: [], metrics: metrics, views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[mainContainer]|", options: [], metrics: metrics, views: views))
```

## Example 1 screenshot result.

<img src="https://github.com/CristianCardosoA/Auto-layout-VF/blob/master/Screen%20Shot%202017-07-03%20at%2010.41.28%20PM.png" width="250" />

## Example 2

```Swift
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

## Example 2 screenshot result.

<img src="https://github.com/CristianCardosoA/Auto-layout-VF/blob/master/Screen%20Shot%202017-07-03%20at%2010.56.52%20PM.png" width="250" />

## Example 3

```Swift
let firstView = UIView()
firstView.backgroundColor = UIColor.blue
firstView.translatesAutoresizingMaskIntoConstraints = false
         
let secondView = UIView()
secondView.backgroundColor = UIColor.red
secondView.translatesAutoresizingMaskIntoConstraints = false
        
let thirdView = UIView()
thirdView.backgroundColor = UIColor.yellow
thirdView.translatesAutoresizingMaskIntoConstraints = false
        
self.view.addSubview(firstView)
self.view.addSubview(secondView)
self.view.addSubview(thirdView)
        
let metrics = ["padding" : self.view.bounds.height / 10]
        
let views = ["firstView" : firstView, "secondView": secondView, "thirdView": thirdView]
         
self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[firstView][secondView(==firstView)][thirdView(==firstView)]|", options: [], metrics: [:], views: views))
        
self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(padding)-[firstView]-(padding)-|", options: [], metrics: metrics, views: views))
        
self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(padding)-[secondView]-(padding)-|", options: [], metrics: metrics, views: views))
        
self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-(padding)-[thirdView]-(padding)-|", options: [], metrics: metrics, views: views))
```

#### Example 3 screenshot result.

<img src="https://github.com/CristianCardosoA/Auto-layout-VF/blob/master/Screen%20Shot%202017-07-03%20at%2011.09.54%20PM.png" width="250" />

## Example 4

```Swift
let firstView = UIView()
firstView.backgroundColor = UIColor(patternImage: UIImage(named:"image.jpg")!)
firstView.translatesAutoresizingMaskIntoConstraints = false

let secondView = UIView()
secondView.backgroundColor = UIColor.gray
secondView.translatesAutoresizingMaskIntoConstraints = false

let label = UILabel()
label.translatesAutoresizingMaskIntoConstraints = false
label.text = "EXAMPLE 4"
label.textColor = UIColor.white
label.textAlignment = .center
secondView.addSubview(label)

let thirdContainerView = UIView()
thirdContainerView.backgroundColor = UIColor.yellow
thirdContainerView.translatesAutoresizingMaskIntoConstraints = false

let forthView = UIView()
forthView.backgroundColor = UIColor.orange
forthView.translatesAutoresizingMaskIntoConstraints = false

let fifthView = UIView()
fifthView.backgroundColor = UIColor.cyan
fifthView.translatesAutoresizingMaskIntoConstraints = false

thirdContainerView.addSubview(forthView)
thirdContainerView.addSubview(fifthView)

self.view.addSubview(firstView)
self.view.addSubview(secondView)
self.view.addSubview(thirdContainerView)

let metrics = ["firstViewHeight" : self.view.bounds.height * 0.6, "secondViewHeight" : self.view.bounds.height * 0.3, "thirdViewHeight" : self.view.bounds.height * 0.1]

let views = ["firstView" : firstView, "secondView": secondView, "thirdContainerView": thirdContainerView, "forthView" : forthView, "fifthView": fifthView, "label" : label]

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[firstView]|", options: [], metrics: [:], views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[secondView]|", options: [], metrics: [:], views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[thirdContainerView]|", options: [], metrics: [:], views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[forthView][fifthView(==forthView)]|", options: [], metrics: [:], views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[firstView(firstViewHeight)][secondView(secondViewHeight)][thirdContainerView(thirdViewHeight)]|", options: [], metrics: metrics, views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[fifthView(==thirdContainerView)]|", options: [], metrics: metrics, views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[forthView(==thirdContainerView)]|", options: [], metrics: metrics, views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label(==secondView)]|", options:  NSLayoutFormatOptions.alignAllCenterX, metrics: [:], views: views))

self.view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label(==secondView)]|", options: NSLayoutFormatOptions.alignAllCenterY, metrics: [:], views: views))
```

## Example 4 screenshot result.

<img src="https://github.com/CristianCardosoA/Auto-layout-VF/blob/master/Screen%20Shot%202017-07-03%20at%2011.55.26%20PM.png" width="250" />

### More info about VF language:

 * [Apple Developers](https://developer.apple.com/library/content/documentation/UserExperience/Conceptual/AutolayoutPG/VisualFormatLanguage.html) for more info.


