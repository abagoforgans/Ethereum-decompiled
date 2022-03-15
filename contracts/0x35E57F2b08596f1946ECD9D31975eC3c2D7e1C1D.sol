contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;
uint256 stor4;
array of struct stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor4 = msg.value
    stor2 = 0
    stor5.length = 0
    if not stor5.length <= 0:
        idx = 0
        while 4 * stor5.length > idx:
            stor5[idx].field_0 = 0
            stor5[idx].field_256 = 0
            stor5[idx].field_512 = 0
            stor5[idx].field_768 = 0
            idx = idx + 1
            continue 
    return code.data[145 len 2152]
}



// =====================  Runtime code  =====================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint256 sub_9db6537d;
array of struct stor5;
array of uint256 sub_409a967f;
array of uint256 sub_44b5f535;
array of address bidderAt;

function getBidderAt(uint256 arg1) payable {
    require arg1 < stor5.length
    return bidderAt[arg1]
}

function status() payable {
    return stor2.length
}

function sub_409a967f(?) payable {
    require arg1 < stor5.length
    return sub_409a967f[arg1]
}

function sub_44b5f535(?) payable {
    require arg1 < stor5.length
    return sub_44b5f535[arg1]
}

function sub_5209ea57(?) payable {
    return stor3.length
}

function sub_9391a16a(?) payable {
    require arg1 < stor5.length
    return uint256(stor[code.data[2120 len 32] + (4 * arg1)])
}

function interval() payable {
    return stor1.length
}

function sub_9db6537d(?) payable {
    return sub_9db6537d
}

function sub_c2afd8c6(?) payable {
    return stor5.length
}

function _fallback() payable {
    sub_9db6537d += msg.value
}

function sub_3ff0d535(?) payable {
    if stor2.length <= 0:
        return 0
    return (stor3.length + stor1.length)
}

function sub_e2543d1c(?) payable {
    if 1 == stor2.length:
        if stor3.length <= block.number:
            stor2.length = 2
    if stor2.length == 2:
        if stor1.length + stor3.length <= block.number:
            stor2.length = 0
            s = 0
            s = 0
            s = 0
            s = 0
            t = 0
            idx = 1
            while 1 == idx:
                u = 0
                s = -1
                t = 0
                while u < stor5.length:
                    mem[0] = 5
                    if sub_409a967f[u] >= s:
                        u = u + 1
                        s = s
                        t = t
                        continue 
                    require u < stor5.length
                    mem[0] = 5
                    if uint256(stor[code.data[2120 len 32] + (4 * u)]) <= 0:
                        u = u + 1
                        s = s
                        t = t
                        continue 
                    require u < stor5.length
                    mem[0] = 5
                    u = u + 1
                    s = sub_409a967f[u]
                    t = 1
                    continue 
                require 0 < stor5.length
                mem[0] = 5
                idx = 0
                v = 0
                while idx < stor5.length:
                    require idx < stor5.length
                    mem[0] = 5
                    if uint256(stor[code.data[2120 len 32] + (4 * idx)]) < uint256(stor[code.data[2120 len 32]]):
                        uint256(stor[code.data[2120 len 32] + (4 * idx)]) = 0
                        idx = idx + 1
                        v = uint256(stor[code.data[2120 len 32] + (4 * idx)]) + v
                        continue 
                    uint256(stor[code.data[2120 len 32] + (4 * idx)]) -= uint256(stor[code.data[2120 len 32]])
                    idx = idx + 1
                    v = uint256(stor[code.data[2120 len 32]]) + v
                    continue 
                if 1 == t:
                    require 0 < stor5.length
                    mem[0] = 5
                    call bidderAt.length with:
                       value (sub_9db6537d / 100) + (99 * v / 100) wei
                         gas 0 wei
                    sub_9db6537d -= sub_9db6537d / 100
                    call stor0 with:
                       value v - (99 * v / 100) wei
                         gas 0 wei
                u = idx
                u = v
                u = uint256(stor[code.data[2120 len 32]])
                u = u
                s = s
                t = t
                continue 
            stor3.length = 0
            stor5.length = 0
            idx = 0xb2036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3d
            while (4 * stor5.length) - 0x4dfc949c7b4a13586e39d89eead2f38644f9fb3efb5a0490b14f8fc0ceab44c3 > idx:
                address(stor[idx]) = 0
                stor1[idx] = 0
                stor2[idx] = 0
                stor3[idx] = 0
                idx = idx + 1
                continue 
    if msg.value <= 0:
        sub_9db6537d += msg.value
    else:
        if stor2.length == 2:
            sub_9db6537d += msg.value
        else:
            if stor2.length != 0:
                stor5.length++
                if not stor5.length <= stor5.length + 1:
                    idx = (4 * stor5.length + 1) - 0x4dfc949c7b4a13586e39d89eead2f38644f9fb3efb5a0490b14f8fc0ceab44c3
                    while (4 * stor5.length) - 0x4dfc949c7b4a13586e39d89eead2f38644f9fb3efb5a0490b14f8fc0ceab44c3 > idx:
                        address(stor[idx]) = 0
                        stor1[idx] = 0
                        stor2[idx] = 0
                        stor3[idx] = 0
                        idx = idx + 1
                        continue 
                require stor5.length - 1 < stor5.length
                uint256(stor5[stor5.length - 1].field_0) = msg.sender or Mask(96, 160, uint256(stor5[stor5.length - 1].field_0))
                uint256(stor5[stor5.length - 1].field_256) = msg.value
                uint256(stor5[stor5.length - 1].field_512) = -1
                uint256(stor5[stor5.length - 1].field_768) = 0
            else:
                if arg1 < 20:
                    sub_9db6537d += msg.value
                else:
                    if arg1 > 200:
                        sub_9db6537d += msg.value
                    else:
                        if 0 == stor2.length:
                            stor1.length = arg1
                            stor3.length = arg1 + block.number
                            stor2.length = 1
                        stor5.length++
                        if not stor5.length <= stor5.length + 1:
                            idx = (4 * stor5.length + 1) - 0x4dfc949c7b4a13586e39d89eead2f38644f9fb3efb5a0490b14f8fc0ceab44c3
                            while (4 * stor5.length) - 0x4dfc949c7b4a13586e39d89eead2f38644f9fb3efb5a0490b14f8fc0ceab44c3 > idx:
                                address(stor[idx]) = 0
                                stor1[idx] = 0
                                stor2[idx] = 0
                                stor3[idx] = 0
                                idx = idx + 1
                                continue 
                        require stor5.length - 1 < stor5.length
                        uint256(stor5[stor5.length - 1].field_0) = msg.sender or Mask(96, 160, uint256(stor5[stor5.length - 1].field_0))
                        uint256(stor5[stor5.length - 1].field_256) = msg.value
                        uint256(stor5[stor5.length - 1].field_512) = -1
                        uint256(stor5[stor5.length - 1].field_768) = 0
}

