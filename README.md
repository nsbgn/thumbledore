# thumbledore

*I only uploaded this so that it may serve as inspiration. It is still being 
tweaked.*

Typing on a standard keyboard is not a great experience. Your thumbs 
idle while your weakest finger contorts to reach keys like `escape` and 
`backspace`. Exotic keyboards can remedy this, but lack portability.

`thumbledore` is a layout with 40±2 keys that is meant for keyboards 
with at least 2 or ideally 3 thumb keys per hand, but that *also* fits 
broadly within the constraints of a laptop keyboard.

-   **Each finger travels one key at most.** Your thumbs pick up the slack.
-   **Graceful degradation.** You can keep a somewhat consistent layout 
    even when you're stuck on a laptop keyboard.
-   **Easy to remember.** There is only *one* additional layer for 
    symbols and *one* for navigation and function keys. That's it.
-   **One-handed control.** The number pad can be controlled with just 
    the right hand. Navigation keys can be controlled with just the 
    left.
-   **Progressive learning.** You don't need to learn everything all at 
    once. I've found the symbol layer to be most important, so start 
    with that.
-   **No regressions.** Modifiers stack in a sensible way, and all 
    common keys that you might want to press are still available --- for 
    example, you can still emit a bare press of the right control key.
-   **No homerow mods**. Overloading letter keys necessarily introduces 
    time-based disambiguation, which can be fickle and introduces visual 
    delay. You can use tricks to mitigate this and train yourself to 
    work with it, but I have avoided them here.


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

## Graceful degradation

On a Corne, with Colemak-DH as layout, `thumbledore` looks like this, 
with the home row highlighted in thick borders:

    ┌───┬───┬───┬───┬───┬───┐  ┌───┬───┬───┬───┬───┬───┐
    │TAB│q !│w [│f +│p #│b ]│  │j ^│l 7│u 8│y 9│;:.│\|@│
    ├───╆━━━┿━━━┿━━━┿━━━╅───┤  ├───╆━━━┿━━━┿━━━┿━━━╅───┤
    │BSP┃a *│r (│s -│t =┃g )│  │m ~┃n 4│e 5│i 6│o 0┃'"`│
    ├───╄━━━┿━━━┿━━━┿━━━╃───┤  ├───╄━━━┿━━━┿━━━┿━━━╃───┤
    │sft│z &│x {│c $│d _│v }│  │k %│h 1│,<2│.>3│/? │sft│
    └───┴───┴───┴───┴───┴───┘  └───┴───┴───┴───┴───┴───┘
                ┌┄┄┄┲┅┅┅┱┄┄┄┐  ┌┄┄┄┲┅┅┅┱┄┄┄┐
                ┊ESC┋SPC┋CMB┊  ┊SFT┋sym┋RTN┊
                └fn┄┺┅┅┅┹┄┄┄┘  └┄┄┄┺┅┅┅┹┄fn┘

However, on a standard keyboard without a split spacebar, you don't have 
access to so many thumb keys. To alleviate this, we **move the right 
hand one key further along**. For a tactile reminder, I recommend 
putting a sticker on your right index finger's home key. The remapping 
then looks like this:

    ┌────┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
    │TAB │q !│w [│f +│p #│b ]┊   │j ^│l 7│u 8│y 9│;:.│\|@│   │
    ├────┴┲━━┷┯━━┷┯━━┷┯━━┷┱──┴┬──┴┬──┴┲━━┷┯━━┷┯━━┷┯━━┷┱──┴───┤
    │BSP  ┃a *│r (│s -│t =┃g )┊   │m ~┃n 4│e 5│i 6│o 0┃  '"` │
    ├─────┺┯━━┷┯━━┷┯━━┷┯━━┹┬──┴┬──┴┬──┺┯━━┷┯━━┷┯━━┷┯━━┹──────┤
    │shft  │z &│x {│c $│d _│v }┊   │k %│h 1│,<2│.>3│      /? │
    ├─────┬┴───┴┬┄┄┴┄┄┲┷┅┅┅┷┅┅┅┷┅┅┅┷┅┅┅┷┅┳┅┷┅┅┅╅┄┄┄┴┄┬───────┤
    │ctl  │alt  ┊ ESC ┋       SPC        ┃ sym ┋ RTN ┊       │
    └─────┴─────┴┄┄fn┄┺┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┻┅┅┅┅┅┹┄┄fn┄┴───────┘

Hopefully, this makes your right thumb rest on AltGr, rather than on the 
spacebar. Now, making an inward motion with your thumbs has the same 
result as on the ortholinear board. These (6×3 + 2) × 2 = 40 keys are 
the only ones you'll really *need* to access any key you'd find on a 
generic keyboard --- but you if you *do* have access to more thumb keys, 
like on a Corne, you can make your life easier with thumb access to 
Shift, Control, Alt or Compose.

Of course, on a laptop keyboard, Control and Alt are still also 
available in the bottom left.


## Layers

The default layer doesn't change much from what you're used to (which 
may be QWERTY or something else --- I recommend 
[Colemak-DH](https://colemakmods.github.io/mod-dh/) or 
[Workman](https://workmanlayout.org/)). The major difference is that 
`capslock` becomes `backspace`, avoiding the huge move your pinky would 
usually make.


### ◇ Symbol

The **Sym** layer has been crammed full with the remaining numbers and 
symbols.

Because the `SYM` key is pressed with your right-hand thumb, the 
left-hand side is preferred for the most common symbols (according to 
personal usage) --- except for number pad, which can now be controlled 
entirely with your right hand. There are two duplicate keys: `/` and 
`.`, which are also on the default layer but often needed in conjunction 
with numbers. For the same reason, you can get `:` by tapping `.` twice.


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



## Usage

Install [keyd](https://github.com/rvaiya/keyd) (version >=2.3) and copy 
`keyd/default.conf` to `/etc/keyd/`.


## Other

-   [Seniply](https://stevep99.github.io/seniply/) has similar goals.

