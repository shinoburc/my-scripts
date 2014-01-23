#!/bin/sh

rsync -av --exclude='vendor/bundle' /home/dot/work/rails/vocation /home/dot/Dropbox/backup/vocation/.
