# python 基础

## array out of range

https://stackoverflow.com/questions/2574636/getting-a-default-value-on-index-out-of-range-in-python

```python
b,=a[4:5] or ['sss']
b = a[4] if a[4:] else 'sss'

b = (a[4:]+['sss'])[0]
def list_at(a, i, d = ''):
  return (a[i:]+[d])[0]

liste = []
value = (liste[0:1] or ('default',))[0]
print(value)

next(iter(a[i:]), 'fail')

l = [1]
l[10] if 10 < len(l) else 'fail'
```
