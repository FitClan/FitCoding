# FitCoding

AutoCoding by Swift4 support

## Use

```
pod "FitCoding"
```



```
// MARK: NSCoding
required convenience init?(coder aDecoder: NSCoder) {
    self.init()
    setup(withDecoder: aDecoder)
}

func encode(with aCoder: NSCoder) {
    setup(withCoder: aCoder)
}
```

