#/usr/bin/python3
import time
import binascii

# Read from file
enc_file = "msg.enc"
with open(enc_file) as f:
    # Convert from Hex first
    orig_msg = binascii.unhexlify(f.read())



# Original Function

#def encryption(msg):
#    ct = []
#    for char in msg:
#        ct.append((123 * char + 18) % 256)
#    return bytes(ct)


# Perform the same math function as the encryption algorithm
def encrypt(char):
    return ((123 * char + 18) % 256)

un_enc_bytes = []

# Run algorithm for length of encrypted message
for byte in orig_msg:
    # Numbers 1-128 represent all printable characters
    for i in range(0,129):
        # Pass "printable characters" through algorithms   
        encrypted = encrypt(i)
        # If byte passed through algorithm matches original byte
        if encrypted == byte:
            un_enc_bytes.append(chr(i))

# Neatly return all items in list to look like one string
print(f''.join(un_enc_bytes))
