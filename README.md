# ZCardView

ZCardView is a simple card view where you can modify the card radius and card shadow. 
You can modify the card's radius and shadows.
ZCardView makes you easy and saves a lot of develop time.

<img src="https://i.imgur.com/D0XCAAj.png" width="300">

## Example

<b>With Storyboard</b>

<b>1. Add a UIView </b>
<p><img src="https://i.imgur.com/QTfDEcR.png" width="300"></p>
</br>

<b>2. Go to Identity Inspector and change the class name to <i>ZCardView</i> or <i>ZCardButton</i> according to your need. </b>
<p><img src="https://i.imgur.com/eFhmH55.png" width="300"></p>

<b>3. Go to Attributes Inspector and now you can change certain card view properties. </b>
<p><img src="https://i.imgur.com/GdwYaFM.png" width="300"></p>

# Note:
For a imageview to be rounded with shadow, Add a imageview inside a card view and set containsImageView boolean properties to true of cardview.

# Adding Programmatically

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Create a Card
        let card = ZCardView(frame: CGRect(x: 0, y: 0, width: 250, height: 100))
        card.backgroundColor = .white
        card.shadowColor = .darkGray
        card.radius = card.frame.height / 2.0
        card.shadowRadius = 10
        card.backgroundColor = .purple
        self.view.addSubview(card)
        
        //label
        let lbl = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 24))
        lbl.text = "Programmatic Card View"
        lbl.textColor = .white
        card.addSubview(lbl)
        lbl.sizeToFit()
        lbl.center = card.center
        
        //constraints
        card.translatesAutoresizingMaskIntoConstraints = false
        card.widthAnchor.constraint(equalToConstant: card.frame.width).isActive = true
        card.heightAnchor.constraint(equalToConstant: card.frame.height).isActive = true
        card.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        card.topAnchor.constraint(equalTo: cardButton.bottomAnchor, constant: 24).isActive = true
        
        
      }

## Properties

1. radius: CGFloat
  Adjust radius of your card.
2. shadowColor: UIColor
  Shadow color of your card.
3. shadowRadius: CGFloat
  Shadow radius of your card.
4. shadowOffsetX: CGFloat
  Shadow Offset (X)
5. shadowOffsetY: CGFloat
  Shadow Offset (Y)
6. shadowOpacity: CGFloat
  Opacity of the shadow.
7. containsImageView: Bool
  If your card contains a single imageview as a child.



## Installation

ZCardView is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'ZCardView'
```

## Author

sudayn, sudosuwal@gmail.com

## License

ZCardView is available under the MIT license. See the LICENSE file for more info.
