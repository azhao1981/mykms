# fire

https://github.com/google/python-fire

pip install fire

Google 开源的 Python 命令行库：深入 fire（一）
https://www.toutiao.com/a6776167957673280012/

```python
import fire
def add(x, y):
  return x + y
def multiply(x, y):
  return x * y
if __name__ == '__main__':
  fire.Fire()
```