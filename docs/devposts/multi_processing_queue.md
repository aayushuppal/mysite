<!-- markdownlint-disable no-inline-html -->

# Queue and Multi Processing Pool - Python

`May 2019`

Interfacing multiprocessing queue to delegate tasks to multiprocessing pool in python

---

Code snippet

```python
#!/usr/bin/env python3.7

from multiprocessing import Pool, Queue
from os import getpid
from time import sleep
from queue import Empty
from random import randint


QUEUE_TIMEOUT = 5  # seconds

proc_queue = Queue()


def worker_fn(queue: Queue):
    print(f"{getpid()} working")
    try:
        while True:
            item = queue.get(block=True, timeout=QUEUE_TIMEOUT)
            sleep(randint(1, 4))
            print(f"{getpid()} got {item}")
    except Empty:
        print(f"{getpid()} stopping")


proc_pool = Pool(processes=4, initializer=worker_fn, initargs=(proc_queue,))

for i in range(10):
    payload = {"id": i}
    proc_queue.put(payload)

proc_pool.close()
proc_pool.join()
```
