os: linux
-
# Window and tag navigation
(focus|win) left:
  key(super-left)
(focus|win|tag) down:
  key(super-down)
(focus|win|tag) up:
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

tag (one|air):
  key(super-a)
tag (two|red):
  key(super-r)
tag (three|sun):
  key(super-s)
tag (four|trap):
  key(super-t)
tag (five|gust):
  key(super-g)

(run|show|open) program[s]:
  key(super-p)
# todo: pick a better phrase, it seems to struggle here
(awesome restart|restart awesome):
  key(ctrl-super-r)

(mouse nav|key nav):
  key(ctrl-t)
