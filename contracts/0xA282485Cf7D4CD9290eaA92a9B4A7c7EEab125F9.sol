contract main {




// =====================  Runtime code  =====================


#
#  - sub_58a62357(?)
#  - sub_76c6ea07(?)
#  - sub_7e502790(?)
#  - sub_8dbf77d0(?)
#  - sub_d15108b5(?)
#
const sub_5573c1e4(?) = 0


uint16 stor0; offset 160
uint16 stor0; offset 176
uint16 stor0; offset 192
uint16 stor0; offset 208
address sub_5e710902Address;
uint256 stor1;

function sub_5e710902(?) {
    return sub_5e710902Address
}

function _fallback() payable {
    revert
}

function getRandom(uint256 arg1, uint256 arg2, uint256 arg3) {
    stor1++
    require arg3
    return uint16(sha3(block.timestamp, arg1, arg2, stor1 + 1) % arg3)
}

function totalSupply() {
    require ext_code.size(sub_5e710902Address)
    call sub_5e710902Address.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getFlower(uint256 arg1) {
    require ext_code.size(sub_5e710902Address)
    call sub_5e710902Address.0xa9203f3c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return ext_call.return_data[224]
}

function sub_e1b3bb69(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    idx = 0
    s = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        idx = idx + 1
        s = mem[(32 * uint8(idx)) + 128] + (100 * s)
        continue 
    return (_11 * None)
}

function sub_8c071fa5(?) {
    mem[96] = 36
    mem[128 len 1152] = code.data[13590 len 1152]
    s = 0
    idx = 36
    s = arg1
    while uint8(idx) > 0:
        require uint8(idx - 1) < mem[96]
        mem[(32 * uint8(idx - 1)) + 128] = uint8(s % 100)
        s = s % 100
        idx = idx - 1
        s = s - uint8(s % 100) / 100
        continue 
    mem[1280] = 32
    mem[1312] = mem[96]
    mem[1344 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    return 32, mem[1312 len (32 * mem[96]) + 32]
}

function sub_50f476b6(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg3 <= 4:
        require uint8(arg3 - 1) < arg1.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * uint8(arg3 - 1)) + 128]
    else:
        require uint8(arg3 - 5) < arg2.length
        mem[(32 * arg2.length) + (32 * arg1.length) + 160] = mem[(32 * uint8(arg3 - 5)) + (32 * arg1.length) + 160]
    return memory
      from (32 * arg2.length) + (32 * arg1.length) + 160
       len 32
}

function checkUnique(uint256 arg1) {
    require ext_code.size(sub_5e710902Address)
    call sub_5e710902Address.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        s = 0
        idx = 1
        while idx <= ext_call.return_data[0]:
            require ext_code.size(sub_5e710902Address)
            call sub_5e710902Address.0xa9203f3c with:
                 gas gas_remaining wei
                args idx
            mem[96 len 256] = ext_call.return_data[0 len 256]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 256
            if ext_call.return_data[224] != arg1:
                s = ext_call.return_data[224]
                idx = idx + 1
                continue 
            else:
                return 0
    return 1
}

function mixGenes(uint256 arg1, uint256 arg2) {
    mem[1280] = 36
    s = 0
    idx = 36
    s = arg1
    while uint8(idx) > 0:
        require uint8(idx - 1) < mem[1280]
        mem[(32 * uint8(idx - 1)) + 1312] = uint8(s % 100)
        s = s % 100
        idx = idx - 1
        s = s - uint8(s % 100) / 100
        continue 
    mem[3648] = 36
    s = 0
    idx = 36
    s = arg2
    while uint8(idx) > 0:
        require uint8(idx - 1) < mem[3648]
        mem[(32 * uint8(idx - 1)) + 3680] = uint8(s % 100)
        s = s % 100
        idx = idx - 1
        s = s - uint8(s % 100) / 100
        continue 
    idx = 0
    while idx < uint16(stor0.field_160):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        mem[(32 * idx) + 6208] = 1
        idx = idx + 1
        continue 
    idx = uint16(stor0.field_160)
    while idx < uint16(stor0.field_160) + uint16(stor0.field_176):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        mem[(32 * idx) + 6208] = 2
        idx = idx + 1
        continue 
    idx = uint16(stor0.field_160) + uint16(stor0.field_176)
    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        mem[(32 * idx) + 6208] = 3
        idx = idx + 1
        continue 
    idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        mem[(32 * idx) + 6208] = 4
        idx = idx + 1
        continue 
    idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        mem[(32 * idx) + 6208] = 5
        idx = idx + 1
        continue 
    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        mem[(32 * idx) + 6208] = 6
        idx = idx + 1
        continue 
    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        mem[(32 * idx) + 6208] = 7
        idx = idx + 1
        continue 
    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        mem[(32 * idx) + 6208] = 8
        idx = idx + 1
        continue 
    idx = 0
    while idx < uint16(stor0.field_176):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        mem[(32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))) + (32 * idx) + 6240] = 2
        idx = idx + 1
        continue 
    idx = uint16(stor0.field_176)
    while idx < uint16(stor0.field_176) + uint16(stor0.field_192):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        mem[(32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))) + (32 * idx) + 6240] = 3
        idx = idx + 1
        continue 
    idx = uint16(stor0.field_176) + uint16(stor0.field_192)
    while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        mem[(32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))) + (32 * idx) + 6240] = 4
        idx = idx + 1
        continue 
    idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
    while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        mem[(32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))) + (32 * idx) + 6240] = 5
        idx = idx + 1
        continue 
    idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
    while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        mem[(32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))) + (32 * idx) + 6240] = 6
        idx = idx + 1
        continue 
    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        mem[(32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))) + (32 * idx) + 6240] = 7
        idx = idx + 1
        continue 
    idx = (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160)
    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        mem[(32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))) + (32 * idx) + 6240] = 8
        idx = idx + 1
        continue 
    idx = 0
    while idx < uint16(stor0.field_160):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        mem[(32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))) + (32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))) + (32 * idx) + 6272] = 1
        idx = idx + 1
        continue 
    idx = uint16(stor0.field_160)
    while idx < uint16(stor0.field_160) + uint16(stor0.field_176):
        require idx < uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        mem[(32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))) + (32 * uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))) + (32 * idx) + 6272] = 2
        idx = idx + 1
        continue 
    # nil
}

