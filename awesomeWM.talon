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

(run|show|open) program[s]:
  key(super-p)
# todo: pick a better phrase, it seems to struggle here
(awesome restart|restart awesome):
  key(ctrl-super-r)

(mouse nav|key nav):
  key(ctrl-t)
