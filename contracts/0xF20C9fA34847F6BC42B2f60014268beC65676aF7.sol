contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 522]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function getUint8FromByte32(bytes32 arg1, uint8 arg2) payable {
    if arg2 != 0:
        return uint8((arg1 % 16^(-(2 * arg2 % 128) + 64)) - (arg1 % 16^(-(2 * arg2 % 128) + 64) % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
    return uint8(arg1 - (arg1 % 16^(-(2 * arg2 % 128) + 62)) / 16^(-(2 * arg2 % 128) + 62))
}

function blockHexCoordsValid(int8 arg1, int8 arg2) payable {
    if -33 > ('signextend', 0, ('param', 'arg2')):
        if ('signextend', 0, ('param', 'arg1')) >= 0:
            if ('signextend', 0, ('param', 'arg2')) < 0:
                if ('signextend', 0, ('param', 'arg1')) <= 0:
                    if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                        if uint8((-3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                            return 0
                    else:
                        if uint8((-3 * arg2) + (2 * arg1)) > 198:
                            return 0
                else:
                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                        if uint8((-3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                            return 0
                    else:
                        if uint8((-3 * arg2) + (2 * arg1)) > 198:
                            return 0
            else:
                if ('signextend', 0, ('param', 'arg1')) >= 0:
                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                        if uint8((3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                            return 0
                    else:
                        if uint8((3 * arg2) + (2 * arg1)) > 198:
                            return 0
                else:
                    if ('signextend', 0, ('param', 'arg2')) >= 0:
                        if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                            if uint8((3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                                return 0
                        else:
                            if uint8((3 * arg2) + (2 * arg1)) > 198:
                                return 0
                    else:
                        if ('signextend', 0, ('param', 'arg1')) <= 0:
                            if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                                if uint8((3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                                    return 0
                            else:
                                if uint8((3 * arg2) + (2 * arg1)) > 198:
                                    return 0
                        else:
                            if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                                if uint8((3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                                    return 0
                            else:
                                if uint8((3 * arg2) + (2 * arg1)) > 198:
                                    return 0
        else:
            if ('signextend', 0, ('param', 'arg2')) < 0:
                if ('signextend', 0, ('param', 'arg1')) <= 0:
                    if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                        if uint8((-3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                            return 0
                    else:
                        if uint8((-3 * arg2) + (2 * -arg1)) > 198:
                            return 0
                else:
                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                        if uint8((-3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                            return 0
                    else:
                        if uint8((-3 * arg2) + (2 * -arg1)) > 198:
                            return 0
            else:
                if ('signextend', 0, ('param', 'arg1')) >= 0:
                    if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                        if uint8((3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                            return 0
                    else:
                        if uint8((3 * arg2) + (2 * -arg1)) > 198:
                            return 0
                else:
                    if ('signextend', 0, ('param', 'arg2')) >= 0:
                        if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                            if uint8((3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                                return 0
                        else:
                            if uint8((3 * arg2) + (2 * -arg1)) > 198:
                                return 0
                    else:
                        if ('signextend', 0, ('param', 'arg1')) <= 0:
                            if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                                if uint8((3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                                    return 0
                            else:
                                if uint8((3 * arg2) + (2 * -arg1)) > 198:
                                    return 0
                        else:
                            if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                                if uint8((3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                                    return 0
                            else:
                                if uint8((3 * arg2) + (2 * -arg1)) > 198:
                                    return 0
    else:
        if ('signextend', 0, ('param', 'arg2')) <= 33:
            if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                if -49 > ('signextend', 0, ('param', 'arg1')):
                    return 0
            else:
                if -50 > ('signextend', 0, ('param', 'arg1')):
                    return 0
            if ('signextend', 0, ('param', 'arg1')) > 49:
                return 0
        else:
            if ('signextend', 0, ('param', 'arg1')) >= 0:
                if ('signextend', 0, ('param', 'arg2')) < 0:
                    if ('signextend', 0, ('param', 'arg1')) <= 0:
                        if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                            if uint8((-3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                                return 0
                        else:
                            if uint8((-3 * arg2) + (2 * arg1)) > 198:
                                return 0
                    else:
                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                            if uint8((-3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                                return 0
                        else:
                            if uint8((-3 * arg2) + (2 * arg1)) > 198:
                                return 0
                else:
                    if ('signextend', 0, ('param', 'arg1')) >= 0:
                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                            if uint8((3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                                return 0
                        else:
                            if uint8((3 * arg2) + (2 * arg1)) > 198:
                                return 0
                    else:
                        if ('signextend', 0, ('param', 'arg2')) >= 0:
                            if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                                if uint8((3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                                    return 0
                            else:
                                if uint8((3 * arg2) + (2 * arg1)) > 198:
                                    return 0
                        else:
                            if ('signextend', 0, ('param', 'arg1')) <= 0:
                                if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                                    if uint8((3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                                        return 0
                                else:
                                    if uint8((3 * arg2) + (2 * arg1)) > 198:
                                        return 0
                            else:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                                    if uint8((3 * arg2) + (2 * arg1 + 1) - 3) > 198:
                                        return 0
                                else:
                                    if uint8((3 * arg2) + (2 * arg1)) > 198:
                                        return 0
            else:
                if ('signextend', 0, ('param', 'arg2')) < 0:
                    if ('signextend', 0, ('param', 'arg1')) <= 0:
                        if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                            if uint8((-3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                                return 0
                        else:
                            if uint8((-3 * arg2) + (2 * -arg1)) > 198:
                                return 0
                    else:
                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                            if uint8((-3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                                return 0
                        else:
                            if uint8((-3 * arg2) + (2 * -arg1)) > 198:
                                return 0
                else:
                    if ('signextend', 0, ('param', 'arg1')) >= 0:
                        if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                            if uint8((3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                                return 0
                        else:
                            if uint8((3 * arg2) + (2 * -arg1)) > 198:
                                return 0
                    else:
                        if ('signextend', 0, ('param', 'arg2')) >= 0:
                            if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                                if uint8((3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                                    return 0
                            else:
                                if uint8((3 * arg2) + (2 * -arg1)) > 198:
                                    return 0
                        else:
                            if ('signextend', 0, ('param', 'arg1')) <= 0:
                                if ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)) != 0:
                                    if uint8((3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                                        return 0
                                else:
                                    if uint8((3 * arg2) + (2 * -arg1)) > 198:
                                        return 0
                            else:
                                if 0 == ('signextend', 0, ('smod', ('signextend', 0, ('param', 'arg2')), 2)):
                                    if uint8((3 * arg2) + (2 * -arg1 + 1) - 3) > 198:
                                        return 0
                                else:
                                    if uint8((3 * arg2) + (2 * -arg1)) > 198:
                                        return 0
    return 1
}



}
