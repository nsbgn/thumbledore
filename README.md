# thumbledore

*I only uploaded this so that it may serve as inspiration. It is still being 
tweaked.*

Typing on a standard keyboard is not a great experience. Your thumbs 
idle while your weakest finger contorts to reach keys like `escape` and 
`backspace`. Exotic keyboards can remedy this, but lack portability.

`thumbledore` is a set of tweaks that are meant for keyboards with at 
least three keys per thumb, but that also fits within the constraints of 
the typical keyboard.

-   **Each finger travels one key at most.** Your thumbs pick up the slack.
-   **Easy to remember.** There is only one additional layer for 
    symbols, plus one for navigation and function keys.
-   **Enables graceful degradation.** You can keep a somewhat consistent 
    layout even when you're stuck on a standard keyboard.

Your eight fingers maneuver the letter keys, while your thumbs handle 
power keys. These are:

1.  On the left-hand side, from left to right:
    1.  `meta/esc`. The `meta` key is useful for binding actions in your 
        window manager, and it is also used to get to the arrow keys. It 
        gets an additional function when you *tap* rather than hold it: 
        it triggers `escape`, useful for modal applications like `vim`.
    2.  `space`. When held along `meta`, it exposes the `meta`-modified 
        keys that were hidden under the navigational cluster, and it 
        also allows you to access function keys.
    3.  `ctrl/enter`. Tapping gets you `enter`, the logical counterpart 
        to `escape`.
2.  On the right hand, from right to left:
    1.  `shift`. This is a one-shot key: when you tap it, it will be 
        activated for the following keypress. Double tapping activates 
        it until you tap it again. In conjunction with `meta` or `ctrl`, 
        you get `M-F1` or `C-F1`, for additional bindings.
    2.  `symbol`. Also a one-shot key, and additional variants are 
        `M-F2`/`C-F2`.
    3.  `alt`. Tapping it generates the `compose` key, allowing you to 
        type special characters by typing intuitive keys in succession 
        (e.g. `symbol symbol ' e` becomes `é`). Additional variants are 
        `M-F2`/`C-F2`.

The layers and finger keys are meant to be the same on every keyboard, 
while the power keys move around based on what's convenient. On a 
standard laptop keyboard, your thumbs hover over `alt_l`, `space` and 
`alt_r`, so it makes sense, for easy access, to turn `alt_l` into 
`meta/esc` and `alt_r` into the `symbol` key. The `shift` and `control` 
keys can stay where they are. Since there is a dedicated `enter`, your 
`alt` can be tucked away in the bottom left corner where the `super` key 
was, next to `ctrl`.


### ✎ Default

Don't worry, the letter keys themselves don't change from what you're 
used to (be it QWERTY or something else). The major difference is that 
`capslock` becomes `backspace`, avoiding the huge move your pinky would 
usually make.

    tab  q   w   e   r   t       y   u   i   o   p
    bsp  a   s   d   f   g       h   j   k   l   ;   '
    del  z   x   c   v   b       n   m   ,   .   /


### ⇧ Shift

You're already familiar with one of the layers, too: the one exposed by 
*shift*.

    tab  Q   W   E   R   T       Y   U   I   O   P
    bsp  A   S   D   F   G       H   J   K   L   :   "
    del  Z   X   C   V   B       N   M   <   >   ?


### ◇ Symbol

This layer has been crammed full with the remaining symbols. If you 
simultaneously press a pair of parentheses, brackets or braces, your 
cursor is automatically put in the middle.

    tab  &   [   ]   *   #       %   7   8   9   ^   @
    bsp  |   (   )   -   =       ~   4   5   6   $   `
    del  !   {   }   _   +       0   1   2   3   /   \

### ⌘ Meta / 🧭 Navigation


    XXX hom  ↑  end pgu XXX     XXX XXX XXX XXX XXX XXX
    XXX  ←   ↓   →  pgd XXX     XXX XXX XXX XXX XXX XXX
    XXX XXX XXX XXX XXX XXX     XXX XXX XXX XXX XXX XXX

The meta layer  has a *navigation cluster* in the top right, placed so 
that you can control it with one hand. It contains directional keys, 
`home`/`end`, and `pageup`/`pagedown`.

The remaining keys act as if they were pressed with a `super` modifier. 
This is convenient as the one key for all non-application-specific 
shortcuts that you might want to set. For example, I set 
`super`+{`h`,`l`} for focusing workspaces and `super`+{`j`,`k`} for 
focusing windows.


### ⌘ Meta / ✲ Function

Since the navigational cluster obscures half of the `super`-modified 
keys, the meta modifier layer is split up into two parts. That is, when 
you combine it with `space`, the navigation cluster on the left hand 
side is lost, and you gain a function key cluster on the right hand 
side.

    XXX XXX XXX XXX XXX XXX      XXX f7  f8  f9 f10 XXX
    XXX XXX XXX XXX XXX XXX      XXX f4  f5  f6 f11 XXX
    XXX XXX XXX XXX XXX XXX      XXX f1  f2  f3 f12 XXX


## Usage

Install [keyd](https://github.com/rvaiya/keyd) (version >=2.3) and copy 
`keyd/default.conf` to `/etc/keyd/`.
