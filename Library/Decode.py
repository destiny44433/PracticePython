import base64

class Decode:

    def decode(self, EncodedString):
        return base64.b64decode(EncodedString).decode("utf-8")

    def encode(self, DecodedString):
        return base64.b64encode(DecodedString).encode("utf-8")