from bottle import route, run, request, template
import os

@route('/')
def default():
    return "Default landing page"

@route('/hello')
def hello():
    return "Hello World!"

@route('/KEY_POWER')
def poweron():
    os.system('irsend send_once YAMAHA-RAV293 KEY_POWER')
    return "Power state toggled"

@route('/KEY_VOLUMEUP')
def volumeup():
    os.system('irsend send_once YAMAHA-RAV293 KEY_VOLUMEUP')
    return "Volume increased by 0.5db"

@route('/KEY_VOLUMEDOWN')
def volumedown():
    os.system('irsend send_once YAMAHA-RAV293 KEY_VOLUMEDOWN')
    return "Volume decreased by 0.5db"

@route('/INPUT_HDMI1')
def INPUT_HDMI1():
    os.system('irsend send_once YAMAHA-RAV293 INPUT_HDMI1')
    return "Input selected: HDMI1"

@route('/INPUT_HDMI2')
def INPUT_HDMI1():
    os.system('irsend send_once YAMAHA-RAV293 INPUT_HDMI2')
    return "Input selected: HDMI2"

@route('/INPUT_AV1')
def INPUT_HDMI1():
    os.system('irsend send_once YAMAHA-RAV293 INPUT_AV1')
    return "Input selected: AV1"

@route('/INPUT_AUDIO2')
def INPUT_HDMI1():
    os.system('irsend send_once YAMAHA-RAV293 INPUT_AUDIO2')
    return "Input selected: AUDIO2"

@route('/INPUT_TUNER')
def INPUT_HDMI1():
    os.system('irsend send_once YAMAHA-RAV293 INPUT_TUNER')
    return "Input selected: TUNER"

run(host='192.168.1.4', port=8080, debug=True)

# LIRC Commands for RAV293 Remote
#INPUT_HDMI1              0x5EA1E21C
#INPUT_HDMI2              0x5EA152AC
#INPUT_HDMI3              0x5EA1B24C
#INPUT_HDMI4              0x5EA10AF4
#INPUT_AV1                0x5EA1CA34
#INPUT_AV2                0x5EA16A94
#INPUT_AV3                0x5EA19A64
#INPUT_AV4                0x5EA13AC4
#INPUT_AV5                0x5EA1FA04
#INPUT_AV6                0x5EA146B8
#INPUT_AUDIO1             0x5EA1A658
#INPUT_AUDIO2             0x5EA116E8
#INPUT_TUNER              0x5EA16897
#TUNER_FM                 0xFE801AE4
#TUNER_AM                 0xFE80AA54
#TUNER_PRESET_UP          0xFE80DA24
#TUNER_PRESET_DOWN        0xFE807A84
#TUNER_TUNNING_UP         0xFE808678
#TUNER_TUNNING_DOWN       0xFE8026D8
#DSP_MOVIE                0x5EA111EE
#DSP_MUSIC                0x5EA1916E
#DSP_STEREO/ENHANCER      0x5EA129D6
#DSP_STRAIGHT             0x5EA16A95
#DSP_PURE_DIRECT          0x5EA1BB44
#DSP_SUR_DECODE           0x5EA1B14E
#KEY_POWER                0x5EA121DE                #  Was: ON_SCREEN
#KEY_VOLUMEUP             0x5EA158A7                #  Was: VOL_UP
#KEY_VOLUMEDOWN           0x5EA1D827                #  Was: VOL_DOWN
#VOL_MUTE                 0x5EA138C7
