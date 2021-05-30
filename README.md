# thumbledore

Besides promoting bad posture, the layout of standard keyboards is hardly optimal. The most glaring **problem** is, in my opinion, the way your **thumbs** have to **idle around** while your weakest finger contorts to reach Control, Backspace and Enter. Splitting the spacebar would be an easy fix, with no forced learning curve and massive potential benefit.

But alas, we have to work with what we've got. Although I have been enticed by exotic keyboards like the Kinesis Advantage, what has held me back is portability: you'd have to lug around a secondary keyboard wherever you go. Besides — let's not chuck any electronics in the landfill.

Within the constraints imposed on us by standard keyboards, `thumbledore` adds the following tweaks that, I think, make your thumbs **useful**:

1. *Holding* `Alt_L` or `Alt_R` exposes a secondary layer on the keyboard that contains a numpad, an arrow cluster and some extra symbols. To keep things simple, it doesn't matter whether you press the right or left one, except:
2. `Alt_L + space` is `BackSpace`, while `Alt_R + space` is `Delete`. Notice how the movement of your thumbs mirrors the direction of the removal.
3. *Tapping* either `Alt` on its own triggers an `Enter`.
4. `Shift_R` triggers the `Compose` key. This way, you would type special characters by typing intuitive keys in succession (e.g. `" + e` → `ë`). See the compose table at `/usr/share/X11/locale/$LANG/Compose`. `Shift_L + Shift_R` triggers the `dead_greek` key. This is a similar dead key, but for easily typing Greek characters (e.g. `f` → `φ`).
5. *Holding* `CapsLock` turns it into a `Super` modifier. This is convenient for controlling a window manager: it's the single key for all non-application-specific keybindings.
6. *Tapping* `CapsLock` triggers `Escape`, for modal applications like `vim`.
7. `Ctrl` stays where it is, while the original `Alt_L` swaps places with the `Super` key. `Alt` and `Control` are often used by applications that prefer key chording for shortcuts (rather than modes): let's put them cozily together in the bottom left corner.


This has the following benefits:

- Achievable using any run-of-the-mill keyboard.
- Only uses standard tools. The tweaks I propose here could also be achieved with the excellent [kmonad](github.com/david-janssen/kmonad), but that approach — while certainly easier to understand once it is up and running — isn't as plug-and-play.
- Encourages using only keys that would be available on any 40% keyboard. Fumbling around for special function keys is no good.


## Usage

To install, make sure that you have `xcape` and the `xkb` utilities. On Debian-derived systems:

    sudo apt install x11-xkb-utils xcape

Then, simply run `thumbledore` at startup.


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
