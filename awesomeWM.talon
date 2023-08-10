os: linux
-
# Window and tag navigation
(focus|win) left:
  key(super-left)
(focus|win) down:
  key(super-down)
(focus|win) up:
  key(super-up)
(focus|win) right:
  key(super-right)
win move left:
  key(super-shift-left)
win move down:
  key(super-shift-down)
win move up:
  key(super-shift-up)
win move right:
  key(super-shift-right)

win move up follow:
  key(super-shift-up)
  key(super-up)
win move down follow:
  key(super-shift-down)
  key(super-down)

win (close|kill|die):
  key(super-d)

win bar:
  key(super-b)

win (one|air):
  key(super-a)
win (two|red):
  key(super-r)
win (three|sun):
  key(super-s)
win (four|trap):
  key(super-t)
win (five|gust):
  key(super-g)

program (run|show|open):
  key(super-p)
# todo: pick a better phrase, it seems to struggle here
(awesome restart|restart awesome):
  key(ctrl-super-r)

keynav:
  key(ctrl-t)
  key(u)
  
keynav hide:
  key(escape)
  key(escape)

keynav touch:
  key(space)

keynav (right|righty):
  key(h)

keynav middle:
  key(ctrl-h)

keynav telly:
  key(q)

keynav less:
  key(w)

keynav (update|restart):
  key(ctrl-alt-r)
  
open phone:
  user.system_command_nb('scrcpy --shortcut-mod=ralt,lalt --hid-keyboard --power-off-on-close --turn-screen-off')
open firefox:
  user.system_command_nb('firefox')