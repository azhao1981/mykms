
https://medium.com/craft-academy/hello-world-using-ember-f0c050ba1c90
npm install -g ember-cli
ember new hello-world
ember s
package.json
"start": "ember serve -H 192.168.56.140",

ember g acceptance-test hello-world
ember test --server

```js
test('template renders "Hello World"', function(assert) {
  visit('/hello-world');
  andThen(function() {
    assert.equal(find('h1').text(), 'Hello World');
  });
});
```

andThen is not defined
https://discuss.emberjs.com/t/referenceerror-andthen-is-not-defined/14266
The testing system just changed in 3.0 so some of the docs are very different between 2.18 and 3.0. I think in this case you’d want to make sure you import “andThen” from the test helpers, like this:
Oh I should also mention that in 3.0 I believe the preferred way is to use async/await rather than andThen, hence why andThen doesn’t seem to be mentioned in the guide anymore.
但实际上andThen已经不存在了

```js
test('template renders "Hello World"',async function (assert) {
    await visit('/hello-world');
    assert.equal(find('h1').text(), 'Hello World');
  });
```
TypeError: find(...).text is not a function


ember g route hello-world

https://github.com/tastejs/todomvc
https://todomvc.com/examples/emberjs/