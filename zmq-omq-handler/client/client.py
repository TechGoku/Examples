import zmq

context = zmq.Context()

#  Socket to talk to server
print("Connecting to hello world server…")
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5555")
# socket.connect("tcp://localhost:1111")

#  Do 10 requests, waiting each time for a response
for request in range(20):
    print(f"Sending request {request} …")
    socket.send(b"example.diana")

    #  Get the reply.
    message = socket.recv()
    print(f"Received reply {request} [ {message} ]")