function sub_c0336629(?) payable {
    if stor2.length != 1:
        if stor2.length == 2:
            if stor1.length + stor3.length <= block.number:
                stor2.length = 0
                s = 0
                s = 0
                s = 0
                s = 0
                t = 0
                idx = 1
                while 1 == idx:
                    u = 0
                    s = -1
                    t = 0
                    while u < stor5.length:
                        mem[0] = 5
                        if sub_409a967f[u] >= s:
                            u = u + 1
                            s = s
                            t = t
                            continue 
                        require u < stor5.length
                        mem[0] = 5
                        if uint256(stor[code.data[2120 len 32] + (4 * u)]) <= 0:
                            u = u + 1
                            s = s
                            t = t
                            continue 
                        require u < stor5.length
                        mem[0] = 5
                        u = u + 1
                        s = sub_409a967f[u]
                        t = 1
                        continue 
                    require 0 < stor5.length
                    mem[0] = 5
                    idx = 0
                    v = 0
                    while idx < stor5.length:
                        require idx < stor5.length
                        mem[0] = 5
                        if uint256(stor[code.data[2120 len 32] + (4 * idx)]) < uint256(stor[code.data[2120 len 32]]):
                            uint256(stor[code.data[2120 len 32] + (4 * idx)]) = 0
                            idx = idx + 1
                            v = uint256(stor[code.data[2120 len 32] + (4 * idx)]) + v
                            continue 
                        uint256(stor[code.data[2120 len 32] + (4 * idx)]) -= uint256(stor[code.data[2120 len 32]])
                        idx = idx + 1
                        v = uint256(stor[code.data[2120 len 32]]) + v
                        continue 
                    if 1 == t:
                        require 0 < stor5.length
                        mem[0] = 5
                        call bidderAt.length with:
                           value (sub_9db6537d / 100) + (99 * v / 100) wei
                             gas 0 wei
                        sub_9db6537d -= sub_9db6537d / 100
                        call stor0 with:
                           value v - (99 * v / 100) wei
                             gas 0 wei
                    u = idx
                    u = v
                    u = uint256(stor[code.data[2120 len 32]])
                    u = u
                    s = s
                    t = t
                    continue 
                stor3.length = 0
                stor5.length = 0
                idx = 0xb2036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3d
                while (4 * stor5.length) - 0x4dfc949c7b4a13586e39d89eead2f38644f9fb3efb5a0490b14f8fc0ceab44c3 > idx:
                    address(stor[idx]) = 0
                    stor1[idx] = 0
                    stor2[idx] = 0
                    stor3[idx] = 0
                    idx = idx + 1
                    continue 
    else:
        if stor3.length <= block.number:
            stor2.length = 2
        if stor2.length == 2:
            if stor1.length + stor3.length <= block.number:
                stor2.length = 0
                s = 0
                s = 0
                s = 0
                s = 0
                t = 0
                idx = 1
                while 1 == idx:
                    u = 0
                    s = -1
                    t = 0
                    while u < stor5.length:
                        mem[0] = 5
                        if sub_409a967f[u] >= s:
                            u = u + 1
                            s = s
                            t = t
                            continue 
                        require u < stor5.length
                        mem[0] = 5
                        if uint256(stor[code.data[2120 len 32] + (4 * u)]) <= 0:
                            u = u + 1
                            s = s
                            t = t
                            continue 
                        require u < stor5.length
                        mem[0] = 5
                        u = u + 1
                        s = sub_409a967f[u]
                        t = 1
                        continue 
                    require 0 < stor5.length
                    mem[0] = 5
                    idx = 0
                    v = 0
                    while idx < stor5.length:
                        require idx < stor5.length
                        mem[0] = 5
                        if uint256(stor[code.data[2120 len 32] + (4 * idx)]) < uint256(stor[code.data[2120 len 32]]):
                            uint256(stor[code.data[2120 len 32] + (4 * idx)]) = 0
                            idx = idx + 1
                            v = uint256(stor[code.data[2120 len 32] + (4 * idx)]) + v
                            continue 
                        uint256(stor[code.data[2120 len 32] + (4 * idx)]) -= uint256(stor[code.data[2120 len 32]])
                        idx = idx + 1
                        v = uint256(stor[code.data[2120 len 32]]) + v
                        continue 
                    if 1 == t:
                        require 0 < stor5.length
                        mem[0] = 5
                        call bidderAt.length with:
                           value (sub_9db6537d / 100) + (99 * v / 100) wei
                             gas 0 wei
                        sub_9db6537d -= sub_9db6537d / 100
                        call stor0 with:
                           value v - (99 * v / 100) wei
                             gas 0 wei
                    u = idx
                    u = v
                    u = uint256(stor[code.data[2120 len 32]])
                    u = u
                    s = s
                    t = t
                    continue 
                stor3.length = 0
                stor5.length = 0
                idx = 0xb2036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3d
                while (4 * stor5.length) - 0x4dfc949c7b4a13586e39d89eead2f38644f9fb3efb5a0490b14f8fc0ceab44c3 > idx:
                    address(stor[idx]) = 0
                    stor1[idx] = 0
                    stor2[idx] = 0
                    stor3[idx] = 0
                    idx = idx + 1
                    continue 
}

