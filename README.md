# thumbledore

*I only uploaded this so that it may serve as inspiration. It is still being 
tweaked.*

Typing on a standard keyboard is not a great experience. Your thumbs 
idle while your weakest finger contorts to reach keys like `escape` and 
`backspace`. Common symbols like numbers require you to abandon the 
homerow entirely. Exotic keyboards can remedy all this, but lack 
portability.

Thumbledore is a keyboard layout that is meant for keyboards with at 
least 2 or ideally 3 thumb keys per hand, but that *also* fits broadly 
within the constraints of a laptop keyboard.

-   **Each finger travels one key at most.** Your thumbs pick up the slack.
-   **Easy to remember.** All symbols are accessible with just the 
    normal `shift` and `altgr` modifiers. There is only *one* additional 
    layer for navigation/function keys. That's it. No wild key 
    combinations.
-   **One-handed control.** The number pad can be controlled with just 
    the right hand. Navigation keys can be controlled with just the 
    left.
-   **Graceful degradation.** You can keep a somewhat consistent layout 
    even when you're stuck on a normal keyboard. As a concession to 
    laptop keyboards, the bottom-left key still doubles as a `leftshift` 
    there (despite being `compose` when tapped).
-   **Progressive learning.** You don't need to learn everything all at 
    once. I've found the `altgr` symbols to be the most ergonomically 
    significant, so start with that.
-   **No regressions.** Modifiers stack in a sensible way, and all 
    common keys that you might want to press are still available --- for 
    example, you can still emit a bare press of the right control key.
-   **No homerow mods.** While typing at speed, keypresses will often 
    overlap, which means that any attempted overload of alpha keys must 
    resort to timeouts. This introduces [visual delay][pftwp] and can 
    cause misfiring. There are [ways][urob] to mitigate it and train 
    yourself to work with it, but I have not made that sacrifice here.
-   **Overloading is used sparingly.** There is only *one* overloaded 
    key: the `fn` key doubles as `esc` when tapped. To mitigate the 
    downsides of overloading, the `esc` is only registered when the tap 
    is shorter than *x* milliseconds.


## Symbols

You might not need to change what you're used to. In the 
Thumbledore-Qwerty variant, all symbols stay in the same place relative 
to the standard en-US Qwerty layout. The major addition is that the 
Level-3 variants (which can be accessed by the AltGr modifier) have been 
crammed full with numbers and symbols that you would otherwise have had 
to abandon the standard hand position for.

![The thumbledore-qwerty keyboard layout.](kb-qwerty.svg)

The other big difference is that `capslock` becomes `backspace`, 
avoiding the huge move your pinky would have made.

Because AltGr is pressed with your right-hand thumb, the left-hand side 
of the keyboard is preferred for things like parentheses, while the 
number pad can now be controlled entirely with your right-hand.

<!--
There are two duplicate keys: `/` and `.`, which are also on the default 
layer but often needed in conjunction with numbers. For the same reason, 
you can get `:` by tapping `.` twice.
-->

[^1]: When you press a key, your keyboard will send a *scancode* to the 
computer; the kernel maps that to a *keycode*; and finally, your 
keyboard layout considers that key (along with the active modifiers) and 
emits a *keysym*. Thumbledore remaps symbol keys at the keysym level, 
while additional tricks are mapped at the keycode or scancode-level. 
This allows us to tease the two apart.

<!--
## Keys

*Special keys* are mostly controlled with your thumbs, whereas the keys 
for letters are symbols are controlled with the remaining symbols. These 
are the special keys:

1.  `ESC/fn`. This key accesses the **Function** layer that contains the 
    navigation keys and otherwise activates the `Super` modifier, useful 
    for binding actions in your window manager. The key gets an 
    additional function when you *tap* rather than hold it: it then 
    triggers `Escape`, useful for modal applications.
2.  `RTN/fn`. The logical counterpart to `ESC/fn`: tapping this one gets 
    you `Enter` (`Return`). Ideally, you can still get repeating enters 
    by double tapping and holding, but this isn't implemented 
    everywhere.
