contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2865]




// =====================  Runtime code  =====================


#
#  - responder(uint256 arg1, uint256 arg2, uint256 arg3, bytes5 arg4, bytes14 arg5, bytes5 arg6, uint256 arg7, uint256 arg8, uint256 arg9, uint256 arg10, uint256 arg11, uint256 arg12)
#
function _fallback() payable {
  stop
}

function o_aprendiz(uint256 arg1) {
    if 42 == arg1:
        return 1
    else:
        return 0
}

function o_velho_problema(uint256 arg1, uint256 arg2) {
    if 239811736052687 == arg1 * arg2:
        return 2
    else:
        return 0
}

function o_algoritmo(uint256 arg1) {
    idx = 0
    while idx < 21:
        idx = idx + 1
        continue 
    if not arg1:
        return 1
    return 0
}

function a_incognita(uint256 arg1) {
    if 2395346478 == (arg1 * arg1 * arg1) + (3 * arg1 * arg1) + (3 * arg1) + 7:
        return 1
    else:
        return 0
}

function o_novo_problema(uint256 arg1) {
    if 0x5dd085b1f9816a47e96bf6f50b6717456ce772886c3e6686e020a456dc1a3623 == 3^arg1:
        return 2
    else:
        return 0
}

function a_palavra(bytes5 arg1) {
    if 0x2e4588766bcfa3508dfb56a344fd7b1c3eca4954b2b8b795ab02209396528367 == sha3(Mask(40, 216, arg1) >> 216):
        return 2
    else:
        return 0
}

function a_empresa(bytes5 arg1) {
    if 0x7cdf2c59fd49fab5ebabf1630c3a1f4d5c22c0aaa3651ca37dd688a69b33f3aa == sha3(Mask(40, 216, arg1) >> 216):
        return 1
    else:
        return 0
}

function o_desafiante(bytes14 arg1) {
    if 0x71c6223d42fee2811e6f2ccfbb7bc5d1c57d47a97f9cbb8b2aedd67c312dc367 == sha3(Mask(112, 144, arg1) >> 144):
        return 1
    else:
        return 0
}

function o_deus(bytes32 arg1, bytes32 arg2) {
    if arg2 != arg1:
        if sha3(arg1) == sha3(arg2):
            return 999999999
        else:
            return 0
    else:
        return 0
}

function o_minerador(uint256 arg1) {
    idx = 0
    while idx < 32:
        if 0 == Mask(8, -(('mask_shl', 256, 0, -3, ('sha3', ('param', 'arg1'))), 0) + 256, idx) << (('mask_shl', 256, 0, -3, ('sha3', ('param', 'arg1'))), 0) - 8:
            idx = idx + 1
            continue 
        return idx
    return 32
}

function o_automata(uint256 arg1) {
    mem[928 len 448] = 0
    mem[1376] = 0
    mem[1408] = 1
    mem[1440] = 0
    mem[1472] = 1
    mem[1504] = 1
    mem[1536] = 0
    mem[1568] = 1
    mem[1600] = 0
    mem[1632] = 0
    mem[1664] = 1
    mem[1696] = 1
    mem[1728] = 0
    mem[1760] = 0
    mem[1792] = 1
    mem[1824] = 1
    mem[1856] = 0
    mem[1888] = 0
    mem[1920] = 1
    mem[1952] = 1
    mem[1984] = 0
    mem[2016] = 0
    mem[2048] = 1
    mem[2080] = 1
    mem[2112] = 0
    mem[2144] = 0
    mem[2176] = 0
    mem[2208] = 0
    mem[2240] = 0
    mem[2272] = 0
    mem[2304] = 0
    mem[2336] = 0
    mem[2368] = 0
    mem[2400] = 0
    mem[2432] = 0
    mem[2464] = 0
    mem[2496] = 0
    mem[2528] = 0
    mem[2560] = 0
    mem[2592] = 0
    mem[2624] = 0
    idx = 0
    while idx < 16:
        require 2^idx
        require idx < 16
        mem[(32 * idx) + 1632] = bool(arg1 / 2^idx)
        idx = idx + 1
        continue 
    s = 0
    s = 0
    idx = 0
    while idx < 8:
        s = 0
        while s < 16:
            if 15 == s:
                require s < 16
                if not s:
                    require 2 * mem[(32 * s) + 1632] < 8
                    require s < 16
                    mem[(32 * s) + 2144] = mem[(64 * mem[(32 * s) + 1632]) + 1376]
                else:
                    require s - 1 < 16
                    require mem[(32 * s - 1) + 1632] + (2 * mem[(32 * s) + 1632]) < 8
                    require s < 16
                    mem[(32 * s) + 2144] = mem[(32 * mem[(32 * s - 1) + 1632] + (2 * mem[(32 * s) + 1632])) + 1376]
            else:
                require s + 1 < 16
                require s < 16
                if not s:
                    require (2 * mem[(32 * s) + 1632]) + (4 * mem[(32 * s + 1) + 1632]) < 8
                    require s < 16
                    mem[(32 * s) + 2144] = mem[(32 * (2 * mem[(32 * s) + 1632]) + (4 * mem[(32 * s + 1) + 1632])) + 1376]
                else:
                    require s - 1 < 16
                    require mem[(32 * s - 1) + 1632] + (2 * mem[(32 * s) + 1632]) + (4 * mem[(32 * s + 1) + 1632]) < 8
                    require s < 16
                    mem[(32 * s) + 2144] = mem[(32 * mem[(32 * s - 1) + 1632] + (2 * mem[(32 * s) + 1632]) + (4 * mem[(32 * s + 1) + 1632])) + 1376]
            s = s + 1
            continue 
        t = 0
        while t < 16:
            mem[(32 * t) + 1632] = mem[(32 * t) + 2144]
            t = t + 1
            continue 
        s = 16
        s = s
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < 16:
        idx = idx + 1
        s = s + mem[(32 * idx) + 1632]
        continue 
    return 0
}

