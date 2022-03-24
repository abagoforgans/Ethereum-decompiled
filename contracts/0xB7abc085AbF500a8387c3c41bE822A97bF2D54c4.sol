contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    if 31 < stor0.length:
        stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
        if not Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) <= stor0.length + 1:
            idx = stor0.length + 32 / 32
            while stor0.length + 31 / 32 > idx:
                stor0[idx].field_0 = 0
                idx = idx + 1
                continue 
        if not bool(stor0.length):
            stor0.length = '1' * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
        else:
            stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = '1' * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
        if 31 < stor0.length:
            stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
            if not Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) <= stor0.length + 1:
                idx = stor0.length + 32 / 32
                while stor0.length + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            if not bool(stor0.length):
                stor0.length = 50 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
            else:
                stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 50 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
            if 31 < stor0.length:
                stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
                if not Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) <= stor0.length + 1:
                    idx = stor0.length + 32 / 32
                    while stor0.length + 31 / 32 > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                if not bool(stor0.length):
                    stor0.length = 51 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
                else:
                    stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 51 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
            else:
                if 31 >= stor0.length + 1:
                    stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 2 or stor0.length / 2^(-(8 * stor0.length + 1) + 256) * 2^(-(8 * stor0.length + 1) + 256)
                else:
                    uint8(stor0.field_0) = 0
                    Mask(248, 0, stor0.field_8) = stor0.length.field_8
                    stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
                if not bool(stor0.length):
                    stor0.length = 51 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
                else:
                    stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 51 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
        else:
            if 31 >= stor0.length + 1:
                stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 2 or stor0.length / 2^(-(8 * stor0.length + 1) + 256) * 2^(-(8 * stor0.length + 1) + 256)
            else:
                uint8(stor0.field_0) = 0
                Mask(248, 0, stor0.field_8) = stor0.length.field_8
                stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
            if not bool(stor0.length):
                stor0.length = 50 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
            else:
                stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 50 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
            if 31 < stor0.length:
                stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
                if not Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) <= stor0.length + 1:
                    idx = stor0.length + 32 / 32
                    while stor0.length + 31 / 32 > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                if not bool(stor0.length):
                    stor0.length = 51 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
                else:
                    stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 51 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
            else:
                if 31 >= stor0.length + 1:
                    stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 2 or stor0.length / 2^(-(8 * stor0.length + 1) + 256) * 2^(-(8 * stor0.length + 1) + 256)
                else:
                    uint8(stor0.field_0) = 0
                    Mask(248, 0, stor0.field_8) = stor0.length.field_8
                    stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
                if not bool(stor0.length):
                    stor0.length = 51 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
                else:
                    stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 51 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
    else:
        if 31 >= stor0.length + 1:
            stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 2 or stor0.length / 2^(-(8 * stor0.length + 1) + 256) * 2^(-(8 * stor0.length + 1) + 256)
        else:
            uint8(stor0.field_0) = 0
            Mask(248, 0, stor0.field_8) = stor0.length.field_8
            stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
        if not bool(stor0.length):
            stor0.length = '1' * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
        else:
            stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = '1' * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
        if 31 < stor0.length:
            stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
            if not Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) <= stor0.length + 1:
                idx = stor0.length + 32 / 32
                while stor0.length + 31 / 32 > idx:
                    stor0[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            if not bool(stor0.length):
                stor0.length = 50 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
            else:
                stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 50 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
            if 31 < stor0.length:
                stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
                if not Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) <= stor0.length + 1:
                    idx = stor0.length + 32 / 32
                    while stor0.length + 31 / 32 > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                if not bool(stor0.length):
                    stor0.length = 51 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
                else:
                    stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 51 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
            else:
                if 31 >= stor0.length + 1:
                    stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 2 or stor0.length / 2^(-(8 * stor0.length + 1) + 256) * 2^(-(8 * stor0.length + 1) + 256)
                else:
                    uint8(stor0.field_0) = 0
                    Mask(248, 0, stor0.field_8) = stor0.length.field_8
                    stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
                if not bool(stor0.length):
                    stor0.length = 51 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
                else:
                    stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 51 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
        else:
            if 31 >= stor0.length + 1:
                stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 2 or stor0.length / 2^(-(8 * stor0.length + 1) + 256) * 2^(-(8 * stor0.length + 1) + 256)
            else:
                uint8(stor0.field_0) = 0
                Mask(248, 0, stor0.field_8) = stor0.length.field_8
                stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
            if not bool(stor0.length):
                stor0.length = 50 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
            else:
                stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 50 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
            if 31 < stor0.length:
                stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
                if not Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) <= stor0.length + 1:
                    idx = stor0.length + 32 / 32
                    while stor0.length + 31 / 32 > idx:
                        stor0[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                if not bool(stor0.length):
                    stor0.length = 51 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
                else:
                    stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 51 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
            else:
                if 31 >= stor0.length + 1:
                    stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 2 or stor0.length / 2^(-(8 * stor0.length + 1) + 256) * 2^(-(8 * stor0.length + 1) + 256)
                else:
                    uint8(stor0.field_0) = 0
                    Mask(248, 0, stor0.field_8) = stor0.length.field_8
                    stor0.length = Mask(255, 1, stor0.length and (256 * not bool(stor0.length)) - 1) + 3
                if not bool(stor0.length):
                    stor0.length = 51 * 256^(-stor0.length + 31) or !(255 * 256^(-stor0.length + 31)) and stor0.length
                else:
                    stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0 = 51 * 256^(-stor0.length % 32 + 31) or !(255 * 256^(-stor0.length % 32 + 31)) and stor0[0.015625 / stor0.length and (256 * not bool(stor0.length)) - 1].field_0
    return code.data[1126 len 1263]
}



