contract main {




// =====================  Runtime code  =====================


const sub_f3bc843e(?) = 'governance'

const ONE_HOUR = 3600

const ONE_WEEK = (168 * 24 * 3600)


mapping of uint8 stor0;
uint256 initialTimestamp;
uint256 sub_66a41fec;
uint256 sub_6bb65ff0;
uint256 sub_38b02ef5;
uint256 sub_39f26f2d;
uint256 stor6;
uint256 stor7;
mapping of uint256 stor8;
mapping of uint8 stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint8 stor99;

function sub_38b02ef5(?) {
    return sub_38b02ef5
}

function sub_39f26f2d(?) {
    return sub_39f26f2d
}

function sub_66a41fec(?) {
    return sub_66a41fec
}

function sub_6bb65ff0(?) {
    return sub_6bb65ff0
}

function initialTimestamp() {
    return initialTimestamp
}

function _fallback() payable {
    revert
}

function sub_7405ccc7(?) {
    require stor0['governance'][address(msg.sender)]
    sub_39f26f2d = arg1
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function sub_81c75e33(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = 10
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256] = 'governance'
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288 len 0] = None
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288 len 10] = 'governance'
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 298] = 0
    require stor0['governance'][address(msg.sender)]
    require arg1.length == arg2.length
    require arg2.length == arg3.length
    if arg1.length > 0:
        if stor6:
            require 0 < arg1.length
            require stor8[stor6 - 1] < mem[128]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if idx:
                require stor8[idx + stor6 - 1] < mem[(32 * idx) + 128]
            stor9[mem[(32 * idx) + 128]] = 1
            require idx < arg1.length
            stor8[idx + stor6] = mem[(32 * idx) + 128]
            require idx < arg2.length
            require idx < arg1.length
            stor10[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg1.length) + 160]
            require idx < arg3.length
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 11
            stor11[mem[(32 * idx) + 128]] = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
            idx = idx + 1
            continue 
        stor6 += arg1.length
    if arg4.length > 0:
        idx = 0
        while idx < arg4.length:
            require idx < arg4.length
            require 1 == bool(stor9[mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224]])
            require idx < arg4.length
            stor9[mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]] = 0
            require idx < arg4.length
            stor10[mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]] = 0
            require idx < arg4.length
            stor11[mem[(32 * idx) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]] = 0
            require idx < arg4.length
            require stor8[idx + stor7] == mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 224]
            mem[0] = idx + stor7
            mem[32] = 8
            stor8[idx + stor7] = 0
            idx = idx + 1
            continue 
        stor7 += arg4.length
}

