# thumbledore

*I only uploaded this so that it may serve as inspiration. It is still being 
tweaked.*

Typing on a standard keyboard is not a great experience. Your thumbs 
idle while your weakest finger contorts to reach keys like `escape` and 
`backspace`. Exotic keyboards can remedy this, but lack portability.

`thumbledore` is a 42-key layout that is meant for keyboards with thumb 
keys like the Corne, but that *also* fits broadly within the constraints 
of a laptop keyboard.

-   **Each finger travels one key at most.** Your thumbs pick up the slack.
-   **Graceful degradation.** You can keep a somewhat consistent layout 
    even when you're stuck on a laptop keyboard.
-   **Easy to remember.** There is only one additional layer for 
    symbols, one for navigation keys, and you combine them for the 
    function keys.
-   **One-handed control.** The number pad can be controlled with just 
    the right hand. Navigation keys can be controlled with just the 
    left.
-   **Progressive learning.** You don't have to learn everything all at 
    once --- or ever. I've found the symbol layer to be most important, 
    so start with that.


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
    │   │z &│x {│c $│d _│v }│  │k %│h 1│,<2│.>3│/? │   │
    └───┴ctl┴alt┴───┴───┴───┘  └───┴───┴───┴alt┴ctl┴───┘
                ┌┄┄┄┲┅┅┅┱┄┄┄┐  ┌┄┄┄┲┅┅┅┱┄┄┄┐
                ┊ESC┋SPC┋CMB┊  ┊SFT┋SYM┋RTN┊
                └fn┄┺┅┅┅┹┄┄┄┘  └sft┺sym┹┄fn┘

However, on a standard keyboard without a split spacebar, you don't have 
access to so many thumb keys. To alleviate this, we **move the right 
hand one key further right**. (For a tactile reminder, I recommend 
putting stickers on the homerow.) Hopefully, this makes your right thumb 
rest on the alt key, rather than on the spacebar. The remapping then 
looks like this:

    ┌────┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┬───┐
    │TAB │q !│w [│f +│p #│b ]┊   │j ^│l 7│u 8│y 9│;:.│\|@│   │
    ├────┴┲━━┷┯━━┷┯━━┷┯━━┷┱──┴┬──┴┬──┴┲━━┷┯━━┷┯━━┷┯━━┷┱──┴───┤
    │BSP  ┃a *│r (│s -│t =┃g )┊   │m ~┃n 4│e 5│i 6│o 0┃  '"` │
    ├─────┺┯━━┷┯━━┷┯━━┷┯━━┹┬──┴┬──┴┬──┺┯━━┷┯━━┷┯━━┷┯━━┹──────┤
    │SFT   │z &│x {│c $│d _│v }┊   │k %│h 1│,<2│.>3│      /? │
    ├sft──┬┴ctl┴alt┴┄┄┲┷┅┅┅┷┅┅┅┷┅┅┅┷┅┅┅┷┅┳┅┷┅┅┅╅alt┴┄┬────ctl┤
    │CTL  │ALT  ┊ ESC ┋       SPC        ┃ SYM ┋ RTN ┊       │
    └─────┴─────┴┄┄fn┄┺┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┅┻┅sym┅┹┄┄fn┄┴───────┘

Now, making an inward motion with your thumbs has the same result as on 
the ortholinear board. The outward motion is no longer possible, except 
by also holding the opposite `fn` key. That is, `ESC/fn + SPC` activates 
`sft` and `RTN/fn + SPC` yields `CMB`. There is also still a `SFT` in 
the usual place at the bottom left.


## Layers

The default layer doesn't change much from what you're used to (which 
may be QWERTY or something else --- I recommend 
[Colemak-DH](https://colemakmods.github.io/mod-dh/) or 
[Workman](https://workmanlayout.org/)). The major difference is that 
`capslock` becomes `backspace`, avoiding the huge move your pinky would 
usually make.


### ◇ Symbol

The *symbol* layer has been crammed full with the remaining numbers and 
symbols:

    !   [   +   #   ]       ^   7   8   9   .:  &
    *   (   -   =   )       ~   4   5   6   0   `
    @   {   $   _   }       %   1   2   3   /

Because the `SYM` key is pressed with your right-hand thumb, the 
left-hand side is preferred for the most common symbols (according to 
personal usage) --- except for number pad, which can now be controlled 
entirely with your right hand. There are two duplicate keys: `/` and 
`.`, which are also on the default layer but often needed in conjunction 
with numbers. For the same reason, you can get `:` by tapping `.` twice.


### 🮰 Function

The **Function** layer can be activated either via `ESC/fn` on the left 
or via `RTN/fn` on the right. Pressing both generates a bare tap of the 
`Super` key, which opens a menu in many desktop environments. 

If activated on the left side, the left side itself contains a 
*navigation cluster*, placed so that you can control it with one hand. 
It contains directional keys, `home`/`end`, and `pageup`/`pagedown`:

    ┌───┬───┬───┬───┬───┬┄┈
    │DEL│HOM│ ▲ │END│PG▴│
    ├───╆━━━┿━━━┿━━━┿━━━╅┄┈
    │BSP┃ ◀ │ ▼ │ ▶ │PG▾┃
    ├───╄━━━┿━━━┿━━━┿━━━╃┈┈
    ┊   ┊   ┊   ┊   ┊   ┊

The remaining keys act as if they were pressed with the `Super` 
modifier. This is convenient as the one key for all general shortcuts 
that you might want to set, such as navigating desktops and closing 
windows.


### ✲ Function + Symbol

Finally, the combined **Fn/Symbol** layer contains the F keys, media 
controls, screen brightness, as well as toggles for wireless, touchpad, 
keyboard layout, headphones...

    XXXX prev volm next stop lght    scrl                     lay-
    XXXX song  up  song       up     lock  F7   F8   F9   F12 out

    XXXX re-  volm for- play lght    prnt                      in-
    XXXX wind down ward paus down    scrn  F4   F5   F6   F11 sert

    caps mute mute XXXX XXXX XXXX    paus                     blue
    lock  mic spkr XXXX XXXX XXXX    brk   F1   F3   F3   F10 toot


## Usage

Install [keyd](https://github.com/rvaiya/keyd) (version >=2.3) and copy 
`keyd/default.conf` to `/etc/keyd/`.


## Other

-   [Seniply](https://stevep99.github.io/seniply/) has similar goals.

