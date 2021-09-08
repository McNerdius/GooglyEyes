import httpclient, network, machine, ujson, framebuf

from secrets import functionsUrl, ssid, password

wlan = network.WLAN(network.STA_IF)
wlan.active(True)

print(functionsUrl)
print(ssid)
print(password)


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
    # not sure about MONO_VLSB, MONO_HLSB, MONO_HMSB tho
    fbuf = framebuf.FrameBuffer(bytearray(3200), 160, 160, framebuf.MONO_VLSB)
    fbuf.fill(1)
    return drawcircle(fbuf, 160, 0)


def pupil_framebuffer():
    # 64*64 bits == 512 bytes
    # there are 2 and 4 bit options, grayscale edges coule be done in circle()
    fbuf = framebuf.FrameBuffer(bytearray(512), 64, 64, framebuf.MONO_VLSB)
    fbuf.fill(0)
    return drawcircle(fbuf, 64, 1)


def drawcircle(fbuf, r, color):
    d = r * 2
    for x in range(d):
        for y in range(d):
            if ((pow(x, 2) + pow(y, 2)) < pow(r, 2)):
                fbuf.pixel(x, y, color)

    return fbuf
