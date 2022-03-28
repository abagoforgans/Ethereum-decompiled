contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address stor0;
array of uint256 getName;
array of struct stor2;
array of struct stor3;
array of struct stor4;
array of struct stor5;
array of struct stor6;

function GetName() {
    return getName[0 len getName.length]
}

function Kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function SetName(string arg1) {
    require msg.sender == stor0
    getName[] = Array(len=arg1.length, data=arg1[all])
    emit NameChange(Array(len=arg1.length, data=arg1[all]));
}

function sub_80b45ffc(?) {
    if not arg1:
        return stor2.length
    if arg1 == 1:
        return stor3.length
    if arg1 == 2:
        return stor4.length
    if arg1 == 3:
        return stor5.length
    if arg1 != 4:
        return 0
    return stor6.length
}

function sub_247e6f43(?) {
    if not arg1:
        require Mask(255, 1, (256 * not bool(stor2.length)) - 1 and stor2.length)
        if arg1:
            if arg1 != 1:
                if arg1 != 2:
                    if arg1 != 3:
                        if arg1 != 4:
                            return -'0'
                    else:
                        require arg2 + stor2.length % stor2.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor2.length % stor2.length < stor4.length
                    if not bool(stor4.length):
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                require arg2 + stor2.length % stor2.length < stor3.length
                if not bool(stor3.length):
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor2.length % stor2.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor2.length % stor2.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        else:
            require arg2 + stor2.length % stor2.length < stor2.length
            if not bool(stor2.length):
                if arg1 != 1:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor2.length % stor2.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor2.length % stor2.length < stor3.length
                    if not bool(stor3.length):
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor2.length % stor2.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor2.length % stor2.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor2.length % stor2.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor2.length % stor2.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                if arg1 != 1:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor2', 2)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor2', 2)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor2.length % stor2.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor2.length % stor2.length < stor3.length
                    if not bool(stor3.length):
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor2.length % stor2.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor2.length % stor2.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor2.length % stor2.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor2.length % stor2.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor2.length % stor2.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor2.length % stor2.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        ('eq', ('param', 'arg1'), 4)
        require arg2 + stor2.length % stor2.length < stor6.length
        if not bool(stor6.length):
            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) + 256, arg2 + stor2.length % stor2.length) << (('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) - 256) - '0')
        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor6', 6)))), 0) + 256, arg2 + stor2.length % stor2.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor2', 2)))), ('stor', ('length', ('name', 'stor2', 2))))), ('name', 'stor6', 6)))), 0) - 256) - '0')
    if arg1 == 1:
        require Mask(255, 1, (256 * not bool(stor3.length)) - 1 and stor3.length)
        if arg1:
            if arg1 != 1:
                if arg1 != 2:
                    if arg1 != 3:
                        if arg1 != 4:
                            return -'0'
                    else:
                        require arg2 + stor3.length % stor3.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor3.length % stor3.length < stor4.length
                    if not bool(stor4.length):
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                require arg2 + stor3.length % stor3.length < stor3.length
                if not bool(stor3.length):
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor3.length % stor3.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor3.length % stor3.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        else:
            require arg2 + stor3.length % stor3.length < stor2.length
            if not bool(stor2.length):
                if arg1 != 1:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor3.length % stor3.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor3.length % stor3.length < stor3.length
                    if not bool(stor3.length):
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor3.length % stor3.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor3.length % stor3.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor3.length % stor3.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor3.length % stor3.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                if arg1 != 1:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor2', 2)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor2', 2)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor3.length % stor3.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor3.length % stor3.length < stor3.length
                    if not bool(stor3.length):
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor3.length % stor3.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor3.length % stor3.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor3.length % stor3.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor3.length % stor3.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor3.length % stor3.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor3.length % stor3.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        ('eq', ('param', 'arg1'), 4)
        require arg2 + stor3.length % stor3.length < stor6.length
        if not bool(stor6.length):
            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) + 256, arg2 + stor3.length % stor3.length) << (('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) - 256) - '0')
        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor6', 6)))), 0) + 256, arg2 + stor3.length % stor3.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor3', 3)))), ('stor', ('length', ('name', 'stor3', 3))))), ('name', 'stor6', 6)))), 0) - 256) - '0')
    if arg1 == 2:
        require Mask(255, 1, (256 * not bool(stor4.length)) - 1 and stor4.length)
        if arg1:
            if arg1 != 1:
                if arg1 != 2:
                    if arg1 != 3:
                        if arg1 != 4:
                            return -'0'
                    else:
                        require arg2 + stor4.length % stor4.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor4.length % stor4.length < stor4.length
                    if not bool(stor4.length):
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                require arg2 + stor4.length % stor4.length < stor3.length
                if not bool(stor3.length):
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor4.length % stor4.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor4.length % stor4.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        else:
            require arg2 + stor4.length % stor4.length < stor2.length
            if not bool(stor2.length):
                if arg1 != 1:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor4.length % stor4.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor4.length % stor4.length < stor3.length
                    if not bool(stor3.length):
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor4.length % stor4.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor4.length % stor4.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor4.length % stor4.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor4.length % stor4.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                if arg1 != 1:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor2', 2)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor2', 2)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor4.length % stor4.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor4.length % stor4.length < stor3.length
                    if not bool(stor3.length):
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor4.length % stor4.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor4.length % stor4.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor4.length % stor4.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor4.length % stor4.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor4.length % stor4.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor4.length % stor4.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        ('eq', ('param', 'arg1'), 4)
        require arg2 + stor4.length % stor4.length < stor6.length
        if not bool(stor6.length):
            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) + 256, arg2 + stor4.length % stor4.length) << (('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) - 256) - '0')
        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor6', 6)))), 0) + 256, arg2 + stor4.length % stor4.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor4', 4)))), ('stor', ('length', ('name', 'stor4', 4))))), ('name', 'stor6', 6)))), 0) - 256) - '0')
    if arg1 == 3:
        require Mask(255, 1, (256 * not bool(stor5.length)) - 1 and stor5.length)
        if arg1:
            if arg1 != 1:
                if arg1 != 2:
                    if arg1 != 3:
                        if arg1 != 4:
                            return -'0'
                    else:
                        require arg2 + stor5.length % stor5.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor5.length % stor5.length < stor4.length
                    if not bool(stor4.length):
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                require arg2 + stor5.length % stor5.length < stor3.length
                if not bool(stor3.length):
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor5.length % stor5.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor5.length % stor5.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        else:
            require arg2 + stor5.length % stor5.length < stor2.length
            if not bool(stor2.length):
                if arg1 != 1:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor5.length % stor5.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor5.length % stor5.length < stor3.length
                    if not bool(stor3.length):
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor5.length % stor5.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor5.length % stor5.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor5.length % stor5.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor5.length % stor5.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                if arg1 != 1:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor2', 2)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor2', 2)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor5.length % stor5.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor5.length % stor5.length < stor3.length
                    if not bool(stor3.length):
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor5.length % stor5.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor5.length % stor5.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 2:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor5.length % stor5.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor5.length % stor5.length < stor4.length
                            if not bool(stor4.length):
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor5.length % stor5.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 3:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                                else:
                                    require arg2 + stor5.length % stor5.length < stor5.length
                                    if not bool(stor5.length):
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                    else:
                                        if arg1 != 4:
                                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        ('eq', ('param', 'arg1'), 4)
        require arg2 + stor5.length % stor5.length < stor6.length
        if not bool(stor6.length):
            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) + 256, arg2 + stor5.length % stor5.length) << (('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) - 256) - '0')
        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor6', 6)))), 0) + 256, arg2 + stor5.length % stor5.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor5', 5)))), ('stor', ('length', ('name', 'stor5', 5))))), ('name', 'stor6', 6)))), 0) - 256) - '0')
    require arg1 == 4
    require Mask(255, 1, (256 * not bool(stor6.length)) - 1 and stor6.length)
    if arg1:
        if arg1 != 1:
            if arg1 != 2:
                if arg1 != 3:
                    if arg1 != 4:
                        return -'0'
                else:
                    require arg2 + stor6.length % stor6.length < stor5.length
                    if not bool(stor5.length):
                        if arg1 != 4:
                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 4:
                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                require arg2 + stor6.length % stor6.length < stor4.length
                if not bool(stor4.length):
                    if arg1 != 3:
                        if arg1 != 4:
                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    if arg1 != 3:
                        if arg1 != 4:
                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        else:
            require arg2 + stor6.length % stor6.length < stor3.length
            if not bool(stor3.length):
                if arg1 != 2:
                    if arg1 != 3:
                        if arg1 != 4:
                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor6.length % stor6.length < stor4.length
                    if not bool(stor4.length):
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                if arg1 != 2:
                    if arg1 != 3:
                        if arg1 != 4:
                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor6.length % stor6.length < stor4.length
                    if not bool(stor4.length):
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
    else:
        require arg2 + stor6.length % stor6.length < stor2.length
        if not bool(stor2.length):
            if arg1 != 1:
                if arg1 != 2:
                    if arg1 != 3:
                        if arg1 != 4:
                            return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor2', 2)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor6.length % stor6.length < stor4.length
                    if not bool(stor4.length):
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                require arg2 + stor6.length % stor6.length < stor3.length
                if not bool(stor3.length):
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor6.length % stor6.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor6.length % stor6.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor6.length % stor6.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor6.length % stor6.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
        else:
            if arg1 != 1:
                if arg1 != 2:
                    if arg1 != 3:
                        if arg1 != 4:
                            return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor2', 2)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor2', 2)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor5.length
                        if not bool(stor5.length):
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    require arg2 + stor6.length % stor6.length < stor4.length
                    if not bool(stor4.length):
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
            else:
                require arg2 + stor6.length % stor6.length < stor3.length
                if not bool(stor3.length):
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor6.length % stor6.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor6.length % stor6.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                else:
                    if arg1 != 2:
                        if arg1 != 3:
                            if arg1 != 4:
                                return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor3', 3)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor3', 3)))), 0) - 256) - '0')
                        else:
                            require arg2 + stor6.length % stor6.length < stor5.length
                            if not bool(stor5.length):
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                            else:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                    else:
                        require arg2 + stor6.length % stor6.length < stor4.length
                        if not bool(stor4.length):
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor6.length % stor6.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
                        else:
                            if arg1 != 3:
                                if arg1 != 4:
                                    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor4', 4)))), 0) - 256) - '0')
                            else:
                                require arg2 + stor6.length % stor6.length < stor5.length
                                if not bool(stor5.length):
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor5', 5)))), 0) - 256) - '0')
                                else:
                                    if arg1 != 4:
                                        return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor5', 5)))), 0) - 256) - '0')
    ('eq', ('param', 'arg1'), 4)
    require arg2 + stor6.length % stor6.length < stor6.length
    if not bool(stor6.length):
        return ((Mask(8, -(('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) + 256, arg2 + stor6.length % stor6.length) << (('field', 3, ('stor', ('length', ('name', 'stor6', 6)))), 0) - 256) - '0')
    return ((Mask(8, -(('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor6', 6)))), 0) + 256, arg2 + stor6.length % stor6.length % 32) << (('field', 3, ('stor', ('array', ('div', 0.03125, ('mod', ('add', ('param', 'arg2'), ('stor', ('length', ('name', 'stor6', 6)))), ('stor', ('length', ('name', 'stor6', 6))))), ('name', 'stor6', 6)))), 0) - 256) - '0')
}



}