function sub_bbb3c8f5(?) {
    if not arg1:
        if not arg2:
            if not arg3:
                if not arg4:
                    if not arg5:
                        if not arg6:
                            if not arg7:
                                if not arg8:
                                    return 0
                                return uint16(stor0.field_208)
                            if not arg8:
                                return uint16(stor0.field_192)
                            return uint16(uint16(stor0.field_208) + uint16(stor0.field_192))
                        if not arg7:
                            if not arg8:
                                return uint16(stor0.field_176)
                            return uint16(uint16(stor0.field_208) + uint16(stor0.field_176))
                        if not arg8:
                            return uint16(uint16(stor0.field_192) + uint16(stor0.field_176))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176))
                    if not arg6:
                        if not arg7:
                            if not arg8:
                                return uint16(stor0.field_160)
                            return uint16(uint16(stor0.field_208) + uint16(stor0.field_160))
                        if not arg8:
                            return uint16(uint16(stor0.field_192) + uint16(stor0.field_160))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_160))
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_176) + uint16(stor0.field_160))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_160))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
                if not arg5:
                    if not arg6:
                        if not arg7:
                            if not arg8:
                                return uint16(stor0.field_208)
                            return (2 * uint16(stor0.field_208) % 32768)
                        if not arg8:
                            return uint16(uint16(stor0.field_192) + uint16(stor0.field_208))
                        return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192))
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_176) + uint16(stor0.field_208))
                        return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_208))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_176))
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_160) + uint16(stor0.field_208))
                        return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_160))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_208))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_160))
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_208))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_160))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_208))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
            if not arg4:
                if not arg5:
                    if not arg6:
                        if not arg7:
                            if not arg8:
                                return uint16(stor0.field_192)
                            return uint16(uint16(stor0.field_208) + uint16(stor0.field_192))
                        if not arg8:
                            return (2 * uint16(stor0.field_192) % 32768)
                        return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)))
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_176) + uint16(stor0.field_192))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192))
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176))
                    return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176))
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_160) + uint16(stor0.field_192))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192))
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_160))
                    return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160))
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_192))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_192))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160))
            if not arg5:
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_208) + uint16(stor0.field_192))
                        return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192))
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_208))
                    return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)))
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_192))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_208))
                return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176))
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_192))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_192))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_208))
                return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160))
            if not arg7:
                if not arg8:
                    return uint16(uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_192))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_192))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_208))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160))
        if not arg3:
            if not arg4:
                if not arg5:
                    if not arg6:
                        if not arg7:
                            if not arg8:
                                return uint16(stor0.field_176)
                            return uint16(uint16(stor0.field_208) + uint16(stor0.field_176))
                        if not arg8:
                            return uint16(uint16(stor0.field_192) + uint16(stor0.field_176))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176))
                    if not arg7:
                        if not arg8:
                            return (2 * uint16(stor0.field_176) % 32768)
                        return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_176)))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_176)))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + (2 * uint16(stor0.field_176)))
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_160) + uint16(stor0.field_176))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176))
                if not arg7:
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
                    return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
                return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
            if not arg5:
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_208) + uint16(stor0.field_176))
                        return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_176))
                if not arg7:
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_208))
                    return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_176)))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_176)))
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_176))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176))
            if not arg7:
                if not arg8:
                    return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_208))
                return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
            if not arg8:
                return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_208))
            return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        if not arg4:
            if not arg5:
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_192) + uint16(stor0.field_176))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176))
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176))
                    return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176))
                if not arg7:
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_192))
                    return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)))
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_176))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_176))
            if not arg7:
                if not arg8:
                    return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_192))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_192))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
            return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        if not arg5:
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_176))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176))
                return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176))
            if not arg7:
                if not arg8:
                    return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192))
                return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)))
        if not arg6:
            if not arg7:
                if not arg8:
                    return uint16(uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_176))
        if not arg7:
            if not arg8:
                return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_192))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_192))
        if not arg8:
            return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_208))
        return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
    if not arg2:
        if not arg3:
            if not arg4:
                if not arg5:
                    if not arg6:
                        if not arg7:
                            if not arg8:
                                return uint16(stor0.field_160)
                            return uint16(uint16(stor0.field_208) + uint16(stor0.field_160))
                        if not arg8:
                            return uint16(uint16(stor0.field_192) + uint16(stor0.field_160))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_160))
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_176) + uint16(stor0.field_160))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_160))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return (2 * uint16(stor0.field_160) % 32768)
                        return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_160)))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_160)))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + (2 * uint16(stor0.field_160)))
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_176) + (2 * uint16(stor0.field_160)))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)))
                return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)))
            if not arg5:
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_208) + uint16(stor0.field_160))
                        return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_160))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_160))
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_160))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_160)) + uint16(stor0.field_208))
                    return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_160)))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_160)))
            if not arg7:
                if not arg8:
                    return uint16(uint16(stor0.field_176) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)))
            if not arg8:
                return uint16(uint16(stor0.field_192) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208))
            return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)))
        if not arg4:
            if not arg5:
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_192) + uint16(stor0.field_160))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_160))
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_160))
                    return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160))
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160))
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_160)) + uint16(stor0.field_192))
                    return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_160)))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_160)))
            if not arg7:
                if not arg8:
                    return uint16(uint16(stor0.field_176) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192))
                return uint16(uint16(stor0.field_208) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)))
            return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)))
        if not arg5:
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_160))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_160))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160))
                return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160))
            if not arg7:
                if not arg8:
                    return uint16(uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_160))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160))
        if not arg6:
            if not arg7:
                if not arg8:
                    return uint16((2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_192))
                return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_160)))
        if not arg7:
            if not arg8:
                return uint16(uint16(stor0.field_176) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_192))
            return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192))
        if not arg8:
            return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208))
        return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_160)))
    if not arg3:
        if not arg4:
            if not arg5:
                if not arg6:
                    if not arg7:
                        if not arg8:
                            return uint16(uint16(stor0.field_176) + uint16(stor0.field_160))
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_160))
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
                if not arg7:
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
                    return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
                return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16((2 * uint16(stor0.field_160)) + uint16(stor0.field_176))
                    return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_176))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_176))
                return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_176))
            if not arg7:
                if not arg8:
                    return uint16((2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
            if not arg8:
                return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
            return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        if not arg5:
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_160))
                    return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_160))
                if not arg8:
                    return uint16(uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_160))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
            if not arg7:
                if not arg8:
                    return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160))
                return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
            if not arg8:
                return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160))
            return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        if not arg6:
            if not arg7:
                if not arg8:
                    return uint16((2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176))
                return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_176))
            if not arg8:
                return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176))
            return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_176))
        if not arg7:
            if not arg8:
                return uint16((2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        if not arg8:
            return uint16(uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208))
        return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
    if not arg4:
        if not arg5:
            if not arg6:
                if not arg7:
                    if not arg8:
                        return uint16(uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
                if not arg8:
                    return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160))
            if not arg7:
                if not arg8:
                    return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
            return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
        if not arg6:
            if not arg7:
                if not arg8:
                    return uint16((2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176))
                return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_176))
            return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_176))
        if not arg7:
            if not arg8:
                return uint16((2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192))
            return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192))
        if not arg8:
            return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
        return uint16(uint16(stor0.field_208) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
    if not arg5:
        if not arg6:
            if not arg7:
                if not arg8:
                    return uint16(uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
                return uint16((2 * uint16(stor0.field_208)) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_160))
            if not arg8:
                return uint16((2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_160))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_160))
        if not arg7:
            if not arg8:
                return uint16((2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_160))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160))
        if not arg8:
            return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160))
        return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_160))
    if not arg6:
        if not arg7:
            if not arg8:
                return uint16((2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_192) + uint16(stor0.field_176))
            return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176))
        if not arg8:
            return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176))
        return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_176))
    if not arg7:
        if not arg8:
            return uint16((2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_192))
        return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_192))
    if not arg8:
        return uint16((2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)) + uint16(stor0.field_208))
    return uint16((2 * uint16(stor0.field_208)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_160)))
}

