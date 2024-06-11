#!/bin/sh

doas dd if="$1" of=/dev/da0 bs=1M conv=sync status=progress