#!/usr/bin/env python3

import signal
import os
import socket

from flask import Flask, abort
from werkzeug.serving import run_simple


state = True

def handler(*args):
    global state
    state = not state
    print("swap to %s" % state)

signal.signal(signal.SIGHUP, handler)

app = Flask(__name__)


@app.route('/')
def hello_world():
    if state:
        return "Hello, World! I'm %s" % socket.gethostname()
    else:
        abort(500)

if __name__ == '__main__':
    run_simple('0.0.0.0', 5000, app)
