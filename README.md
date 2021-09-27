# thumbledore

The layout of standard keyboards is hardly optimal. The most glaring problem is, in my opinion, the way your thumbs have to idle around while your weakest finger contorts to reach Backspace and Enter. Splitting the spacebar would be an easy fix, with no forced learning curve and massive potential benefit.

But alas, we have to work with what we've got. Although I have been enticed by exotic keyboards like the Kinesis Advantage, what has held me back is portability: you'd have to lug around a secondary keyboard wherever you go. Besides — let's not chuck any electronics in the landfill.

Within the constraints imposed on us by standard keyboards, `thumbledore` adds the following tweaks that, I think, make your thumbs useful:

1. `Alt_L` becomes multifunctional:

    -   While holding it, the top right cluster of keys (QWER/ASDF) become navigational keys: arrows, `Home`/`End`, and `PageUp`/`PageDown`. It is placed so that you can control it with one hand.

    -   Combining it with any other key makes it act like a `Super` modifier. This is convenient for controlling a window manager: you get a single modifier key for all non-application-specific keybindings that you might want to set. For example, I set `Super`+{`h`,`l`} for switching focus on desktops and `Super`+{`j`,`k`} for switching focus on windows.

    -   Tapping it triggers `Escape`, for modal applications like `vim`.

    - Note that the original `Alt_L` goes in place of the `Super` key. `Alt` and `Control` are often used by applications that prefer key chording for shortcuts (rather than modes): let's put them cozily together in the bottom corners.

2. `Alt_R` becomes similarly multifunctional:

    -   Holding it exposes a symbol layer, containing a numpad, also placed so that it can be controlled with one hand. All other symbols are also available in easier-to-reach locations. In particular, brackets are on the left-hand home row.

    -   Tapping it triggers `Enter`, the logical counterpart to `Esc`.

    -   When held together with `Alt_L`, it acts the same as `Super`+`Shift`. This is so that you may bind `Super`+`Shift` to actions logically related to non-shifted counterparts. For example, I set `Super`+`Shift`+{`h`,`l`} for *sending to* desktops and `Super`+`Shift`+{`j`,`k`} for *swapping* focused windows.

3. `Caps_Lock` becomes `BackSpace`, avoiding the huge move your pinky would otherwise have to make. While I know that this is also a popular spot for a modifier key, I think modifiers make more sense for your otherwise unoccupied thumbs. Besides, the location on the keyboard is intuitive here: to the left of the keys that could be 'backspaced'.

4. `Control_L` triggers the `Compose` dead key. This way, you would type special characters by typing intuitive keys in succession (e.g. `" + e` → `ë`). See the compose table at `/usr/share/X11/locale/$LANG/Compose`. `Control_R` triggers the `dead_greek` key. This is a similar dead key, but for easily typing Greek characters (e.g. `f` → `φ`).

![The Thumbledore keyboard layout.](kb.svg)

This has the following benefits:

-   Each key is accessible by moving your finger(s) *at most one key away*. No more fumbling around for special symbols and function keys.
-   *Simple*: there is only a single extra layer involved, plus a navigational cluster.
-   Achievable using any run-of-the-mill keyboard. It *degrades gracefully*: even when you do have a good keyboard, you can keep the layout somewhat consistent if you're forced to work on another. In particular, I tried to make sure that users of a Corne keyboard would only feel a need to perhaps move `Shift`/`Control`/`Alt` and `Compose`/`Tab` to the thumb cluster.
-   Only uses standard tools. The tweaks I propose here could also be achieved with the excellent [kmonad](github.com/david-janssen/kmonad), but that approach — while certainly easier to understand once it is up and running — isn't as plug-and-play.


## Usage

To install, make sure that you have `xcape` and the `xkb` utilities. On Debian-derived systems:

    sudo apt install x11-xkb-utils xcape

Then, simply run `thumbledore` at startup.


## Alphabetic layout

It's a bit radical, but perhaps a good idea to move around the alphabetic keys themselves. I'm enamoured by the <https://workmanlayout.org/> and will experiment with it later.


## Related software

- [kmonad](https://github.com/david-janssen/kmonad)
- [xkeysnail](https://github.com/mooz/xkeysnail)
- [keyd](https://github.com/rvaiya/keyd)
- [xcape](https://github.com/alols/xcape)
- [caps2esc](https://gitlab.com/interception/linux/plugins/caps2esc)
- [space2ctrl](https://github.com/r0adrunner/Space2Ctrl)
- [klfc](https://github.com/39aldo39/klfc)
- [keynav](https://www.semicomplete.com/projects/keynav/)
- [map2](https://github.com/shiro/map2)
- [at-home-modifier-evdev](https://gitlab.com/at-home-modifier/at-home-modifier-evdev)
- [evscript](https://github.com/unrelentingtech/evscript)
- [evcape](https://github.com/wbolster/evcape)
- [ergo](https://github.com/lcarsos/ergo)

Check out `/usr/share/X11/xkb` for codes and `/usr/include/X11/keysymdef.h` (from `x11proto-dev`) for symbols. Use `xev` for inspection. Use `xmodmap` to see which modifiers are bound to which keys.


## Related reading

- <https://wiki.archlinux.org/index.php/X_keyboard_extension>
- <https://www.charvolant.org/doug/xkb/>
- <https://www.x.org/releases/X11R7.7/doc/xorg-docs/input/XKB-Enhancing.html>
- <http://www.pixelbeat.org/docs/xkb_remap/>
