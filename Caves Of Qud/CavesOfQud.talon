app.name: CoQ.x86_64
-
settings():
    key_wait = 25
 
# There is a built in zoom in/out keybinding, but it's unset by default.
zoom in: 
    user.mouse_move_center_active_window()
    user.mouse_scroll_up()
    user.mouse_scroll_up()
zoom out: 
    user.mouse_move_center_active_window()
    user.mouse_scroll_down()
    user.mouse_scroll_down()

abilities: key(a)
inventory: key(tab)
equipment: key(e)
reputation: key(shift-f)
skills: key(p)
stats: key(x)
( journal | notes ): key(j)
( use | interact | select | continue ): key(space)
look: key(l)
target: key(ctrl-t)
# Toggle the snapping the cursor does when you look or target
target lock toggle: key(f1)
cancel: key(escape)

# Say a direction like northwest or south, or just up/down/left/right
# for example, "open left" or "move southeast" 
( go | move ) <user.direction>: user.dpad_move(user.direction)
walk <user.direction>: user.dpad_action(user.direction, "w")
[ go ] explore: key(keypad_0)
go poi: key(backspace)

( open | loot ) <user.direction>: user.dpad_action(user.direction, "o")
( use | chat ) <user.direction>: user.dpad_action(user.direction, "space")
interact <user.direction>: user.dpad_action(user.direction, "ctrl-space")
