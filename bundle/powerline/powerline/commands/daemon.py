# vim:fileencoding=utf-8:noet
from __future__ import (division, absolute_import, print_function)

import argparse


def get_argparser(ArgumentParser=argparse.ArgumentParser):
	parser = ArgumentParser(description='Daemon that improves powerline performance.')
	parser.add_argument('--quiet', '-q', action='store_true', help='Without other options: do not complain about already running powerline-daemon instance. Will still exit with 1. With `--kill\' and `--replace\': do not show any messages. With `--foreground\': ignored. Does not silence exceptions in any case.')
	parser.add_argument('--socket', '-s', help='Specify socket which will be used for connecting to daemon.')
	arggr = parser.add_mutually_exclusive_group().add_argument
	arggr('--kill', '-k', action='store_true', help='Kill an already running instance.')
	arggr('--foreground', '-f', action='store_true', help='Run in the foreground (don’t daemonize).')
	arggr('--replace', '-r', action='store_true', help='Replace an already running instance.')
	return parser