function sub_0bf94512(?) payable {
    if stor2.length != 1:
        if stor2.length == 2:
            if stor1.length + stor3.length <= block.number:
                stor2.length = 0
                s = 0
                s = 0
                s = 0
                s = 0
                t = 0
                idx = 1
                while 1 == idx:
                    u = 0
                    s = -1
                    t = 0
                    while u < stor5.length:
                        mem[0] = 5
                        if sub_409a967f[u] >= s:
                            u = u + 1
                            s = s
                            t = t
                            continue 
                        require u < stor5.length
                        mem[0] = 5
                        if uint256(stor[code.data[2120 len 32] + (4 * u)]) <= 0:
                            u = u + 1
                            s = s
                            t = t
                            continue 
                        require u < stor5.length
                        mem[0] = 5
                        u = u + 1
                        s = sub_409a967f[u]
                        t = 1
                        continue 
                    require 0 < stor5.length
                    mem[0] = 5
                    idx = 0
                    v = 0
                    while idx < stor5.length:
                        require idx < stor5.length
                        mem[0] = 5
                        if uint256(stor[code.data[2120 len 32] + (4 * idx)]) < uint256(stor[code.data[2120 len 32]]):
                            uint256(stor[code.data[2120 len 32] + (4 * idx)]) = 0
                            idx = idx + 1
                            v = uint256(stor[code.data[2120 len 32] + (4 * idx)]) + v
                            continue 
                        uint256(stor[code.data[2120 len 32] + (4 * idx)]) -= uint256(stor[code.data[2120 len 32]])
                        idx = idx + 1
                        v = uint256(stor[code.data[2120 len 32]]) + v
                        continue 
                    if 1 == t:
                        require 0 < stor5.length
                        mem[0] = 5
                        call bidderAt.length with:
                           value (sub_9db6537d / 100) + (99 * v / 100) wei
                             gas 0 wei
                        sub_9db6537d -= sub_9db6537d / 100
                        call stor0 with:
                           value v - (99 * v / 100) wei
                             gas 0 wei
                    u = idx
                    u = v
                    u = uint256(stor[code.data[2120 len 32]])
                    u = u
                    s = s
                    t = t
                    continue 
                stor3.length = 0
                stor5.length = 0
                idx = 0xb2036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3d
                while (4 * stor5.length) - 0x4dfc949c7b4a13586e39d89eead2f38644f9fb3efb5a0490b14f8fc0ceab44c3 > idx:
                    address(stor[idx]) = 0
                    stor1[idx] = 0
                    stor2[idx] = 0
                    stor3[idx] = 0
                    idx = idx + 1
                    continue 
            if stor2.length == 2:
                idx = 0
                s = 0
                while idx < stor5.length:
                    mem[0] = 5
                    if sub_44b5f535[idx] != arg1:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 1
                    continue 
                if 0 == s:
                    idx = 0
                    while idx < stor5.length:
                        mem[0] = 5
                        if bidderAt[idx] == msg.sender:
                            mem[96] = block.hash(stor3.length)
                            mem[128] = arg1
                            require idx < stor5.length
                            mem[0] = 5
                            sub_409a967f[idx] = sha3(block.hash(stor3.length), arg1)
                            sub_44b5f535[idx] = arg1
                        idx = idx + 1
                        continue 
    else:
        if stor3.length <= block.number:
            stor2.length = 2
        if stor2.length == 2:
            if stor1.length + stor3.length <= block.number:
                stor2.length = 0
                s = 0
                s = 0
                s = 0
                s = 0
                t = 0
                idx = 1
                while 1 == idx:
                    u = 0
                    s = -1
                    t = 0
                    while u < stor5.length:
                        mem[0] = 5
                        if sub_409a967f[u] >= s:
                            u = u + 1
                            s = s
                            t = t
                            continue 
                        require u < stor5.length
                        mem[0] = 5
                        if uint256(stor[code.data[2120 len 32] + (4 * u)]) <= 0:
                            u = u + 1
                            s = s
                            t = t
                            continue 
                        require u < stor5.length
                        mem[0] = 5
                        u = u + 1
                        s = sub_409a967f[u]
                        t = 1
                        continue 
                    require 0 < stor5.length
                    mem[0] = 5
                    idx = 0
                    v = 0
                    while idx < stor5.length:
                        require idx < stor5.length
                        mem[0] = 5
                        if uint256(stor[code.data[2120 len 32] + (4 * idx)]) < uint256(stor[code.data[2120 len 32]]):
                            uint256(stor[code.data[2120 len 32] + (4 * idx)]) = 0
                            idx = idx + 1
                            v = uint256(stor[code.data[2120 len 32] + (4 * idx)]) + v
                            continue 
                        uint256(stor[code.data[2120 len 32] + (4 * idx)]) -= uint256(stor[code.data[2120 len 32]])
                        idx = idx + 1
                        v = uint256(stor[code.data[2120 len 32]]) + v
                        continue 
                    if 1 == t:
                        require 0 < stor5.length
                        mem[0] = 5
                        call bidderAt.length with:
                           value (sub_9db6537d / 100) + (99 * v / 100) wei
                             gas 0 wei
                        sub_9db6537d -= sub_9db6537d / 100
                        call stor0 with:
                           value v - (99 * v / 100) wei
                             gas 0 wei
                    u = idx
                    u = v
                    u = uint256(stor[code.data[2120 len 32]])
                    u = u
                    s = s
                    t = t
                    continue 
                stor3.length = 0
                stor5.length = 0
                idx = 0xb2036b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3d
                while (4 * stor5.length) - 0x4dfc949c7b4a13586e39d89eead2f38644f9fb3efb5a0490b14f8fc0ceab44c3 > idx:
                    address(stor[idx]) = 0
                    stor1[idx] = 0
                    stor2[idx] = 0
                    stor3[idx] = 0
                    idx = idx + 1
                    continue 
            if stor2.length == 2:
                idx = 0
                s = 0
                while idx < stor5.length:
                    mem[0] = 5
                    if sub_44b5f535[idx] != arg1:
                        idx = idx + 1
                        s = s
                        continue 
                    idx = idx + 1
                    s = 1
                    continue 
                if 0 == s:
                    idx = 0
                    while idx < stor5.length:
                        mem[0] = 5
                        if bidderAt[idx] == msg.sender:
                            mem[96] = block.hash(stor3.length)
                            mem[128] = arg1
                            require idx < stor5.length
                            mem[0] = 5
                            sub_409a967f[idx] = sha3(block.hash(stor3.length), arg1)
                            sub_44b5f535[idx] = arg1
                        idx = idx + 1
                        continue 
    sub_9db6537d += msg.value
}



}