function sub_3b669e08(?) {
    require stor7 <= stor6
    mem[96] = stor6 - stor7
    if not stor6 - stor7:
        mem[(32 * stor6 - stor7) + 128] = stor6 - stor7
        mem[(64 * stor6 - stor7) + 160] = stor6 - stor7
        mem[64] = (98 * stor6) + (-98 * stor7) + 192
        idx = stor7
        while idx < stor6:
            require stor7 <= idx
            require idx - stor7 < mem[96]
            mem[(32 * idx - stor7) + 128] = stor8[idx]
            require idx - stor7 < mem[96]
            require idx - stor7 < mem[(32 * stor6 - stor7) + 128]
            mem[(32 * stor6 - stor7) + (32 * idx - stor7) + 160] = stor10[stor8[idx]]
            require idx - stor7 < mem[96]
            mem[0] = stor8[idx]
            mem[32] = 11
            require idx - stor7 < mem[(64 * stor6 - stor7) + 160]
            mem[(64 * stor6 - stor7) + (32 * idx - stor7) + 192] = stor11[stor8[idx]]
            idx = idx + 1
            continue 
        _48 = mem[64]
        mem[mem[64]] = 96
        mem[mem[64] + 96] = mem[96]
        _50 = mem[96]
        mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[mem[64] + 32] = (32 * _50) + 128
        mem[(32 * _50) + _48 + 128] = mem[(32 * stor6 - stor7) + 128]
        _91 = mem[(32 * stor6 - stor7) + 128]
        mem[(32 * _50) + _48 + 160 len floor32(mem[(32 * stor6 - stor7) + 128])] = mem[(32 * stor6 - stor7) + 160 len floor32(mem[(32 * stor6 - stor7) + 128])]
        mem[_48 + 64] = (32 * _91) + (32 * _50) + 160
        mem[(32 * _91) + (32 * _50) + _48 + 160] = mem[(64 * stor6 - stor7) + 160]
        _107 = mem[(64 * stor6 - stor7) + 160]
        mem[(32 * _91) + (32 * _50) + _48 + 192 len floor32(mem[(64 * stor6 - stor7) + 160])] = mem[(64 * stor6 - stor7) + 192 len floor32(mem[(64 * stor6 - stor7) + 160])]
        return memory
          from mem[64]
           len (32 * _107) + (32 * _91) + (32 * _50) + _48 + -mem[64] + 192
    mem[128 len 32 * stor6 - stor7] = code.data[4506 len 32 * stor6 - stor7]
    mem[(32 * stor6 - stor7) + 128] = stor6 - stor7
    mem[(32 * stor6 - stor7) + 160 len 32 * stor6 - stor7] = code.data[4506 len 32 * stor6 - stor7]
    mem[(64 * stor6 - stor7) + 160] = stor6 - stor7
    mem[64] = (98 * stor6) + (-98 * stor7) + 192
    mem[(64 * stor6 - stor7) + 192 len 32 * stor6 - stor7] = code.data[4506 len 32 * stor6 - stor7]
    idx = stor7
    while idx < stor6:
        require stor7 <= idx
        require idx - stor7 < mem[96]
        mem[(32 * idx - stor7) + 128] = stor8[idx]
        require idx - stor7 < mem[96]
        require idx - stor7 < mem[(32 * stor6 - stor7) + 128]
        mem[(32 * stor6 - stor7) + (32 * idx - stor7) + 160] = stor10[stor8[idx]]
        require idx - stor7 < mem[96]
        mem[0] = stor8[idx]
        mem[32] = 11
        require idx - stor7 < mem[(64 * stor6 - stor7) + 160]
        mem[(64 * stor6 - stor7) + (32 * idx - stor7) + 192] = stor11[stor8[idx]]
        idx = idx + 1
        continue 
    _51 = mem[64]
    mem[mem[64]] = 96
    mem[mem[64] + 96] = mem[96]
    _53 = mem[96]
    mem[mem[64] + 128 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_51 + 32] = (32 * _53) + 128
    mem[(32 * _53) + _51 + 128] = mem[(32 * stor6 - stor7) + 128]
    _94 = mem[(32 * stor6 - stor7) + 128]
    mem[(32 * _53) + _51 + 160 len floor32(mem[(32 * stor6 - stor7) + 128])] = mem[(32 * stor6 - stor7) + 160 len floor32(mem[(32 * stor6 - stor7) + 128])]
    mem[_51 + 64] = (32 * _94) + (32 * _53) + 160
    mem[(32 * _94) + (32 * _53) + _51 + 160] = mem[(64 * stor6 - stor7) + 160]
    _110 = mem[(64 * stor6 - stor7) + 160]
    mem[(32 * _94) + (32 * _53) + _51 + 192 len floor32(mem[(64 * stor6 - stor7) + 160])] = mem[(64 * stor6 - stor7) + 192 len floor32(mem[(64 * stor6 - stor7) + 160])]
    return memory
      from mem[64]
       len (32 * _110) + (32 * _94) + (32 * _53) + _51 + -mem[64] + 192
}

