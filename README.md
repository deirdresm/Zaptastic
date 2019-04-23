#  Zaptastic

## Project from a [Swift on Sundays talk by Paul Hudson](https://www.youtube.com/watch?v=TJfh8wXbfEw)

[Paul's original repository for this project can be found here.](https://github.com/twostraws/SwiftOnSundays/tree/master/011%20Zaptastic)

I enjoy watching Paul's live broadcasts because it's always interesting to see how other developers work. It's like a master class.

## Things I Learned

I have been emphasizing SceneKit, so I hadn't really gotten into SpriteKit yet. Additionally, the last time I tried writing a game from scratch, there weren't cool libraries like SpriteKit and SceneKit, so some of this is just wonder at what's available.

1.  Hello bitmasks, my old friend. It's nice to see collisions use Ye Olde Bitmasks.
2.  I really like that you can use bitmasks with objects to determine what collisions matter, e.g., it doesn't matter if an enemy weapon blasts an enemy plane.
3.  I find it interesting to keep some of the data types in JSON (e.g., waves.json), but I'm not as enamored with JSON as some seem to be. (Nothing wrong with using it, but to me it's a tool that's about as interesting as the knife I use at breakfast.)
4.  Struct-within-struct definition for waves. I hadn't seen that before, but combined with the JSON it's quite powerful.
5.  Extending Bundle to include JSON coding/decoding. Nice when you have json files in the bundle for sure.
6.  orientToPath sure saves writing a lot of calculation code. Love that, especially that it Just Works. See also UIBezierPath.

