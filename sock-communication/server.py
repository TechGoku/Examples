#  Echo server program
import socket,os

s = socket.socket(socket.AF_UNIX, socket.SOCK_STREAM)
try:
    os.remove("/tmp/test.sock")
except OSError:
    pass
s.bind("/tmp/test.sock")
s.listen(1)
conn, addr = s.accept()
while 1:
    data = conn.recv(1024)
    if not data: break
    conn.send(data)
conn.close()
