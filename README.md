# 🧙 Thumbledore

*I only uploaded this so that it may serve as inspiration. It is still 
being tweaked. It currently only supports Linux.*

Touch typing on a standard keyboard is not a great experience. Your 
thumbs idle while your weakest finger contorts to reach keys like 
<kbd>Esc</kbd> and <kbd>BkSp</kbd>. Numbers and other common symbols 
require you to abandon a comfortable hand position entirely. Exotic 
keyboards can remedy all this, but lack portability.

Thumbledore and Handalf are keyboard layouts that works well for fancy 
keyboards with 2 or more thumb keys per hand, but that *also* fit 
broadly within the constraints of a laptop keyboard.

-   **Each finger travels one key at most.** Your thumbs pick up the slack.
-   **Easy to remember.** All symbols are accessible with just the 
    normal <kbd>Shift</kbd> and <kbd>AltGr</kbd> modifiers. There is 
    only *one* additional layer for navigation and function keys — and 
    that's it.
-   **One-handed control.** The number pad can be operated with just the 
    right hand. Navigation keys and shortcuts like 
    <kbd>Ctrl</kbd><kbd>c</kbd> can be reached with just the left.
-   **Graceful degradation.** You can keep a somewhat consistent layout 
    even when you're stuck on a mainstream keyboard. Only 
    <kbd>Multi</kbd> and <kbd>Shift</kbd> are in a truly different spot.
-   **Incremental learning.** You don't need to learn everything all at 
    once. I've found the <kbd>AltGr</kbd> symbols to be the most 
    ergonomically significant, so that is a great place to start.
-   **Regressions are avoided.** When stuffing so much functionality in 
    a limited space, it is inevitable that some key sequences will 
    become hard to generate. However, care has been taken to make few 
    assumptions about the programs you will be running. That is, all 
    modifiers should still stack in an intuitive and consistent way, and 
    no reasonable shortcut should be impossible or cumbersome to type.
-   **No homerow mods.** While typing at speed, keypresses will often 
    overlap, which means that any attempted overload of alpha keys must 
    resort to timeouts. This introduces [visual delay][pftwp] and can 
    cause misfiring. There are [ways][urob] to mitigate it and train 
    yourself to work with it, but I have not made that sacrifice here.
-   **Overloading is used sparingly.** Even on non-alpha keys, 
    overloading has the above downsides, albeit to a lesser degree. 
    Therefore, only *one* key has been overloaded: <kbd>Esc</kbd> 
    accesses a layer when held. <!-- This is considered safe because the 
    key is not associated with a modifier, and the `esc` is only 
    registered when the tap is shorter than *x* milliseconds. -->


## Symbols

![The thumbledore-qwerty keyboard layout.](kb-qwerty.svg)

Are you currently using a Qwerty layout or similar? Then there isn't 
much of a barrier to entry: in the Thumbledore variant, all characters 
stay in the same place. The major addition is that the Level-3 symbols 
(accessed through <kbd>AltGr</kbd>) have been crammed full with numbers 
and the other ASCII symbols for which you would normally have had 
contort your hands.

<!-- Symbols were placed according to how often I personally need them, 
drawing inspiration from the [Workman] layout on which keys to assign 
preference.

Because AltGr is pressed with your right-hand thumb, the left-hand side 
of the keyboard is preferred for things like parentheses, while the 
number pad can now be controlled entirely with your right-hand. -->

- <kbd>BkSp</kbd> takes the place of <kbd>Caps</kbd>, avoiding the huge 
  move your pinky would have made.

- <kbd>Shift</kbd> and <kbd>AltGr</kbd> are modifiers, but unlike 
  <kbd>Ctrl</kbd> and <kbd>Alt</kbd>, they don't access shortcuts — they 
  simply provide more symbols. To make for a more comfortable typing 
  experience, these keys are made *sticky* (or *oneshot*). Instead of 
  holding and consciously releasing them *just* before pressing the next 
  unmodified key, you can just tap once and forget about it. MUch 
  better!

- You will often need a decimal point while typing numbers, but it is 
  cumbersome to exit the numpad just to grab one and return. For this 
  reason, if you are typing a number and release and then immediately 
  press <kbd>AltGr</kbd> again, a `.` or `,` will be emitted (depending 
  on your locale).

