# Overview

This is a little helper module to 'automatically' invoke destructors for singeltons.
It might be used for gathering and bulk-invoking functions.

# Howto

Register functions to be called with `tear_down_register(void (*destructor)(void))` .

When you call 'tear_down();`, all of the registered functions will be called.
