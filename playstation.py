"""
A work in progress script that allows you to define, in simple terms, a PS1 that
you want for your bash shell, and then emits the exact code that's required
to make that PS1 happen.
""" 


from __future__ import annotations

from typing import Optional
import platform
import random

from colorama import Fore, Back, Style

def hostname_color(hostname: Optional[str] = None) -> str:
    R = random.Random()
    R.seed(platform.node())
    # Copy rest from existing bashrc


user = r'\u'
current_working_directory = r'\w'
short_hostname = r'\h'

# Build a PS1 out of a list that you define, or pass in, and then
# emit the appropriate PS1 string to set to make it.
