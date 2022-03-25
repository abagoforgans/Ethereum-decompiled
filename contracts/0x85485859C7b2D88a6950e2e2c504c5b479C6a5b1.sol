contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1862]




// =====================  Runtime code  =====================


const sub_ba3e850e(?) = mem[256 len 160]


function _fallback() payable {
    revert 
}

function getRecord(uint256 arg1) {
    if stor0[arg1].field_256:
        mem[160] = stor0[arg1][1].field_0
        idx = 160
        s = 0
        while (32 * stor0[arg1].field_256) + 128 > idx:
            mem[idx + 32] = stor0[arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return stor0[arg1].field_0, Array(len=stor0[arg1].field_256, data=mem[160 len 32 * stor0[arg1].field_256])
}

function sub_0f24ca08(?) {
    stor0[arg1].field_0 = arg1
    stor0[arg1].field_256++
    if not stor0[arg1].field_256 <= stor0[arg1].field_256 + 1:
        idx = stor0[arg1].field_256 + 1
        while stor0[arg1].field_256 > idx:
            stor0[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    require stor0[arg1].field_256 - 1 < stor0[arg1].field_256
    stor[stor0[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = arg2
}

function sub_69bdbee0(?) {
    stor0[arg1].field_0 = arg1
    stor0[arg1].field_256++
    if not stor0[arg1].field_256 > stor0[arg1].field_256 + 1:
        require stor0[arg1].field_256 - 1 < stor0[arg1].field_256
        stor[stor0[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = arg2
        mem[96] = stor0[arg1].field_256
        if not stor0[arg1].field_256:
            mem[(32 * stor0[arg1].field_256) + 128] = 0
            idx = 0
            while idx < stor0[arg1].field_256:
                if var22002 > 0:
                    require var24003 - 1 < mem[96]
                    require var26004 < mem[96]
                    if var30001:
                        require var32002 < mem[96]
                        _284 = mem[(32 * var32002) + 128]
                        require var32002 - 1 < mem[96]
                        require var32002 < mem[96]
                        mem[(32 * var32002) + 128] = mem[(32 * var32002 - 1) + 128]
                        require var32002 - 1 < mem[96]
                        mem[(32 * var32002 - 1) + 128] = _284
                        t = var32002
                        u = var32001
                        s = var32002
                        while s - 1 > 0:
                            require s - 2 < mem[96]
                            require s - 1 < mem[96]
                            if mem[(32 * s - 1) + 128] < mem[(32 * s - 2) + 128]:
                                require s - 1 < mem[96]
                                require s - 2 < mem[96]
                                require s - 1 < mem[96]
                                mem[(32 * s - 1) + 128] = mem[(32 * s - 2) + 128]
                                require s - 2 < mem[96]
                                t = s - 1
                                u = mem[(32 * s - 2) + 128]
                                s = s - 1
                                continue 
                            _284 = mem[(32 * t) + 128]
                            require s - 1 < mem[96]
                            require s < mem[96]
                            mem[(32 * s) + 128] = mem[(32 * s - 1) + 128]
                            require s - 1 < mem[96]
                            mem[(32 * s - 1) + 128] = _284
                            idx = idx + 1
                            continue 
                idx = idx + 1
                continue 
        else:
            mem[128] = stor0[arg1][1].field_0
            idx = 128
            s = 0
            while (32 * stor0[arg1].field_256) + 96 > idx:
                mem[idx + 32] = stor0[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor0[arg1].field_256) + 128] = 0
            idx = 0
            while idx < stor0[arg1].field_256:
                if var26002 > 0:
                    require var28003 - 1 < mem[96]
                    require var30004 < mem[96]
                    if var34001:
                        require var36002 < mem[96]
                        _357 = mem[(32 * var36002) + 128]
                        require var36002 - 1 < mem[96]
                        require var36002 < mem[96]
                        mem[(32 * var36002) + 128] = mem[(32 * var36002 - 1) + 128]
                        require var36002 - 1 < mem[96]
                        mem[(32 * var36002 - 1) + 128] = _357
                        t = var36002
                        u = var36001
                        s = var36002
                        while s - 1 > 0:
                            require s - 2 < mem[96]
                            require s - 1 < mem[96]
                            if mem[(32 * s - 1) + 128] >= mem[(32 * s - 2) + 128]:
                                _357 = mem[(32 * t) + 128]
                                require s - 1 < mem[96]
                                require s < mem[96]
                                mem[(32 * s) + 128] = mem[(32 * s - 1) + 128]
                                require s - 1 < mem[96]
                                mem[(32 * s - 1) + 128] = _357
                                idx = idx + 1
                                continue 
                            require s - 1 < mem[96]
                            _357 = mem[(32 * s - 2) + 128]
                            require s - 2 < mem[96]
                            require s - 1 < mem[96]
                            mem[(32 * s - 1) + 128] = mem[(32 * s - 2) + 128]
                            require s - 2 < mem[96]
                            t = s - 1
                            u = mem[(32 * s - 2) + 128]
                            s = s - 1
                            continue 
                idx = idx + 1
                continue 
    else:
        idx = stor0[arg1].field_256 + 1
        while stor0[arg1].field_256 > idx:
            stor0[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        require stor0[arg1].field_256 - 1 < stor0[arg1].field_256
        stor[stor0[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'stor0', 0)))].field_0 = arg2
        mem[96] = stor0[arg1].field_256
        if not stor0[arg1].field_256:
            mem[(32 * stor0[arg1].field_256) + 128] = 0
            idx = 0
            while idx < stor0[arg1].field_256:
                if var27002 > 0:
                    require var29003 - 1 < mem[96]
                    require var31004 < mem[96]
                    if var35001:
                        require var37002 < mem[96]
                        _327 = mem[(32 * var37002) + 128]
                        require var37002 - 1 < mem[96]
                        require var37002 < mem[96]
                        mem[(32 * var37002) + 128] = mem[(32 * var37002 - 1) + 128]
                        require var37002 - 1 < mem[96]
                        mem[(32 * var37002 - 1) + 128] = _327
                        t = var37002
                        u = var37001
                        s = var37002
                        while s - 1 > 0:
                            require s - 2 < mem[96]
                            require s - 1 < mem[96]
                            if mem[(32 * s - 1) + 128] >= mem[(32 * s - 2) + 128]:
                                _327 = mem[(32 * t) + 128]
                                require s - 1 < mem[96]
                                require s < mem[96]
                                mem[(32 * s) + 128] = mem[(32 * s - 1) + 128]
                                require s - 1 < mem[96]
                                mem[(32 * s - 1) + 128] = _327
                                idx = idx + 1
                                continue 
                            require s - 1 < mem[96]
                            _327 = mem[(32 * s - 2) + 128]
                            require s - 2 < mem[96]
                            require s - 1 < mem[96]
                            mem[(32 * s - 1) + 128] = mem[(32 * s - 2) + 128]
                            require s - 2 < mem[96]
                            t = s - 1
                            u = mem[(32 * s - 2) + 128]
                            s = s - 1
                            continue 
                idx = idx + 1
                continue 
        else:
            mem[128] = stor0[arg1][1].field_0
            idx = 128
            s = 0
            while (32 * stor0[arg1].field_256) + 96 > idx:
                mem[idx + 32] = stor0[arg1][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(32 * stor0[arg1].field_256) + 128] = 0
            idx = 0
            while idx < stor0[arg1].field_256:
                if var31002 > 0:
                    require var33003 - 1 < mem[96]
                    require var35004 < mem[96]
                    if var39001:
                        require var41002 < mem[96]
                        _378 = mem[(32 * var41002) + 128]
                        require var41002 - 1 < mem[96]
                        require var41002 < mem[96]
                        mem[(32 * var41002) + 128] = mem[(32 * var41002 - 1) + 128]
                        require var41002 - 1 < mem[96]
                        mem[(32 * var41002 - 1) + 128] = _378
                        t = var41002
                        u = var41001
                        s = var41002
                        while s - 1 > 0:
                            require s - 2 < mem[96]
                            require s - 1 < mem[96]
                            if mem[(32 * s - 1) + 128] >= mem[(32 * s - 2) + 128]:
                                _378 = mem[(32 * t) + 128]
                                require s - 1 < mem[96]
                                require s < mem[96]
                                mem[(32 * s) + 128] = mem[(32 * s - 1) + 128]
                                require s - 1 < mem[96]
                                mem[(32 * s - 1) + 128] = _378
                                idx = idx + 1
                                continue 
                            require s - 1 < mem[96]
                            _378 = mem[(32 * s - 2) + 128]
                            require s - 2 < mem[96]
                            require s - 1 < mem[96]
                            mem[(32 * s - 1) + 128] = mem[(32 * s - 2) + 128]
                            require s - 2 < mem[96]
                            t = s - 1
                            u = mem[(32 * s - 2) + 128]
                            s = s - 1
                            continue 
                idx = idx + 1
                continue 
    stor0[arg1].field_256 = mem[96]
    if not mem[96]:
        idx = 0
        while stor0[arg1].field_256 > idx:
            stor0[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 128
        while (32 * mem[96]) + 128 > idx:
            stor0[arg1][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[96]) + 31) >> 5
        while stor0[arg1].field_256 > idx:
            stor0[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
}



}
