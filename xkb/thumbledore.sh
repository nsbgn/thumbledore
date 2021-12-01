#!/bin/bash

if [ -z "${DISPLAY}" ]; then
    echo "\$DISPLAY not set" >&2
    exit 1
fi

XKBDIR=/tmp/xkb
mkdir -p ${XKBDIR}/{keymap,symbols,types,compat}

# Generate a basic keymap.
setxkbmap -option -print \
    | sed 's/\(\s*xkb_symbols\s*{\s*include\s*".*\)\("\s*};\s*\)/\1+thumbledore\2/g' \
    | sed 's/\(\s*xkb_compat\s*{\s*include\s*".*\)\("\s*};\s*\)/\1+thumbledore\2/g' \
    | sed 's/\(\s*xkb_types\s*{\s*include\s*".*\)\("\s*};\s*\)/\1+thumbledore\2/g' \
    > ${XKBDIR}/keymap/thumbledore.xkb

tee > ${XKBDIR}/compat/thumbledore << EOF
default xkb_compatibility "td" {
    interpret BackSpace+AnyOfOrNone(all) {
        repeat= True;
        action= Redirect(key=<BKSP>);
    };
    interpret Return+AnyOfOrNone(all) {
        repeat= True;
        action= Redirect(key=<RTRN>);
    };
};
EOF

# Generate type map
tee > ${XKBDIR}/types/thumbledore << EOF
default xkb_types "td" {
    virtual_modifiers LevelThree;

    type "NONE_SHIFT_SYM_SUPER" {
        modifiers = Shift+LevelThree+Mod4;
        map[None] = Level1;
        map[Shift] = Level2;
        map[LevelThree] = Level3;
        map[Mod4] = Level4;
        level_name[Level1] = "Base";
        level_name[Level2] = "Shift";
        level_name[Level3] = "Symbol";
        level_name[Level4] = "Super";
    };
};
EOF

tee > ${XKBDIR}/symbols/thumbledore << EOF
default partial modifier_keys
partial
xkb_symbols "td" {

    key <I253> { [ Multi_key ] };
    key <I254> { [ dead_greek ] };
    key <I255> { [ Escape ] };

    # Modifier keys themselves

    modifier_map Mod1 { Alt_L };
    modifier_map Mod4 { Super_L };

    replace key <LWIN> { [ Alt_L ] };

    key <CAPS> { [ BackSpace ]};


    key.type[Group1] = "NONE_SHIFT_SYM_SUPER";

    replace key <LALT> {
        [
        Super_L,
        Super_L,
        Super_L,
        Super_L ]
    , actions[Group1] = [
        SetMods(mods=Mod4),
        SetMods(mods=Mod4+Shift),
        SetMods(mods=Mod4+Shift),
        SetMods(mods=Mod4+Shift)
        ]
    };

    replace key <RALT> {
        [
        ISO_Level3_Shift,
        ISO_Level3_Shift,
        ISO_Level3_Shift,
        ISO_Level3_Shift ]
    , actions[Group1] = [
        SetMods(mods=LevelThree),
        SetMods(mods=LevelThree+Shift),
        SetMods(mods=LevelThree+Shift),
        SetMods(mods=Mod4+Shift)
        ]
    };



    # Row 1

    key <AD01> {
        [ q, Q, less, Home ]
    , actions[Group1] =
        [ NoAction(), NoAction(), NoAction(), Redirect(key=<HOME>, clearMods=all) ] };
    key <AD02> {
        [ w, W, braceleft, Up ]
    , actions[Group1] =
        [ NoAction(), NoAction(), NoAction(), Redirect(key=<UP>, clearMods=all) ] };
    key <AD03> {
        [ e, E, bracketleft, End ]
    , actions[Group1] =
        [ NoAction(), NoAction(), NoAction(), Redirect(key=<END>, clearMods=all) ] };
    key <AD04> {
        [ r, R, parenleft, Prior ]
    , actions[Group1] =
        [ NoAction(), NoAction(), NoAction(), Redirect(key=<PGUP>, clearMods=all) ] };
    key <AD05> {
        [ t, T, numbersign, t ] };
    key <AD06> {
        [ y, Y, asciicircum, y ] };
    key <AD07> {
        [ u, U, 7, u ]
    };
    key <AD08> {
        [ i, I, 8, i ] };
    key <AD09> {
        [ o, O, 9, o ] };
    key <AD10> {
        [ p, P, dollar, p] };


    # Row 2


    key <AC01> {
        [ a, A, greater, Left ]
    , actions[Group1] =
        [ NoAction(), NoAction(), NoAction(), Redirect(key=<LEFT>, clearMods=all)] };
    key <AC02> {
        [ s, S, braceright, Down ]
    , actions[Group1] =
        [ NoAction(), NoAction(), NoAction(), Redirect(key=<DOWN>, clearMods=all) ] };
    key <AC03> {
        [ d, D, bracketright, Right ]
    , actions[Group1] =
        [ NoAction(), NoAction(), NoAction(), Redirect(key=<RGHT>, clearMods=all) ] };
    key <AC04> {
        [ f, F, parenright, Next ]
    , actions[Group1] =
        [ NoAction(), NoAction(), NoAction(), Redirect(key=<PGDN>, clearMods=all) ] };
    key <AC05> {
        [ g, G, asterisk, g ] };
    key <AC06> {
        [ h, H, asciitilde, h ] };
    key <AC07> {
        [ j, J, 4, j ] };
    key <AC08> {
        [ k, K, 5, k ] };
    key <AC09> {
        [ l, L, 6, l ] };
    key <AC10> {
        [ semicolon, colon, equal, semicolon ] };
    key <AC11> {
        [ apostrophe, quotedbl, grave, apostrophe ] };

    # Row 3

    key <AB01> { [ z, Z, bar, z ] };
    key <AB02> { [ x, X, ampersand, x ] };
    key <AB03> { [ c, C, plus, c ] };
    key <AB04> { [ v, V, minus, v ] };
    key <AB05> { [ b, B, underscore, at ]
    , actions[Group1] =
        [ NoAction(), NoAction(), NoAction()
        , Redirect(key=<AE02>, modifiers=Shift, clearMods=Mod4) ] };
    key <AB06> { [ n, N, 0, n ] };
    key <AB07> { [ m, M, 1, m ] };
    key <AB08> { [ comma, question, 2, comma ] };
    key <AB09> { [ period, exclam, 3, period ] };
    key <AB10> { [ slash, backslash, percent, slash] };

};
EOF

# Compile the new xkbmap
xkbcomp -synch -w3 -I${XKBDIR} ${XKBDIR}/keymap/thumbledore.xkb ${DISPLAY}

# (Re)start xcape, to make sure we can still use the original keys by tapping
# the respective modifiers.
pkill xcape
TAP=$(tr -d '[:space:]' << EOF
    Super_L=Escape;
    ISO_Level3_Shift=Return;
    Control_L=Multi_key;
    Alt_L=dead_greek;
    Shift_L=Tab
EOF
)
xcape -e "${TAP}"


# -t 150ms 
