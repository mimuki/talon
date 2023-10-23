from typing import Dict
from talon import Module, actions

mod = Module()

@mod.capture(rule="(north | south | east | west | northeast | northwest | southeast | southwest | up | down | left | right )")
def direction(m) -> Dict[str, bool]:
    """
    Matches on a basic compass direction to return which keys should
    be pressed.
    """
    return {
        "keypad_8": "up" in m or "north" in m,
        "keypad_9": "northeast" in m,
        "keypad_6": "east" in m or "right" in m,
        "keypad_3": "southeast" in m,
        "keypad_2": "south" in m or "down" in m,
        "keypad_1": "southwest" in m,
        "keypad_4": "west" in m or "left" in m,
        "keypad_7": "northwest" in m
    }

@mod.action_class
class GameActions:
    def dpad_keydown(direction: Dict[str, bool]):
        "Holds down the keys corresponding to the given direction"
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:down")

    def dpad_keyup(direction: Dict[str, bool]):
        "Releases the keys corresponding to the given direction"
        for key, pressed in direction.items():
            if pressed:
                actions.key(f"{key}:up")

    def dpad_move(direction: Dict[str, bool]):
        "Moves the character in the given direction"
        actions.user.dpad_keydown(direction)
        actions.user.dpad_keyup(direction)

    def dpad_action(direction: Dict[str, bool], key: str):
        "Does an action in the given direction"
        actions.key(key)
        actions.sleep("50ms")
        actions.user.dpad_move(direction)