// =====================  Runtime code  =====================


array of uint256 str;

function str() payable {
    return str[0 len str.length].field_0
}

function _fallback() payable {
  stop
}

function sub_a2da82ab(?) payable {
    if arg1 < 100:
        if arg1 < 10:
            if 31 < str.length:
                str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                    idx = str.length + 32 / 32
                    while str.length + 31 / 32 > idx:
                        str[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                if not bool(str.length):
                    str.length = uint8(arg1 + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                else:
                    str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8(arg1 + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
            else:
                if 31 >= str.length + 1:
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                else:
                    uint8(str.field_0) = 0
                    Mask(248, 0, str.field_8) = str.length.field_8
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                if not bool(str.length):
                    str.length = uint8(arg1 + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                else:
                    str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8(arg1 + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
        else:
            if 31 < str.length:
                str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                    idx = str.length + 32 / 32
                    while str.length + 31 / 32 > idx:
                        str[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                if not bool(str.length):
                    str.length = uint8((arg1 / 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                else:
                    str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 / 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                if 31 < str.length:
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                        idx = str.length + 32 / 32
                        while str.length + 31 / 32 > idx:
                            str[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    if not bool(str.length):
                        str.length = uint8((arg1 % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                else:
                    if 31 >= str.length + 1:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                    else:
                        uint8(str.field_0) = 0
                        Mask(248, 0, str.field_8) = str.length.field_8
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not bool(str.length):
                        str.length = uint8((arg1 % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
            else:
                if 31 >= str.length + 1:
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                else:
                    uint8(str.field_0) = 0
                    Mask(248, 0, str.field_8) = str.length.field_8
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                if not bool(str.length):
                    str.length = uint8((arg1 / 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                else:
                    str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 / 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                if 31 < str.length:
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                        idx = str.length + 32 / 32
                        while str.length + 31 / 32 > idx:
                            str[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    if not bool(str.length):
                        str.length = uint8((arg1 % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                else:
                    if 31 >= str.length + 1:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                    else:
                        uint8(str.field_0) = 0
                        Mask(248, 0, str.field_8) = str.length.field_8
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not bool(str.length):
                        str.length = uint8((arg1 % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
    else:
        if 31 < str.length:
            str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
            if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                idx = str.length + 32 / 32
                while str.length + 31 / 32 > idx:
                    str[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            if not bool(str.length):
                str.length = uint8((arg1 / 100) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
            else:
                str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 / 100) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
            if uint8(arg1 % 100) < 10:
                if 31 < str.length:
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                        idx = str.length + 32 / 32
                        while str.length + 31 / 32 > idx:
                            str[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    if not bool(str.length):
                        str.length = uint8((arg1 % 100) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 % 100) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                else:
                    if 31 >= str.length + 1:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                    else:
                        uint8(str.field_0) = 0
                        Mask(248, 0, str.field_8) = str.length.field_8
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not bool(str.length):
                        str.length = uint8((arg1 % 100) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 % 100) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
            else:
                if 31 < str.length:
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                        idx = str.length + 32 / 32
                        while str.length + 31 / 32 > idx:
                            str[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    if not bool(str.length):
                        str.length = uint8((uint8(arg1 % 100) / 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) / 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                    if 31 < str.length:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                        if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                            idx = str.length + 32 / 32
                            while str.length + 31 / 32 > idx:
                                str[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        if not bool(str.length):
                            str.length = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                        else:
                            str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                    else:
                        if 31 >= str.length + 1:
                            str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                        else:
                            uint8(str.field_0) = 0
                            Mask(248, 0, str.field_8) = str.length.field_8
                            str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                        if not bool(str.length):
                            str.length = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                        else:
                            str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                else:
                    if 31 >= str.length + 1:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                    else:
                        uint8(str.field_0) = 0
                        Mask(248, 0, str.field_8) = str.length.field_8
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not bool(str.length):
                        str.length = uint8((uint8(arg1 % 100) / 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) / 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                    if 31 < str.length:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                        if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                            idx = str.length + 32 / 32
                            while str.length + 31 / 32 > idx:
                                str[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        if not bool(str.length):
                            str.length = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                        else:
                            str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                    else:
                        if 31 >= str.length + 1:
                            str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                        else:
                            uint8(str.field_0) = 0
                            Mask(248, 0, str.field_8) = str.length.field_8
                            str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                        if not bool(str.length):
                            str.length = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                        else:
                            str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
        else:
            if 31 >= str.length + 1:
                str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
            else:
                uint8(str.field_0) = 0
                Mask(248, 0, str.field_8) = str.length.field_8
                str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
            if not bool(str.length):
                str.length = uint8((arg1 / 100) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
            else:
                str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 / 100) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
            if uint8(arg1 % 100) < 10:
                if 31 < str.length:
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                        idx = str.length + 32 / 32
                        while str.length + 31 / 32 > idx:
                            str[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    if not bool(str.length):
                        str.length = uint8((arg1 % 100) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 % 100) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                else:
                    if 31 >= str.length + 1:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                    else:
                        uint8(str.field_0) = 0
                        Mask(248, 0, str.field_8) = str.length.field_8
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not bool(str.length):
                        str.length = uint8((arg1 % 100) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((arg1 % 100) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
            else:
                if 31 < str.length:
                    str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                        idx = str.length + 32 / 32
                        while str.length + 31 / 32 > idx:
                            str[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    if not bool(str.length):
                        str.length = uint8((uint8(arg1 % 100) / 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) / 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                    if 31 < str.length:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                        if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                            idx = str.length + 32 / 32
                            while str.length + 31 / 32 > idx:
                                str[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        if not bool(str.length):
                            str.length = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                        else:
                            str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                    else:
                        if 31 >= str.length + 1:
                            str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                        else:
                            uint8(str.field_0) = 0
                            Mask(248, 0, str.field_8) = str.length.field_8
                            str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                        if not bool(str.length):
                            str.length = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                        else:
                            str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                else:
                    if 31 >= str.length + 1:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                    else:
                        uint8(str.field_0) = 0
                        Mask(248, 0, str.field_8) = str.length.field_8
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                    if not bool(str.length):
                        str.length = uint8((uint8(arg1 % 100) / 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                    else:
                        str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) / 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                    if 31 < str.length:
                        str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                        if not Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) <= str.length + 1:
                            idx = str.length + 32 / 32
                            while str.length + 31 / 32 > idx:
                                str[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        if not bool(str.length):
                            str.length = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                        else:
                            str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
                    else:
                        if 31 >= str.length + 1:
                            str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 2 or str.length / 2^(-(8 * str.length + 1) + 256) * 2^(-(8 * str.length + 1) + 256)
                        else:
                            uint8(str.field_0) = 0
                            Mask(248, 0, str.field_8) = str.length.field_8
                            str.length = Mask(255, 1, str.length and (256 * not bool(str.length)) - 1) + 3
                        if not bool(str.length):
                            str.length = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length + 31) or !(255 * 256^(-str.length + 31)) and str.length
                        else:
                            str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0 = uint8((uint8(arg1 % 100) % 10) + 48) * 256^(-str.length % 32 + 31) or !(255 * 256^(-str.length % 32 + 31)) and str[0.015625 / str.length and (256 * not bool(str.length)) - 1].field_0
}



}
