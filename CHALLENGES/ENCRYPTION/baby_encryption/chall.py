import string
from secret import MSG

filename="./msg.enc"

def encryption(msg):
    ct = []
    for char in msg:
        ct.append((123 * char + 18) % 256)
    return bytes(ct)

ct = encryption(MSG)
f = open(filename,'w')
f.write(ct.hex())
f.close()


