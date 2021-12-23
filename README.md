# thumbledore

Typing on a standard keyboard is not a great experience. Your thumbs idle while your weakest finger contorts to reach keys like `escape` and `backspace`. Exotic keyboards can remedy this, but lack portability: you'd have to lug around an extra device wherever you go.

`thumbledore` is a set of tweaks that fit within the constraints of the typical keyboard. **Each finger travels one key at most. Your thumbs pick up the slack.** It aims to be *easy to remember*. And it *degrades gracefully*: you can keep the layout somewhat consistent when you're stuck on another keyboard.


### It works like this.

Your eight fingers maneuver the letter keys, while your thumbs control three *layers* over them. Don't worry, the letter keys themselves are almost the same as QWERTY (or whatever layout you're used to). The only difference is that `capslock` becomes `backspace`, avoiding the huge move your pinky would otherwise make.

      q w e r t  y u i o p
    ⌫ a s d f g  h j k l ; '
      z x c v b  n m , . /

            ⎋ ␣  ␣ ⏎

Moreover, thumb keys have an additional function when you *tap* rather than 
hold them. Tapping `alt_l` triggers `escape`, useful for modal applications 
like vim. Its logical counterpart `enter` is under `alt_r`.


#### ⮸ Shift (↹)

      Q W E R T  Y U I O P
    ⌫ A S D F G  H J K L : "
      Z X C V B  N M < > ?

            ⎋ ␣  ␣ ⏎

You're already familiar with one of the layers, too: the one exposed by *shift*. Except now, you can also access it by having your thumb hold down `tab`. This is so that, if you have a split spacebar, you can assign `tab` to one of the halves, and control all layers with your thumbs.


#### ⌘ Meta (⎋)

      ↞ ↑ ↠ ↟ ⬚  ⬚ ⬚ ⬚ ⬚ ⬚
    ⌦ ← ↓ → ↡ ⬚  ⬚ ⬚ ⬚ ⬚ ⬚ ⬚
      ✲ ⎇ ✧ ⬚ ⬚  ⬚ ⬚ ⬚ ⬚ ⬚

            ▒▒▒  ⬚ ⬚

Holding `alt_l` exposes the *meta layer*, which has a *navigational cluster* in the top right, placed so that you can control it with one hand. It contains directional keys, `home`/`end`, and `pageup`/`pagedown`. Additionally, `backspace` becomes `delete`.

The `ctrl` and `alt` keys are tucked away in the bottom left corner, together with the `compose` key. You would type special characters by typing intuitive keys in succession (e.g. `⌘c; '; e` → `é`).

The remaining keys act as if they were pressed with a `super` modifier. This is convenient as the one key for all non-application-specific shortcuts that you might want to set. For example, I set `super`+{`h`,`l`} for focusing workspaces and `super`+{`j`,`k`} for focusing windows.


#### ◇ Symbols (⏎)

You can access the remaining symbols by holding down `alt_r`. Note that some of the thumb keys also get assigned a new character.

      ^ [ ( { #  % } ) ] $
    ⌫ 1 2 3 4 5  6 7 8 9 0 `
      | & + - ~  * = @ . !

            \ _  ▒▒▒


## Usage

Install [keyd](https://github.com/rvaiya/keyd) and copy `keyd/default.cfg` to `/etc/keyd/`.

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


1: I know that this is also a popular spot for the `ctrl` or `esc` keys, but for thematic consistency, those get handled by your thumbs.