function sub_7549ec05(?) {
    if not arg9:
        if not arg1:
            if not arg2:
                if not arg3:
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = 0
                                        while idx < uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                        mem[(32 * arg9) + 192 len floor32(arg9)] = mem[128 len floor32(arg9)]
                                        return Array(len=arg9, data=mem[128 len floor32(arg9)], mem[(32 * arg9) + floor32(arg9) + 192 len (32 * arg9) - floor32(arg9)]), 
                                    mem[(32 * arg9) + 128] = 32
                                    mem[(32 * arg9) + 160] = arg9
                                    mem[(32 * arg9) + 192 len floor32(arg9)] = mem[128 len floor32(arg9)]
                                    return memory
                                      from (32 * arg9) + 128
                                       len (96 * arg9) + 64
                                idx = 0
                                while idx < uint16(stor0.field_192):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 7
                                    idx = idx + 1
                                    continue 
                                if arg8:
                                    idx = uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_192) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 8
                                        idx = idx + 1
                                        continue 
                            else:
                                idx = 0
                                while idx < uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = 0
                            while idx < uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = 0
                        while idx < uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_208)
                                        while idx < 2 * uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_208)
                                while idx < uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_208)
                            while idx < uint16(stor0.field_208) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_208) + uint16(stor0.field_160)
                                while idx < uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                else:
                    idx = 0
                    while idx < uint16(stor0.field_192):
                        require idx < arg9
                        mem[(32 * idx) + 128] = 3
                        idx = idx + 1
                        continue 
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192)
                                    while idx < 2 * uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = 2 * uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_192)
                                while idx < uint16(stor0.field_192) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_192)
                            while idx < uint16(stor0.field_192) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_192) + uint16(stor0.field_160)
                                while idx < uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_192)
                        while idx < uint16(stor0.field_192) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_192) + uint16(stor0.field_208)
                            while idx < uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                while idx < uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
            else:
                idx = 0
                while idx < uint16(stor0.field_176):
                    require idx < arg9
                    mem[(32 * idx) + 128] = 2
                    idx = idx + 1
                    continue 
                if not arg3:
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176)
                                while idx < 2 * uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = 2 * uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = 2 * uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_176)
                            while idx < uint16(stor0.field_176) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_160):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_176)
                        while idx < uint16(stor0.field_176) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_176) + uint16(stor0.field_208)
                            while idx < uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                else:
                    idx = uint16(stor0.field_176)
                    while idx < uint16(stor0.field_176) + uint16(stor0.field_192):
                        require idx < arg9
                        mem[(32 * idx) + 128] = 3
                        idx = idx + 1
                        continue 
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + (2 * uint16(stor0.field_192))
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192))
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                            while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                            while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
        else:
            idx = 0
            while idx < uint16(stor0.field_160):
                require idx < arg9
                mem[(32 * idx) + 128] = 1
                idx = idx + 1
                continue 
            if not arg2:
                if not arg3:
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160)
                            while idx < 2 * uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = 2 * uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = 2 * uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = 2 * uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_160)
                        while idx < uint16(stor0.field_160) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_208)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                else:
                    idx = uint16(stor0.field_160)
                    while idx < uint16(stor0.field_160) + uint16(stor0.field_192):
                        require idx < arg9
                        mem[(32 * idx) + 128] = 3
                        idx = idx + 1
                        continue 
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_192))
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192))
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192)
                                while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
            else:
                idx = uint16(stor0.field_160)
                while idx < uint16(stor0.field_160) + uint16(stor0.field_176):
                    require idx < arg9
                    mem[(32 * idx) + 128] = 2
                    idx = idx + 1
                    continue 
                if not arg3:
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176))
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176))
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176))
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176))
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                else:
                    idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                        require idx < arg9
                        mem[(32 * idx) + 128] = 3
                        idx = idx + 1
                        continue 
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192))
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192))
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192))
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192))
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
    else:
        mem[128 len 32 * arg9] = code.data[13590 len 32 * arg9]
        if not arg1:
            if not arg2:
                if not arg3:
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = 0
                                        while idx < uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                        mem[(32 * arg9) + 192 len floor32(arg9)] = mem[128 len floor32(arg9)]
                                        return Array(len=arg9, data=mem[128 len floor32(arg9)], mem[(32 * arg9) + floor32(arg9) + 192 len (32 * arg9) - floor32(arg9)]), 
                                    mem[(32 * arg9) + 128] = 32
                                    mem[(32 * arg9) + 160] = arg9
                                    mem[(32 * arg9) + 192 len floor32(arg9)] = code.data[13590 len floor32(arg9)]
                                    return memory
                                      from (32 * arg9) + 128
                                       len (96 * arg9) + 64
                                idx = 0
                                while idx < uint16(stor0.field_192):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 7
                                    idx = idx + 1
                                    continue 
                                if arg8:
                                    idx = uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_192) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 8
                                        idx = idx + 1
                                        continue 
                            else:
                                idx = 0
                                while idx < uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = 0
                            while idx < uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = 0
                        while idx < uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_208)
                                        while idx < 2 * uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_208)
                                while idx < uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_208)
                            while idx < uint16(stor0.field_208) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_208) + uint16(stor0.field_160)
                                while idx < uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                else:
                    idx = 0
                    while idx < uint16(stor0.field_192):
                        require idx < arg9
                        mem[(32 * idx) + 128] = 3
                        idx = idx + 1
                        continue 
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192)
                                    while idx < 2 * uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = 2 * uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_192)
                                while idx < uint16(stor0.field_192) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_192)
                            while idx < uint16(stor0.field_192) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_192) + uint16(stor0.field_160)
                                while idx < uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_192)
                        while idx < uint16(stor0.field_192) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_192) + uint16(stor0.field_208)
                            while idx < uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                while idx < uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
            else:
                idx = 0
                while idx < uint16(stor0.field_176):
                    require idx < arg9
                    mem[(32 * idx) + 128] = 2
                    idx = idx + 1
                    continue 
                if not arg3:
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176)
                                while idx < 2 * uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = 2 * uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = 2 * uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_176)
                            while idx < uint16(stor0.field_176) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_160):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_176)
                        while idx < uint16(stor0.field_176) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_176) + uint16(stor0.field_208)
                            while idx < uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                else:
                    idx = uint16(stor0.field_176)
                    while idx < uint16(stor0.field_176) + uint16(stor0.field_192):
                        require idx < arg9
                        mem[(32 * idx) + 128] = 3
                        idx = idx + 1
                        continue 
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + (2 * uint16(stor0.field_192))
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192))
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                            while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_176) + uint16(stor0.field_192)
                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                            while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_160):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
        else:
            idx = 0
            while idx < uint16(stor0.field_160):
                require idx < arg9
                mem[(32 * idx) + 128] = 1
                idx = idx + 1
                continue 
            if not arg2:
                if not arg3:
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160)
                            while idx < 2 * uint16(stor0.field_160):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = 2 * uint16(stor0.field_160)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = 2 * uint16(stor0.field_160)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = 2 * uint16(stor0.field_160)
                                while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_160)
                        while idx < uint16(stor0.field_160) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_208)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_208) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                else:
                    idx = uint16(stor0.field_160)
                    while idx < uint16(stor0.field_160) + uint16(stor0.field_192):
                        require idx < arg9
                        mem[(32 * idx) + 128] = 3
                        idx = idx + 1
                        continue 
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_192))
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192))
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192)
                                while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_160) + uint16(stor0.field_192)
                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_192) + uint16(stor0.field_208)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_192) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_176):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
            else:
                idx = uint16(stor0.field_160)
                while idx < uint16(stor0.field_160) + uint16(stor0.field_176):
                    require idx < arg9
                    mem[(32 * idx) + 128] = 2
                    idx = idx + 1
                    continue 
                if not arg3:
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                                while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176))
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176))
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176)
                                while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176))
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176))
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_208)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_208) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_208)) + uint16(stor0.field_192):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                else:
                    idx = uint16(stor0.field_160) + uint16(stor0.field_176)
                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192):
                        require idx < arg9
                        mem[(32 * idx) + 128] = 3
                        idx = idx + 1
                        continue 
                    if not arg4:
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192))
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192))
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192))
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192)
                                while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192))
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                    else:
                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192)
                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                            require idx < arg9
                            mem[(32 * idx) + 128] = 4
                            idx = idx + 1
                            continue 
                        if not arg5:
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < uint16(stor0.field_160) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                        else:
                            idx = uint16(stor0.field_160) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                            while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                require idx < arg9
                                mem[(32 * idx) + 128] = 5
                                idx = idx + 1
                                continue 
                            if not arg6:
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                            else:
                                idx = (2 * uint16(stor0.field_160)) + uint16(stor0.field_176) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208):
                                    require idx < arg9
                                    mem[(32 * idx) + 128] = 6
                                    idx = idx + 1
                                    continue 
                                if not arg7:
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
                                else:
                                    idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + uint16(stor0.field_192) + uint16(stor0.field_208)
                                    while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208):
                                        require idx < arg9
                                        mem[(32 * idx) + 128] = 7
                                        idx = idx + 1
                                        continue 
                                    if arg8:
                                        idx = (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + uint16(stor0.field_208)
                                        while idx < (2 * uint16(stor0.field_160)) + (2 * uint16(stor0.field_176)) + (2 * uint16(stor0.field_192)) + (2 * uint16(stor0.field_208)):
                                            require idx < arg9
                                            mem[(32 * idx) + 128] = 8
                                            idx = idx + 1
                                            continue 
    mem[(32 * arg9) + 192 len floor32(arg9)] = mem[128 len floor32(arg9)]
    return Array(len=arg9, data=mem[128 len floor32(arg9)], mem[(32 * arg9) + floor32(arg9) + 192 len (32 * arg9) - floor32(arg9)]), 
}



}