- The <kbd>Multi</kbd> key (also called *Compose*) allows you to type 
  special characters by typing intuitive keys in succession. For 
  example, <kbd>Multi</kbd><kbd>c</kbd><kbd>=</kbd> becomes `€`.


## Escape

![The action portion of the Thumbledore keyboard layout.](kb-action.svg)

<kbd>Esc</kbd> is given an easily accessible spots for your left thumb, 
since it is useful for modal applications like Vim. However, when you 
*hold it*, it reveals a layer with the remaining 'action' keys: a 
navigation cluster, F-keys, and modifiers.

- The navigation cluster is placed so that you can control the 
  directional keys with one hand.

- F-keys are not used so often in modern applications, so I map these in 
  my window manager for actions such as navigating desktops and closing 
  windows.

- The keys labeled <kbd>Alt</kbd>, <kbd>Ctrl</kbd> and <kbd>Super</kbd> 
  activate the corresponding modifier for any subsequent keypress that 
  occurs shortly after, or until you release the key.
    - Tapping two modifiers on the same side will activate both of them.
    - Pulling up the application menu or escaping a virtual machine 
      often involves tapping a modifier on its own --- this is achieved 
      by simply double-tapping.
    - In general, the **Escape** layer is deactivated while a modifier 
      is active, so that, for example, 
      <kbd>Esc</kbd><kbd>z</kbd><kbd>f</kbd> will generate 
      <kbd>Ctrl</kbd><kbd>f</kbd>. If you instead really do want to 
      combine a modifier with a key from the **Escape** layer, tap and 
      hold that modifier: 
      <kbd>Esc</kbd><kbd>z</kbd><kbd>z</kbd><kbd>f</kbd> yields 
      <kbd>Ctrl</kbd><kbd>▶</kbd>.


# Technical considerations

When you press a key, your keyboard will send a *scancode* to the 
computer; the kernel maps that to a *keycode*; and finally, your 
keyboard layout considers that keycode (along with the active modifiers) 
and emits a *keysym*.

Thumbledore remaps *symbols* at this keysym level, while other keys are 
mapped at the scan- or keycode-level. Teasing the two apart like this 
has several benefits:

- At the scan- and keycode-level, more tricks can be applied, like 
  overloading.
- But at the keysym-level, you can switch between symbol layouts in the 
  standard way --- and they will apply to all keyboards, regardless of 
  firmware.
- The decimal point `.` or `,` is locale-dependent, so it makes sense to 
  choose it at the layout level.
- Users can try the <kbd>AltGr</kbd> symbols, without committing to the 
  rest.
- It becomes easier to reason to reason about key composition. We don't 
  have to explicitly write and remember rules for how the various layers 
  and modifiers combine. Suppose, for example, you want to zoom in with 
  <kbd>Ctrl</kbd><kbd>+</kbd> --- you can rely on your muscle memory to 
  type that first key as <kbd>Esc</kbd><kbd>z</kbd> and the second as 
  <kbd>AltGr</kbd>e</kbd>.


## Usage and installation

Install [keyd](https://github.com/rvaiya/keyd) (version >=2.3) and run 
`sudo make install`. Activate the `thumbledore` layout in your 
environment.

<!--
## Other

[Seniply] and [Callum] have similar goals: limited keys and no home-row 
mods.

# Consideration for the thumb keys

-   All thumb keys except space are modifiers or layer keys, because you 
    have full range of motion with the rest of your fingers while 
    holding them.
-   Since we avoid crazy modifier combinations, `sym` and `shift` never 
    make sense to press together. Therefore, they should be on the same 
    finger.
-   `space` should be opposite from  `shift` and `sym`, so that you can 
    still use it while in their respective modes.

-->

<!-- Reading -->
[Preconditions-Guide]: https://precondition.github.io/home-row-mods
[Urob]: https://github.com/urob/zmk-config#timeless-homerow-mods
<!-- About visual latency -->
[pftwp]: https://pavelfatin.com/typing-with-pleasure/#human-side

<!-- Layouts -->
[Colemak-DH]: https://colemakmods.github.io/mod-dh/
[Workman]: https://workmanlayout.org/

<!-- More layouts -->
[Seniply]: https://stevep99.github.io/seniply/
[Callum]: https://github.com/callum-oakley/qmk_firmware/tree/master/users/callum
[Miryoku]: https://github.com/manna-harbour/miryoku
