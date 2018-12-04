# -*- coding: utf-8 -*-

import sys

from supervisor.childutils import listener

def write_stdout(s):
    sys.stdout.write(s)
    sys.stdout.flush()


def write_stderr(s):
    sys.stderr.write(s)
    sys.stderr.flush()


def main():
    while True:
        headers, body = listener.wait(sys.stdin, sys.stdout)
        body = dict([pair.split(":") for pair in body.split(" ")])
        write_stdout("Headers: %r\n" % repr(headers))
        write_stdout("Body: %r\n" % repr(body))
        listener.ok(sys.stdout)

        write_stdout("eventname: %s\n" % headers["eventname"])
        if headers["eventname"] == "PROCESS_STATE_STOPPED":
            write_stdout("Process state stopped...\n")


if __name__ == '__main__':
    main()
