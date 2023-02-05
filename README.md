# thumbledore

*I only uploaded this so that it may serve as inspiration. It is still being 
tweaked.*

Typing on a standard keyboard is not a great experience. Your thumbs 
idle while your weakest finger contorts to reach keys like `escape` and 
`backspace`. Exotic keyboards can remedy this, but lack portability.

`thumbledore` is a set of tweaks that are meant for exotic keyboards 
with at least three keys per thumb, but that also fits within the 
constraints of a laptop keyboard.

-   **Each finger travels one key at most.** Your thumbs pick up the slack.
-   **Easy to remember.** There is only one additional layer for 
    symbols, plus one for navigation/function keys.
-   **Graceful degradation.** You can keep a somewhat consistent layout 
    even when you're stuck on a laptop keyboard.
-   **Progressive learning.** You don't have to learn everything all at 
    once --- or ever. Start with just the symbol layer, assigned to 
    `altgr`.
-   **One-handed control.** The number pad can be controlled with just 
    the right hand. Arrow keys, and window controls that would 
    reasonably complement mouse actions, can be controlled with 
    exclusively your left hand.
    (If your left hand is dominant, you may want to mirror the symbol 
    and function layers.)

The *power keys* are controlled with your two thumbs. Their location 
depends on what's convenient based on your keyboard, your hands, and 
your habits. The *alpha keys* remain consistent across keyboards and are 
controlled with the remaining fingers.


## Alpha keys

There are 6x3 alpha keys for each hand --- minus two, because we leave 
the bottom left and bottom right `shift` keys out of consideration for 
now.

#### ✎ Default layer

Don't worry, the alpha keys themselves don't change from what you're 
used to (be it QWERTY or something else). The major difference is that 
`capslock` becomes `backspace`, avoiding the huge move your pinky would 
usually make. To make space for extra symbols, there is an asterisk 
where `[` used to be.

    tab  q   w   e   r   t       y   u   i   o   p   *
    bsp  a   s   d   f   g       h   j   k   l   ;   '
         z   x   c   v   b       n   m   ,   .   /

#### ⇧ Shift

You're already familiar with one of the layers, too: the one exposed by 
*shift*.

    tab  Q   W   E   R   T       Y   U   I   O   P   !
    bsp  A   S   D   F   G       H   J   K   L   :   "
         Z   X   C   V   B       N   M   <   >   ?

#### ◇ Symbol

The *symbol* layer has been crammed full with the remaining symbols.

    tab  |   [   ]   +   #       ^   4   5   6   @   *
    bsp  \   (   )   -   =       ~   1   2   3   0   `
         &   {   }   _   $       %   7   8   9   /

Because the symbol key is usually pressed with your right-hand thumb, 
the left-hand side is preferred for the most common symbols[^1] --- 
except for number pad, which can be controlled entirely with your right 
hand. There are two duplicate keys: `/` and `.`, which are often needed 
in conjunction with numbers.

[^1]: According to the frequency with which I personally need them.

#### ✲ Function / 🮰 Navigation

    XXX hom  ↑  end pgu XXX     XXX XXX XXX XXX XXX XXX
    bsp  ←   ↓   →  pgd del     XXX XXX XXX XXX XXX del
    XXX XXX XXX XXX XXX XXX     XXX XXX XXX XXX XXX XXX

The function layer has a *navigation cluster* in the top right, placed 
so that you can control it with one hand. It contains directional keys, 
`home`/`end`, and `pageup`/`pagedown`. Combining it with the `symbol` 
key gets you `f1`, `f2`, etcetera, on the number keys.

The remaining keys act as if they were pressed with a `super` modifier. 
This is convenient as the one key for all non-application-specific 
shortcuts that you might want to set. For example, I set 
`super`+{`h`,`l`} for focusing workspaces and `super`+{`j`,`k`} for 
focusing windows.



## Power keys

Your eight fingers maneuver the alpha keys, while your thumbs handle 
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
        activated for the following keypress. In conjunction with `meta` 
        or `ctrl`, you get `M-F1` or `C-F1`, for additional bindings.
    2.  `symbol`. Also a one-shot key, and additional variants are 
        `M-F2`/`C-F2`.
    3.  `alt`. Tapping it generates the `compose` key, allowing you to 
        type special characters by typing intuitive keys in succession 
        (e.g. `symbol symbol ' e` becomes `é`). Additional variants are 
        `M-F2`/`C-F2`.

On a standard laptop keyboard, your thumbs hover over `alt_l`, `space` 
and `alt_r`, so it makes sense, for easy access, to turn `alt_l` into 
`meta/esc` and `alt_r` into the `symbol` key. The `shift` and `control` 
keys can stay where they are. Since there is a dedicated `enter`, your 
`alt` can be tucked away in the bottom left corner where the `super` key 
was, next to `ctrl`.


## Additional ideas

-   Toggle layout between Qwerty and Workman by pressing all thumb keys 
    simultaneously?
-   So that you can reach the symbol layer on a normal keyboard and so 
    that you can also activate it with your left hand, the meta key plus 
    space also gets you to the symbol layer?


## Usage

Install [keyd](https://github.com/rvaiya/keyd) (version >=2.3) and copy 
`keyd/default.conf` to `/etc/keyd/`.
