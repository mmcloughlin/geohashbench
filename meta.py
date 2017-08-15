import subprocess
import sys


COMMANDS = [
        'date',
        'go version',
        'sysctl -n machdep.cpu.brand_string',
        ]


for cmd in COMMANDS:
    print '$', cmd
    sys.stdout.flush()
    subprocess.check_call(cmd, shell=True)
