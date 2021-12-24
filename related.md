If you prefer, you may instead use X-specific utilities (`sudo apt install x11-xkb-utils xcape` on Debian-based systems) and run `xkb/thumbledore.sh` at startup.


## Related software

-   [hawck](https://github.com/snyball/Hawck)
-   [kmonad](https://github.com/david-janssen/kmonad)
-   [xkeysnail](https://github.com/mooz/xkeysnail)
-   [keyd](https://github.com/rvaiya/keyd)
-   [xcape](https://github.com/alols/xcape)
-   [caps2esc](https://gitlab.com/interception/linux/plugins/caps2esc)
-   [space2ctrl](https://github.com/r0adrunner/Space2Ctrl)
-   [klfc](https://github.com/39aldo39/klfc)
-   [autokey](https://github.com/autokey/autokey)
-   [keynav](https://www.semicomplete.com/projects/keynav/)
-   [map2](https://github.com/shiro/map2)
-   [at-home-modifier-evdev](https://gitlab.com/at-home-modifier/at-home-modifier-evdev)
-   [evscript](https://github.com/unrelentingtech/evscript)
-   [evremap](https://github.com/wez/evremap)
-   [evcape](https://github.com/wbolster/evcape)
-   [ergo](https://github.com/lcarsos/ergo)
-   [key-mapper](https://github.com/sezanzeb/key-mapper)
-   [xremap](https://github.com/k0kubun/xremap)
-   [wayremap](https://github.com/acro5piano/wayremap)
-   [lxhkd](https://github.com/lmburns/lxhkd)
-   [triggerhappy](https://github.com/wertarbyte/triggerhappy)
-   [interception](https://gitlab.com/interception/linux/tools)
-   [the state of key remapping in linux](https://medium.com/@canadaduane/key-remapping-in-linux-2021-edition-47320999d2aa)

Check out `/usr/share/X11/xkb` for codes and `/usr/include/X11/keysymdef.h` (from `x11proto-dev`) for symbols. Use `xev` for inspection. Use `xmodmap` to see which modifiers are bound to which keys.


## Related reading

-   <https://wiki.archlinux.org/index.php/X_keyboard_extension>
-   <https://www.charvolant.org/doug/xkb/>
-   <https://www.x.org/releases/X11R7.7/doc/xorg-docs/input/XKB-Enhancing.html>
-   <http://www.pixelbeat.org/docs/xkb_remap/>
-   It's a bit radical, but perhaps a good idea to move around the alphabetic keys themselves. I'm enamoured by the <https://workmanlayout.org/> and will experiment with it later.

