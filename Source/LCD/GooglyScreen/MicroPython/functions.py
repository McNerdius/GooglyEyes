import httpclient, network, machine, ujson, framebuf

from secrets import functionsUrl, ssid, password

wlan = network.WLAN(network.AP_IF)
wlan.active(False)
wlan = network.WLAN(network.STA_IF)
wlan.active(True)


def connect():
    if not wlan.isconnected():
        wlan.connect(ssid, password)
    while not wlan.isconnected():
        machine.lightsleep(50)


def disconnect():
    wlan.disconnect()
    wlan.active(False)


def push_data(environment_data, silent=True):

    connect()
    data = ujson.dumps(environment_data)
    if (not silent):
        print("pushing data: " + data)

    try:
        # foo_urequests.post(functionsUrl, data=data)
        httpclient.post(functionsUrl, json=environment_data, timeout=60)
    except Exception as e:
        print(e)

    # disconnect()


def eye_framebuffer():
    # 160*160 bits == 3200 bytes
    return drawcircle(160, 1, 0)


def pupil_framebuffer():
    # 64*64 bits == 512 bytes
    return drawcircle(64, 1, 0)


# there are 2 and 4 bit options, grayscale edges could be done in circle()
# not sure about MONO_VLSB, MONO_HLSB, MONO_HMSB tho
def drawcircle(r, bg, color):

    fbuf = framebuf.FrameBuffer(bytearray((r * r) / 8), r, r,
                                framebuf.MONO_VLSB)
    fbuf.fill(bg)

    d = r * 2
    for x in range(d):
        for y in range(d):
            if ((pow(x, 2) + pow(y, 2)) < pow(r, 2)):
                fbuf.pixel(x, y, color)

    return fbuf
