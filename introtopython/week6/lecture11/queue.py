# For this exercise, you will be coding your very first class, a Queue class.
# Queues are a fundamental computer science data structure.
# A queue is basically like a line at Disneyland - you can add elements to a queue, and they
# maintain a specific order. When you want to get something off the end of a queue, you get
# the item that has been in there the longest (this is known as 'first-in-first-out', or FIFO).

# In your Queue class, you will need three methods:
# __init__: initialize your Queue
# insert: inserts one element in your Queue
# remove: removes one element from your Queue and returns it. If the queue is empty, raises a ValueError.


class Queue(object):
    def __init__(self):
        self.vals = []

    def insert(self, val):
        '''
        Insert a value into the queue.
        '''
        self.vals.append(val)

    def remove(self):
        '''
        Removes the value last added to the queue and returns it
        '''
        try:
            return self.vals.pop()
        except:
            raise ValueError()


queue = Queue()
queue.insert(5)
queue.insert(6)
print(queue.vals)
queue.remove()
queue.insert(7)
queue.remove()
queue.remove()
queue.remove()
