
[Go Channel 详解](https://colobu.com/2016/04/14/Golang-Channels/)

```go
make(chan int, 100)
```
容量(capacity)代表Channel容纳的最多的元素的数量，代表Channel的缓存的大小。
如果没有设置容量，或者容量设置为0, 说明Channel没有缓存，只有sender和receiver都准备好了后它们的通讯(communication)才会发生(Blocking)。
如果设置了缓存，就有可能不发生阻塞， 只有buffer满了后 send才会阻塞， 而只有缓存空了后receive才会阻塞。一个nil channel不会通信。

```go
// 它可以用来检查Channel是否已经被关闭了。
v, ok := <-ch
```

https://www.liwenzhou.com/posts/Go/singleton_in_go/
var once sync.Once
once.Do(func() {
  
}