3.  The symbol key `SYM` accesses the **Symbol** layer for all the 
    characters that would usually involve finger contortions. It is a 
    sticky key: when you tap it, it will be activated for the following 
    keypress.
4.  The familiar shift key `SFT` is technically a modifier, but you 
    could also see it as providing access to the **Shift** layer. It has 
    also been turned into a sticky key.
5.  The Control and Alt modifiers have been overloaded on the `z/`, and 
    `x.` keys respectively. On a standard keyboard, they are still 
    accessible as regular keys.
6.  The compose key (or combo key) `CMB` allows you to type special 
    characters by typing intuitive keys in succession. For example,  
    `CMB ' e` becomes `é`.



### 🮰 Function

The **Fn** layer contains a navigation cluster, placed so that you can 
control it with one hand. It contains directional keys, `home`/`end`, 
and `pageup`/`pagedown`.

The layer also has the *function keys* and provides access to the 
modifiers: tapping the keys labeled `alt`, `ctrl` and `meta` activates 
the corresponding modifiers for the remainder of the time that **Fn** is 
pressed.

This layer can be activated either via `ESC/fn` on the left or via 
`RTN/fn` on the right --- but it will only be activated for the keys 
pressed with the same hand! The keys on the other side will act as if 
they were pressed with the `Super+Control` modifier. This is convenient 
for quick access to window-manager shortcuts that you might want to set, 
such as navigating desktops and closing windows.

Pressing both *Fn* keys allows you to combine modifiers with the keys on 
the *Fn* layer itself, or to generate bare taps of said modifiers.

    ┌────┬────┬────┬────┬────┬────┐  ┌────┬────┬────┬────┬────┬────┐
    │DEL │HOME│UP  │END │PGUP│PAUS│  │  F7│  F8│  F9│ F10│ F11│ F12│
    ├────╆━━━━┿━━━━┿━━━━┿━━━━╅────┤  ├────╆━━━━┿━━━━┿━━━━┿━━━━╅────┤
    │BKSP┃LEFT│DOWN│RGHT│PGDN┃SCLK│  │  F1┃  F2│  F3│  F4│  F5┃  F6│
    ├────╄━━━━┿━━━━┿━━━━┿━━━━╃────┤  ├────╄━━━━┿━━━━┿━━━━┿━━━━╃────┤
    │shft│MENU│alt │ctrl│meta│SYRQ│  │INSR│meta│ctrl│alt │CAPS│shft│
    └────┴────┴────┴────┴────┴────┘  └────┴────┴────┴────┴────┴────┘
-->


## Usage and installation

Install [keyd](https://github.com/rvaiya/keyd) (version >=2.3) and copy 
`keyd/default.conf` to `/etc/keyd/`.

<!--
## Other

[Seniply] and [Callum] have similar goals: limited keys and no home-row 
mods.

# Consideration for the thumb keys

-   All thumb keys except space are modifiers or layer keys, because you 
    have full range of motion with the rest of your fingers while 
    holding them.
-   Since we avoid crazy modifier combinations, `sym` and `shift` never 
    make sense to press together. Therefore, they should be on the same 
    finger.
-   `space` should be opposite from  `shift` and `sym`, so that you can 
    still use it while in their respective modes.

-->

<!-- Reading -->
[Preconditions-Guide]: https://precondition.github.io/home-row-mods
[Urob]: https://github.com/urob/zmk-config#timeless-homerow-mods
<!-- About visual latency -->
[pftwp]: https://pavelfatin.com/typing-with-pleasure/#human-side

<!-- Layouts -->
[Colemak-DH]: https://colemakmods.github.io/mod-dh/
[Workman]: https://workmanlayout.org/

<!-- More layouts -->
[Seniply]: https://stevep99.github.io/seniply/
[Callum]: https://github.com/callum-oakley/qmk_firmware/tree/master/users/callum
[Miryoku]: https://github.com/manna-harbour/miryoku
