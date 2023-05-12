#!/bin/bash
git -C "/webserv" pull
exec tail -f /dev/null