package queuectl

import (
	"fmt"
	"testing"
	"time"
)

type ChanTest struct {
	value string
}

func TestChanType(t *testing.T) {
	// [总结了才知道，原来channel有这么多用法！](https://segmentfault.com/a/1190000017958702)
	// 测试这两种写法有什么不一样
	ch1 := make(chan ChanTest)
	ch2 := make(chan *ChanTest)
	go func() {
		for {
			select {
			case ct := <-ch1:
				fmt.Printf("ch1 recv ct %v %p\n", ct, &ct)
				ct.value = "1234"
			case ct := <-ch2:
				fmt.Printf("ch2 recv ct %v %p\n", ct, ct)
				ct.value = "4321"
			}
		}
	}()
	// 第一种形式，ct1 被复制了,指向的地址在 go 协程里的值是不一样的
	ct1 := ChanTest{
		value: "1111",
	}
	fmt.Printf("ct1 %v %p\n", ct1, &ct1)
	ch1 <- ct1
	fmt.Printf("ct1 %v %p\n", ct1, &ct1)
	if ct1.value == "1234" {
		t.Errorf("ct1 的 value 被改了")
	}

	// ct2 指向的地址在 go 协程里的值是一样的
	ct2 := &ChanTest{
		value: "1111",
	}
	fmt.Printf("ct2 %v %p\n", ct2, ct2)
	ch2 <- ct2
	time.Sleep(1 * time.Millisecond)
	fmt.Printf("ct2 %v %p\n", ct2, ct2)
	if ct2.value != "4321" {
		t.Errorf("ct2 没有改")
	}
}
