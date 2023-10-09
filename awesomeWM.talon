os: linux
-
# Window and tag navigation
# tags (what other WMs call workspaces) are conceptualized as above and below each other
win up:    key(super-up)
win down:  key(super-down)
win left:  key(super-left)
win right: key(super-right)

win move up:    key(super-shift-up)
win move down:  key(super-shift-down)
win move left:  key(super-shift-left)
win move right: key(super-shift-right)

# move a window to a different tag, and then go to that tag
win move up follow:
  key(super-shift-up)
  key(super-up)
win move down follow:
  key(super-shift-down)
  key(super-down)

win (close|kill):
  key(super-d)

# toggle titlebars
win bar:
  key(super-b)

# switch to a specific tag, instead of just "next" or "previous"
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

# if mouse grid is open, we need to exit that as well  
keynav hide:
  key(escape)
  key(escape)

keynav touch:
  key(space)

keynav (right|righty):
  key(h)

keynav middle:
  key(ctrl-h)

keynav (telly|teleport):
  key(q)

keynav less:
  key(w)

keynav (update|restart):
  key(ctrl-alt-r)
  
open phone:
  user.system_command_nb('scrcpy --shortcut-mod=ralt,lalt --hid-keyboard --power-off-on-close --turn-screen-off')
open firefox:
  user.system_command_nb('firefox')