function sub_8f82d273(?) {
    mem[96 len 128] = call.data[4 len 128]
    require initialTimestamp <= call.data[4]
    require sub_39f26f2d + block.timestamp >= block.timestamp
    if not sub_66a41fec:
        if call.data[4] - initialTimestamp % 168 * 24 * 3600:
            mem[224 len 128] = call.data[4 len 128]
            mem[0] = call.data[4]
            mem[32] = 9
            if bool(stor9[call.data[4]]) != 1:
                return (1 == bool(stor9[call.data[4]]))
            idx = 1
            s = 1 == bool(stor[sha3(mem[0 len 64])])
            while idx < 4:
                if not s:
                    return bool(s)
                require idx < 4
                if mem[(32 * idx) + 224] <= block.timestamp:
                    mem[352] = mem[(32 * idx) + 224] > block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        mem[0] = call.data[4]
                        mem[32] = 11
                        if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require initialTimestamp <= mem[(32 * idx) + 224]
                            if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                idx = idx + 1
                                s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                continue 
                            mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                return memory
                  from 352
                   len 32
            return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _485 - initialTimestamp % 3600))
        if sub_39f26f2d + block.timestamp > call.data[4]:
            mem[224 len 128] = call.data[4 len 128]
            mem[0] = call.data[4]
            mem[32] = 9
            if bool(stor9[call.data[4]]) != 1:
                return (1 == bool(stor9[call.data[4]]))
            idx = 1
            s = 1 == bool(stor[sha3(mem[0 len 64])])
            while idx < 4:
                if not s:
                    return bool(s)
                require idx < 4
                if mem[(32 * idx) + 224] <= block.timestamp:
                    mem[352] = mem[(32 * idx) + 224] > block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        mem[0] = call.data[4]
                        mem[32] = 11
                        if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require initialTimestamp <= mem[(32 * idx) + 224]
                            if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                idx = idx + 1
                                s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                continue 
                            mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                return memory
                  from 352
                   len 32
            return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _486 - initialTimestamp % 3600))
        if sub_39f26f2d + block.timestamp <= call.data[4]:
            mem[224 len 128] = call.data[4 len 128]
            mem[0] = call.data[4]
            mem[32] = 9
            if bool(stor9[call.data[4]]) != 1:
                return (1 == bool(stor9[call.data[4]]))
            idx = 1
            s = 1 == bool(stor[sha3(mem[0 len 64])])
            while idx < 4:
                if not s:
                    return bool(s)
                require idx < 4
                if mem[(32 * idx) + 224] <= block.timestamp:
                    mem[352] = mem[(32 * idx) + 224] > block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        mem[0] = call.data[4]
                        mem[32] = 11
                        if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require initialTimestamp <= mem[(32 * idx) + 224]
                            if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                idx = idx + 1
                                s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                continue 
                            mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                return memory
                  from 352
                   len 32
            return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _487 - initialTimestamp % 3600))
        idx = 1
        s = sub_39f26f2d + block.timestamp > call.data[4]
        while idx < 4:
            if not s:
                mem[224 len 128] = call.data[4 len 128]
                mem[0] = call.data[4]
                mem[32] = 9
                if bool(stor9[call.data[4]]) != 1:
                    return (1 == bool(stor9[call.data[4]]))
                idx = 1
                s = 1 == bool(stor[sha3(mem[0 len 64])])
                while idx < 4:
                    if not s:
                        return bool(s)
                    require idx < 4
                    if mem[(32 * idx) + 224] <= block.timestamp:
                        mem[352] = mem[(32 * idx) + 224] > block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require block.timestamp <= mem[(32 * idx) + 224]
                            mem[0] = call.data[4]
                            mem[32] = 11
                            if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                                mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                            else:
                                require idx < 4
                                require initialTimestamp <= mem[(32 * idx) + 224]
                                if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                    idx = idx + 1
                                    s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                    continue 
                                mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                    return memory
                      from 352
                       len 32
                return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _851 - initialTimestamp % 3600))
            require idx < 4
            require initialTimestamp <= mem[(32 * idx) + 96]
            if mem[(32 * idx) + 96] - initialTimestamp % 3600:
                mem[224 len 128] = call.data[4 len 128]
                mem[0] = call.data[4]
                mem[32] = 9
                if bool(stor9[call.data[4]]) != 1:
                    return (1 == bool(stor9[call.data[4]]))
                idx = 1
                s = 1 == bool(stor[sha3(mem[0 len 64])])
                while idx < 4:
                    if not s:
                        return bool(s)
                    require idx < 4
                    if mem[(32 * idx) + 224] <= block.timestamp:
                        mem[352] = mem[(32 * idx) + 224] > block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require block.timestamp <= mem[(32 * idx) + 224]
                            mem[0] = call.data[4]
                            mem[32] = 11
                            if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                                mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                            else:
                                require idx < 4
                                require initialTimestamp <= mem[(32 * idx) + 224]
                                if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                    idx = idx + 1
                                    s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                    continue 
                                mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                    return memory
                      from 352
                       len 32
                return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _852 - initialTimestamp % 3600))
            require sub_6bb65ff0 + block.timestamp >= block.timestamp
            require idx < 4
            if mem[(32 * idx) + 96] <= sub_6bb65ff0 + block.timestamp:
                mem[224 len 128] = call.data[4 len 128]
                mem[0] = call.data[4]
                mem[32] = 9
                if bool(stor9[call.data[4]]) != 1:
                    return (1 == bool(stor9[call.data[4]]))
                idx = 1
                s = 1 == bool(stor[sha3(mem[0 len 64])])
                while idx < 4:
                    if not s:
                        return bool(s)
                    require idx < 4
                    if mem[(32 * idx) + 224] <= block.timestamp:
                        mem[352] = mem[(32 * idx) + 224] > block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require block.timestamp <= mem[(32 * idx) + 224]
                            mem[0] = call.data[4]
                            mem[32] = 11
                            if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                                mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                            else:
                                require idx < 4
                                require initialTimestamp <= mem[(32 * idx) + 224]
                                if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                    idx = idx + 1
                                    s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                    continue 
                                mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                    return memory
                      from 352
                       len 32
                return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _853 - initialTimestamp % 3600))
            require sub_38b02ef5 + block.timestamp >= block.timestamp
            require idx < 4
            if mem[(32 * idx) + 96] < sub_38b02ef5 + block.timestamp:
                idx = idx + 1
                s = mem[(32 * idx) + 96] < sub_38b02ef5 + block.timestamp
                continue 
            mem[224 len 128] = call.data[4 len 128]
            mem[0] = call.data[4]
            mem[32] = 9
            if bool(stor9[call.data[4]]) != 1:
                return (1 == bool(stor9[call.data[4]]))
            idx = 1
            s = 1 == bool(stor[sha3(mem[0 len 64])])
            while idx < 4:
                if not s:
                    return bool(s)
                require idx < 4
                if mem[(32 * idx) + 224] <= block.timestamp:
                    mem[352] = mem[(32 * idx) + 224] > block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        mem[0] = call.data[4]
                        mem[32] = 11
                        if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require initialTimestamp <= mem[(32 * idx) + 224]
                            if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                idx = idx + 1
                                s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                continue 
                            mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                return memory
                  from 352
                   len 32
            return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _854 - initialTimestamp % 3600))
        if s:
            return bool(s)
        mem[224 len 128] = call.data[4 len 128]
        mem[0] = call.data[4]
        mem[32] = 9
        if bool(stor9[call.data[4]]) != 1:
            return (1 == bool(stor9[call.data[4]]))
        idx = 1
        s = 1 == bool(stor[sha3(mem[0 len 64])])
        while idx < 4:
            if not s:
                return bool(s)
            require idx < 4
            if mem[(32 * idx) + 224] <= block.timestamp:
                mem[352] = mem[(32 * idx) + 224] > block.timestamp
            else:
                require idx < 4
                require block.timestamp <= mem[(32 * idx) + 224]
                if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                    mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    mem[0] = call.data[4]
                    mem[32] = 11
                    if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require initialTimestamp <= mem[(32 * idx) + 224]
                        if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                            idx = idx + 1
                            s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                            continue 
                        mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
            return memory
              from 352
               len 32
        return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _850 - initialTimestamp % 3600))
    require 168 * 24 * 3600 * sub_66a41fec / sub_66a41fec == 168 * 24 * 3600
    require 168 * 24 * 3600 * sub_66a41fec >= 0
    if call.data[4] - initialTimestamp % 168 * 24 * 3600:
        mem[224 len 128] = call.data[4 len 128]
        mem[0] = call.data[4]
        mem[32] = 9
        if bool(stor9[call.data[4]]) != 1:
            return (1 == bool(stor9[call.data[4]]))
        idx = 1
        s = 1 == bool(stor[sha3(mem[0 len 64])])
        while idx < 4:
            if not s:
                return bool(s)
            require idx < 4
            if mem[(32 * idx) + 224] <= block.timestamp:
                mem[352] = mem[(32 * idx) + 224] > block.timestamp
            else:
                require idx < 4
                require block.timestamp <= mem[(32 * idx) + 224]
                if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                    mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    mem[0] = call.data[4]
                    mem[32] = 11
                    if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require initialTimestamp <= mem[(32 * idx) + 224]
                        if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                            idx = idx + 1
                            s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                            continue 
                        mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
            return memory
              from 352
               len 32
        return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _479 - initialTimestamp % 3600))
    if sub_39f26f2d + block.timestamp > call.data[4]:
        mem[224 len 128] = call.data[4 len 128]
        mem[0] = call.data[4]
        mem[32] = 9
        if bool(stor9[call.data[4]]) != 1:
            return (1 == bool(stor9[call.data[4]]))
        idx = 1
        s = 1 == bool(stor[sha3(mem[0 len 64])])
        while idx < 4:
            if not s:
                return bool(s)
            require idx < 4
            if mem[(32 * idx) + 224] <= block.timestamp:
                mem[352] = mem[(32 * idx) + 224] > block.timestamp
            else:
                require idx < 4
                require block.timestamp <= mem[(32 * idx) + 224]
                if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                    mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    mem[0] = call.data[4]
                    mem[32] = 11
                    if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require initialTimestamp <= mem[(32 * idx) + 224]
                        if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                            idx = idx + 1
                            s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                            continue 
                        mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
            return memory
              from 352
               len 32
        return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _480 - initialTimestamp % 3600))
    if (168 * 24 * 3600 * sub_66a41fec) + sub_39f26f2d + block.timestamp <= call.data[4]:
        mem[224 len 128] = call.data[4 len 128]
        mem[0] = call.data[4]
        mem[32] = 9
        if bool(stor9[call.data[4]]) != 1:
            return (1 == bool(stor9[call.data[4]]))
        idx = 1
        s = 1 == bool(stor[sha3(mem[0 len 64])])
        while idx < 4:
            if not s:
                return bool(s)
            require idx < 4
            if mem[(32 * idx) + 224] <= block.timestamp:
                mem[352] = mem[(32 * idx) + 224] > block.timestamp
            else:
                require idx < 4
                require block.timestamp <= mem[(32 * idx) + 224]
                if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                    mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    mem[0] = call.data[4]
                    mem[32] = 11
                    if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require initialTimestamp <= mem[(32 * idx) + 224]
                        if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                            idx = idx + 1
                            s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                            continue 
                        mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
            return memory
              from 352
               len 32
        return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _481 - initialTimestamp % 3600))
    idx = 1
    s = (168 * 24 * 3600 * sub_66a41fec) + sub_39f26f2d + block.timestamp > call.data[4]
    while idx < 4:
        if not s:
            mem[224 len 128] = call.data[4 len 128]
            mem[0] = call.data[4]
            mem[32] = 9
            if bool(stor9[call.data[4]]) != 1:
                return (1 == bool(stor9[call.data[4]]))
            idx = 1
            s = 1 == bool(stor[sha3(mem[0 len 64])])
            while idx < 4:
                if not s:
                    return bool(s)
                require idx < 4
                if mem[(32 * idx) + 224] <= block.timestamp:
                    mem[352] = mem[(32 * idx) + 224] > block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        mem[0] = call.data[4]
                        mem[32] = 11
                        if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require initialTimestamp <= mem[(32 * idx) + 224]
                            if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                idx = idx + 1
                                s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                continue 
                            mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                return memory
                  from 352
                   len 32
            return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _846 - initialTimestamp % 3600))
        require idx < 4
        require initialTimestamp <= mem[(32 * idx) + 96]
        if mem[(32 * idx) + 96] - initialTimestamp % 3600:
            mem[224 len 128] = call.data[4 len 128]
            mem[0] = call.data[4]
            mem[32] = 9
            if bool(stor9[call.data[4]]) != 1:
                return (1 == bool(stor9[call.data[4]]))
            idx = 1
            s = 1 == bool(stor[sha3(mem[0 len 64])])
            while idx < 4:
                if not s:
                    return bool(s)
                require idx < 4
                if mem[(32 * idx) + 224] <= block.timestamp:
                    mem[352] = mem[(32 * idx) + 224] > block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        mem[0] = call.data[4]
                        mem[32] = 11
                        if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require initialTimestamp <= mem[(32 * idx) + 224]
                            if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                idx = idx + 1
                                s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                continue 
                            mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                return memory
                  from 352
                   len 32
            return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _847 - initialTimestamp % 3600))
        require sub_6bb65ff0 + block.timestamp >= block.timestamp
        require idx < 4
        if mem[(32 * idx) + 96] <= sub_6bb65ff0 + block.timestamp:
            mem[224 len 128] = call.data[4 len 128]
            mem[0] = call.data[4]
            mem[32] = 9
            if bool(stor9[call.data[4]]) != 1:
                return (1 == bool(stor9[call.data[4]]))
            idx = 1
            s = 1 == bool(stor[sha3(mem[0 len 64])])
            while idx < 4:
                if not s:
                    return bool(s)
                require idx < 4
                if mem[(32 * idx) + 224] <= block.timestamp:
                    mem[352] = mem[(32 * idx) + 224] > block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require block.timestamp <= mem[(32 * idx) + 224]
                        mem[0] = call.data[4]
                        mem[32] = 11
                        if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                            mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                        else:
                            require idx < 4
                            require initialTimestamp <= mem[(32 * idx) + 224]
                            if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                                idx = idx + 1
                                s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                                continue 
                            mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
                return memory
                  from 352
                   len 32
            return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _848 - initialTimestamp % 3600))
        require sub_38b02ef5 + block.timestamp >= block.timestamp
        require idx < 4
        if mem[(32 * idx) + 96] < sub_38b02ef5 + block.timestamp:
            idx = idx + 1
            s = mem[(32 * idx) + 96] < sub_38b02ef5 + block.timestamp
            continue 
        mem[224 len 128] = call.data[4 len 128]
        mem[0] = call.data[4]
        mem[32] = 9
        if bool(stor9[call.data[4]]) != 1:
            return (1 == bool(stor9[call.data[4]]))
        idx = 1
        s = 1 == bool(stor[sha3(mem[0 len 64])])
        while idx < 4:
            if not s:
                return bool(s)
            require idx < 4
            if mem[(32 * idx) + 224] <= block.timestamp:
                mem[352] = mem[(32 * idx) + 224] > block.timestamp
            else:
                require idx < 4
                require block.timestamp <= mem[(32 * idx) + 224]
                if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                    mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
                else:
                    require idx < 4
                    require block.timestamp <= mem[(32 * idx) + 224]
                    mem[0] = call.data[4]
                    mem[32] = 11
                    if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                        mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                    else:
                        require idx < 4
                        require initialTimestamp <= mem[(32 * idx) + 224]
                        if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                            idx = idx + 1
                            s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                            continue 
                        mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
            return memory
              from 352
               len 32
        return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _849 - initialTimestamp % 3600))
    if s:
        return bool(s)
    mem[224 len 128] = call.data[4 len 128]
    mem[0] = call.data[4]
    mem[32] = 9
    if bool(stor9[call.data[4]]) != 1:
        return (1 == bool(stor9[call.data[4]]))
    idx = 1
    s = 1 == bool(stor[sha3(mem[0 len 64])])
    while idx < 4:
        if not s:
            return bool(s)
        require idx < 4
        if mem[(32 * idx) + 224] <= block.timestamp:
            mem[352] = mem[(32 * idx) + 224] > block.timestamp
        else:
            require idx < 4
            require block.timestamp <= mem[(32 * idx) + 224]
            if stor10[call.data[4]] >= mem[(32 * idx) + 224] - block.timestamp:
                mem[352] = stor10[call.data[4]] < mem[(32 * idx) + 224] - block.timestamp
            else:
                require idx < 4
                require block.timestamp <= mem[(32 * idx) + 224]
                mem[0] = call.data[4]
                mem[32] = 11
                if stor11[call.data[4]] <= mem[(32 * idx) + 224] - block.timestamp:
                    mem[352] = stor11[call.data[4]] > mem[(32 * idx) + 224] - block.timestamp
                else:
                    require idx < 4
                    require initialTimestamp <= mem[(32 * idx) + 224]
                    if not mem[(32 * idx) + 224] - initialTimestamp % 3600:
                        idx = idx + 1
                        s = not mem[(32 * idx) + 224] - initialTimestamp % 3600
                        continue 
                    mem[352] = not bool(mem[(32 * idx) + 224] - initialTimestamp % 3600)
        return memory
          from 352
           len 32
    return bool((1 == bool(stor[sha3(mem[0 len 64])])) + (3 * _845 - initialTimestamp % 3600))
}



}
