# thumbledore

Besides promoting bad posture, the layout of standard keyboards is hardly optimal. The most glaring problem is, in my opinion, the way your thumbs have to idle around while your weakest finger contorts to reach Control, Backspace and Enter. Splitting the spacebar would be an easy fix, with no forced learning curve and massive potential benefit.

But alas, we have to work with what we've got. Although I have been enticed by exotic keyboards like the Kinesis Advantage, what has held me back is portability: you'd have to lug around a secondary keyboard wherever you go. Besides — let's not chuck any electronics in the landfill.

Within the constraints imposed on us by standard keyboards, `thumbledore` adds the following tweaks that, I think, make your thumbs useful:

1. `Alt_L` becomes `BackSpace` and `Alt_R` becomes `Enter`.

    - The original `Alt_L` goes in place of the `Super` key. `Alt` and `Control` are often used by applications that prefer key chording for shortcuts (rather than modes): let's put them cozily together in the bottom corners.

    - *Holding* the `Alt_R` (now `Enter`) makes it the `Super` key. This is convenient for controlling a window manager: it's the single key for all non-application-specific keybindings.

2. Instead of just one extra layer with `Shift`, we get two more layers: holding the `Caps_Lock` button above it exposes the third and holding `Tab` exposes the fourth layer. The third layer contains a navigational cluster for your left hand and a numpad for your right hand; the fourth layer contains special symbols for your right hand, with brackets being particularly accessible.

3. *Tapping* modifier keys gives them a secondary function.

    - You can still trigger *Tab* by simply tapping it.
    - Tapping `Caps_Lock` triggers `Escape`, for modal applications like `vim`.
    - Tapping `Shift_L` triggers `XF86Open`, for menu actions.
    - `Control_L` triggers the `Compose` dead key. This way, you would type special characters by typing intuitive keys in succession (e.g. `" + e` → `ë`). See the compose table at `/usr/share/X11/locale/$LANG/Compose`.
    - `Control_L` triggers the `dead_greek` key. This is a similar dead key, but for easily typing Greek characters (e.g. `f` → `φ`).

![The Thumbledore keyboard layout.](kb.svg)

This has the following benefits:

- Achievable using any run-of-the-mill keyboard. Even when you do have a good keyboard, you can keep the layout somewhat consistent if you're forced to work on another.
- Only uses standard tools. The tweaks I propose here could also be achieved with the excellent [kmonad](github.com/david-janssen/kmonad), but that approach — while certainly easier to understand once it is up and running — isn't as plug-and-play.
- Each key is accessible by moving your finger(s) at most one key away. No more fumbling around for special symbols and function keys.



## Usage

To install, make sure that you have `xcape` and the `xkb` utilities. On Debian-derived systems:

    sudo apt install x11-xkb-utils xcape

Then, simply run `thumbledore` at startup.


## Alphabetic layout

It's a bit radical, but perhaps a good idea to move around the alphabetic keys themselves. I'm enamoured by the <https://workmanlayout.org/> and will experiment with it later.


## Related software

- [kmonad](https://github.com/david-janssen/kmonad)
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
