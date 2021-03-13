#!/bin/sh

echo 盛 $(light -G) | rev | cut -c 4- | rev

