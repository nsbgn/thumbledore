# thumbledore

*I only uploaded this so that it may serve as inspiration. It is still being 
tweaked.*

Typing on a standard keyboard is not a great experience. Your thumbs idle while your weakest finger contorts to reach keys like `escape` and `backspace`. Exotic keyboards can remedy this, but lack portability: you'd have to lug around an extra device wherever you go.

`thumbledore` is a set of tweaks that fit within the constraints of the typical keyboard.

-   **Each finger travels one key at most.** Your thumbs pick up the slack.
-   **Enables graceful degradation.** You can keep a somewhat consistent layout even when you're stuck on another keyboard.
-   **Easy to remember.** Barely one and a half additional layer, and all extra keys stay available as always.

It works like this:

Your eight fingers maneuver the letter keys, while your thumbs control three *layers* over them. Don't worry, the letter keys themselves don't change from what you're used to. The only difference is that `capslock` becomes `backspace`, avoiding the huge move your pinky would usually make.

         q   w   e   r   t       y   u   i   o   p
    bsp  a   s   d   f   g       h   j   k   l   ;   '
         z   x   c   v   b       n   m   ,   .   /

                    esc     spc     ret


Meanwhile, your thumbs hover over `alt_l`, `space` and `alt_r`. The outermost of these have an additional function when you *tap* rather than hold them: pressing `alt_l` triggers `escape`, useful for modal applications like vim. Its logical counterpart `return` is under `alt_r`.

Tapping `control` generates the `compose` key, allowing you to type special characters by typing intuitive keys in succession (e.g. `compose ' e` ➟ `é`).


### ⇧ Shift

         Q   W   E   R   T       Y   U   I   O   P
    bsp  A   S   D   F   G       H   J   K   L   :   "
         Z   X   C   V   B       N   M   <   >   ?

                    esc     spc     ret

You're already familiar with one of the layers, too: the one exposed by *shift*. If you have a split spacebar, you might want to assign `tab` to one of the halves: it functions as `shift` when held.


### ⌘ Meta

        hom  ↑  end pgu  ⬚        ⬚   ⬚   ⬚   ⬚   ⬚
    del  ←   ↓   →  pgd  ⬚        ⬚   ⬚   ⬚   ⬚   ⬚   ⬚
         ⬚   ⬚   ⬚   ⬚   ⬚        ⬚   ⬚   ⬚   ⬚   ⬚

                     ▨       spc     ret

Holding `alt_l` exposes the *meta layer*, which has a *navigational cluster* in the top right, placed so that you can control it with one hand. It contains directional keys, `home`/`end`, and `pageup`/`pagedown`. `backspace` becomes `delete`. 

The remaining keys act as if they were pressed with a `super` modifier. This is convenient as the one key for all non-application-specific shortcuts that you might want to set. For example, I set `super`+{`h`,`l`} for focusing workspaces and `super`+{`j`,`k`} for focusing windows.

The original `alt` key is now where the `super` key was, tucked away in the bottom left corner with `ctrl`.


### ◇ Symbol

You can access the remaining symbols by holding down `alt_r`. Where possible, a sense of symmetry is maintained.

         <   [   (   {   #       %   }   )   ]   >
    bsp  ^   _   \   =   "       '   ⬚   /   *   $   `
         !   @   `   -   |       &   +   ~   ⬚   ?

                    esc     spc      ▨


## Usage

Install [keyd](https://github.com/rvaiya/keyd) (version >=0.2) and copy `keyd/default.conf` to `/etc/keyd/`.
