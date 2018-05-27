<!-- markdownlint-disable no-inline-html -->

# Multi-Threading in Python

`May 2018`

A reference implementation of multi threading network requests for better
perfromance with python3.

`TODO`: Parallelize `GET` requests to fetch data over the network.

---

- Creating a Thread Worker class that extends `Thread` and has a `task_queue`
    - Set an `action_type` to reuse the worker for different type of actions
    that the worker queue can be reused for.
```
from threading import Thread
from util.data_util import getData

class ThreadWorker(Thread):

    def __init__(self, queue):
        Thread.__init__(self)
        self.task_queue = queue

    def run(self):
        while True:
            action_type, args = self.task_queue.get()
            if action_type == 'getData':
                getData(args=args)

            self.task_queue.task_done()
```

- Writing the Data Util for `GET` requests to fetch data
    - Using `**kwargs` for generic named param args as a dict.
    - Using an `output` container to return content.
```
import urllib.request
from urllib.error import HTTPError

def getData(**kwargs):
    args = kwargs['args']

    try:
        content = urllib.request.urlopen(args['get_url']).read()
    except HTTPError:
        content = None

    args['output']['content'] = content
```

- Creating and starting a multi threaded task queue
```
from queue import Queue

task_queue = Queue()
for i in range(CPU_COUNT):
    worker = ThreadWorker(task_queue)
    worker.daemon = True
    worker.start()
```

- Putting tasks in task queue
```
output1 = {}
task_queue.put(('getData', { 'get_url' : 'http://google.com',
                             'output' : output1}))
output2 = {}
task_queue.put(('getData', { 'get_url' : 'http://example.com',
                             'output' : output2}))
```

- Waiting for tasks to finish
```
task_queue.join()
```

<p><b>Source code: </b><a href="https://github.com/aayushuppal/PyUtils/tree/master/MultiThread">
<i class="fab fa-github"> PyUtils/MultiThread</i></a></p>
