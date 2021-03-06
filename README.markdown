Various tools related to the Wii Remote / Wii Balance Board.

## bal

Displays Balance Board weight data, mostly for debug purposes.

Usage: ./bal

## mpcal

Calibrates the Motion Plus and outputs the calibration data.

Usage: ./mpcal

(the program will then tell you to put the wiimote onto a flat surface)

## mplog

Logs Motion Plus data to stdout, in the format

    seconds.nanoseconds pitch roll yaw

Where Pitch, Roll and Yaw are the raw 16-bit values.

Usage: ./mplog **>** *filename*

See also:

* http://www.grc.nasa.gov/WWW/k-12/airplane/Images/rotations.gif

## neverball

Experimental patch to control neverball with the balance board.

See also:

* http://finalrewind.org/interblag/entry/neverball-balance-board/

## wibble

Wiimote Blinkenlights. Press D-Pad up to toggle modes, Home to quit.

Usage: ./wibble

## wiiplay

Wrapper around `wiispkr`. Plays any mp3/ogg/wav audia file on the wiimote
speaker.

Requires: `mpg321` / `oggdec` and `sox`. Also, `wiispkr` must be in the current
working directory.

Usage: ./wiiplay *btaddr* *file* [*volume*]

Accepted volumes are 0 .. 255, the default is 64.

## wiiplay-mpd

Outputs music played on a local MPD on the Wiimote speaker. Requires `wiispkr`
in the current working directory and `sox` in $PATH.

Usage: ./wiiplay-mpd *btaddr* [*volume*]

If the MPD does not have a suitable FIFO output, wiiplay-mpd will output
the necessary configuration snippet.

## wiispkr

Plays an 8bit 2kHz signed PCM file on the wiimote speaker. You can create one
using e.g. `sox --norm /tmp/in.wav -b 8 /tmp/out.raw channels 1 rate 2000`

Usage: ./wiispkr *btaddr* [*volume*] **<** *file*
