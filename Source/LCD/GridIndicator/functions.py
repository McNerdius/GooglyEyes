import httpclient, network, machine

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


def pull_data(silent=False):

    connect()

    try:
        response = httpclient.get(functionsUrl, timeout=60)
    except Exception as e:
        print(e)

    data = response.json()

    print(data)

    return data

    # disconnect()