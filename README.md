# thumbledore

*I only uploaded this so that it may serve as inspiration. It is still being 
tweaked.*

Typing on a standard keyboard is not a great experience. Your thumbs idle while 
your weakest finger contorts to reach keys like `escape` and `backspace`. 
Exotic keyboards can remedy this, but lack portability: you'd have to lug 
around an extra device wherever you go.

`thumbledore` is a set of tweaks that fit within the constraints of the typical 
keyboard.

-   **Each finger travels one key at most.** Your thumbs pick up the slack.
-   **Enables graceful degradation.** It is indended for use with a keyboard 
    that has at least 3 keys per thumb (or a foot pedal), but you can keep a 
    somewhat consistent layout even when you're stuck on a standard keyboard.
-   **Easy to remember.**

It works like this: Your eight fingers maneuver the letter keys, while 
your thumbs (or feet!) handle power keys. The left hand has overloaded 
modifier keys:

1.  `meta/esc`. The `meta` key is useful for binding actions in your window 
    manager, and it is also used to get to the arrow keys. It gets an 
    additional function when you *tap* rather than hold it: it triggers 
    `escape`, useful for modal applications like `vim`.
2.  `space`.
3.  `alt/enter`. Tapping gets you `enter`, the logical counterpart to `escape`.

On the right hand, there are oneshot modifiers: when you tap them, they 
will be activated for the following keypress.

4.  `ctrl`. Double tapping it allows you to access the function keys, 
    along with the meta keys that are covered by the navigational 
    cluster.
5.  `shift`. Double tapping activates it until you tap it again.
6.  `symbol`. Double tapping has the same effect.

Tapping `meta` and `symbol` together generates the `compose` key, 
allowing you to type special characters by typing intuitive keys in 
succession (e.g. `symbol symbol ' e` becomes `é`).

The layers and finger keys are meant to be the same on every keyboard, 
while the power keys move around based on what's convenient. On a 
standard laptop keyboard, your thumbs hover over `alt_l`, `space` and 
`alt_r`, so it makes sense, for easy access, to turn `alt_l` into 
`meta/esc` and `alt_r` into the `symbol` key. The `shift` and `control` 
keys can stay where they are. Since there is a dedicated `enter`, your 
`alt` can be tucked away in the bottom left corner where the `super` key 
was, next to `ctrl`. A keyboard with a proper thumb cluster, like a 
Corne, can put the keys in a more sensible position:


### ✎ Default

Don't worry, the letter keys themselves don't change from what you're 
used to (be it QWERTY or not). The only difference is that `capslock` 
becomes `backspace`, avoiding the huge move your pinky would usually 
make.

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

    tab  ^   [   ]   *   #       %   7   8   9   $   |
    bsp  \   (   )   _   =       ~   4   5   6   @   `
    del  !   {   }   -   +       0   1   2   3   /   &


### ⌘ Meta

The meta modifier layer is split up into two parts.


#### 🧭 Navigation

        hom  ↑  end pgu XXX      XXX XXX XXX XXX XXX
    del  ←   ↓   →  pgd XXX      XXX XXX XXX XXX XXX
        XXX XXX XXX XXX XXX      XXX XXX XXX XXX XXX

The meta layer  has a *navigational cluster* in the top right, placed so that 
you can control it with one hand. It contains directional keys, `home`/`end`, 
and `pageup`/`pagedown`. `backspace` becomes `delete`. The remaining keys act 
as if they were pressed with a `super` modifier. This is convenient as the one 
key for all non-application-specific shortcuts that you might want to set. For 
example, I set `super`+{`h`,`l`} for focusing workspaces and `super`+{`j`,`k`} 
for focusing windows.

#### ✲ Function

Finally, there must be a way to reach the function keys.

        XXX XXX XXX XXX XXX      XXX f7  f8  f9 f10
    bsp XXX XXX XXX XXX XXX      XXX f4  f5  f6 f11 XXX
        XXX XXX XXX XXX XXX      XXX f1  f2  f3 f12


## Usage

Install [keyd](https://github.com/rvaiya/keyd) (version >=2.3) and copy 
`keyd/default.conf` to `/etc/keyd/`.