function o_labirinto(uint256 arg1) {
    s = 0
    s = 0
    idx = 0
    s = 11
    t = 0xfff8800882288008c048fdf8e038e838e138fdf8f9f8fbf8fff8000000000000
    while idx < 64:
        require 2^(-(4 * idx + 1) + 256)
        if arg1 / 2^(-(4 * idx + 1) + 256) % 16:
            if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 1:
                if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 2:
                    if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 3:
                        require 2^(-(16 * s) + 249)
                        if bool(t / 2^(-(16 * s) + 249)) != 1:
                            s = 2^(-(16 * s) + 249)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s
                            t = 2^(-(16 * s) + 249) + t
                            continue 
                    else:
                        require 2^(-(16 * s) + 250)
                        if bool(t / 2^(-(16 * s) + 250)) != 1:
                            s = 2^(-(16 * s) + 250)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s
                            t = 2^(-(16 * s) + 250) + t
                            continue 
                else:
                    if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 3:
                        require 2^(-(16 * s + 1) + 249)
                        if bool(t / 2^(-(16 * s + 1) + 249)) != 1:
                            s = 2^(-(16 * s + 1) + 249)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s + 1
                            t = 2^(-(16 * s + 1) + 249) + t
                            continue 
                    else:
                        require 2^(-(16 * s + 1) + 250)
                        if bool(t / 2^(-(16 * s + 1) + 250)) != 1:
                            s = 2^(-(16 * s + 1) + 250)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s + 1
                            t = 2^(-(16 * s + 1) + 250) + t
                            continue 
            else:
                if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 2:
                    if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 3:
                        require 2^(-(16 * s) + 248)
                        if bool(t / 2^(-(16 * s) + 248)) != 1:
                            s = 2^(-(16 * s) + 248)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s
                            t = 2^(-(16 * s) + 248) + t
                            continue 
                    else:
                        require 2^(-(16 * s) + 249)
                        if bool(t / 2^(-(16 * s) + 249)) != 1:
                            s = 2^(-(16 * s) + 249)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s
                            t = 2^(-(16 * s) + 249) + t
                            continue 
                else:
                    if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 3:
                        require 2^(-(16 * s + 1) + 248)
                        if bool(t / 2^(-(16 * s + 1) + 248)) != 1:
                            s = 2^(-(16 * s + 1) + 248)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s + 1
                            t = 2^(-(16 * s + 1) + 248) + t
                            continue 
                    else:
                        require 2^(-(16 * s + 1) + 249)
                        if bool(t / 2^(-(16 * s + 1) + 249)) != 1:
                            s = 2^(-(16 * s + 1) + 249)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s + 1
                            t = 2^(-(16 * s + 1) + 249) + t
                            continue 
        else:
            if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 1:
                if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 2:
                    if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 3:
                        require 2^(-(16 * s - 1) + 249)
                        if bool(t / 2^(-(16 * s - 1) + 249)) != 1:
                            s = 2^(-(16 * s - 1) + 249)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s - 1
                            t = 2^(-(16 * s - 1) + 249) + t
                            continue 
                    else:
                        require 2^(-(16 * s - 1) + 250)
                        if bool(t / 2^(-(16 * s - 1) + 250)) != 1:
                            s = 2^(-(16 * s - 1) + 250)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s - 1
                            t = 2^(-(16 * s - 1) + 250) + t
                            continue 
                else:
                    if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 3:
                        require 2^(-(16 * s) + 249)
                        if bool(t / 2^(-(16 * s) + 249)) != 1:
                            s = 2^(-(16 * s) + 249)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s
                            t = 2^(-(16 * s) + 249) + t
                            continue 
                    else:
                        require 2^(-(16 * s) + 250)
                        if bool(t / 2^(-(16 * s) + 250)) != 1:
                            s = 2^(-(16 * s) + 250)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s
                            t = 2^(-(16 * s) + 250) + t
                            continue 
            else:
                if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 2:
                    if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 3:
                        require 2^(-(16 * s - 1) + 248)
                        if bool(t / 2^(-(16 * s - 1) + 248)) != 1:
                            s = 2^(-(16 * s - 1) + 248)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s - 1
                            t = 2^(-(16 * s - 1) + 248) + t
                            continue 
                    else:
                        require 2^(-(16 * s - 1) + 249)
                        if bool(t / 2^(-(16 * s - 1) + 249)) != 1:
                            s = 2^(-(16 * s - 1) + 249)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s - 1
                            t = 2^(-(16 * s - 1) + 249) + t
                            continue 
                else:
                    if arg1 / 2^(-(4 * idx + 1) + 256) % 16 != 3:
                        require 2^(-(16 * s) + 248)
                        if bool(t / 2^(-(16 * s) + 248)) != 1:
                            s = 2^(-(16 * s) + 248)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s
                            t = 2^(-(16 * s) + 248) + t
                            continue 
                    else:
                        require 2^(-(16 * s) + 249)
                        if bool(t / 2^(-(16 * s) + 249)) != 1:
                            s = 2^(-(16 * s) + 249)
                            s = arg1 / 2^(-(4 * idx + 1) + 256) % 16
                            idx = idx + 1
                            s = s
                            t = 2^(-(16 * s) + 249) + t
                            continue 
        return (idx / 8)
    return (idx / 8)
}



}
