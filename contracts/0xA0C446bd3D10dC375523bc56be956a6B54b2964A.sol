contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of struct stor6;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        idx = stor3.length + 1
        while stor3.length > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
    stor4.length++
    if not stor4.length <= stor4.length + 1:
        idx = stor4.length + 1
        while stor4.length > idx:
            stor4[idx] = 0
            idx = idx + 1
            continue 
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        idx = 4 * stor6.length + 1
        while 4 * stor6.length > idx:
            stor6[idx].field_0 = 0
            stor6[idx].field_256 = 0
            stor6[idx].field_512 = 0
            idx = idx + 1
            continue 
    return code.data[456 len 9101]
}



// =====================  Runtime code  =====================


const sub_7bbcf787(?) = 0


address owner;
mapping of struct sub_b1be9407;
array of uint8 nodes;
array of address sub_a6a8cc00;
array of address owners;
mapping of uint256 sub_17901696;
array of struct sub_a09a4221;

function owners(uint256 arg1) payable {
    require arg1 < owners.length
    return address(owners[arg1])
}

function sub_17901696(?) payable {
    return sub_17901696[arg1]
}

function nodes(uint256 arg1) payable {
    require arg1 < nodes.length
    return uint256(nodes[arg1])
}

function owner() payable {
    return owner
}

function sub_a09a4221(?) payable {
    require sub_17901696[arg1][arg2] < sub_a09a4221.length
    return uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)
}

function sub_a6a8cc00(?) payable {
    require sub_17901696[arg1][arg2] < sub_a09a4221.length
    require stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][arg3 << 248].field_0 < sub_a6a8cc00.length
    return address(sub_a6a8cc00[stor[(4 * stor5[arg1][arg2]) + ('name', 'stor6', 6) + 3][arg3 << 248].field_0])
}

function sub_b1be9407(?) payable {
    return sub_b1be9407[arg1].field_0
}

function addresses(uint256 arg1) payable {
    require arg1 < sub_a6a8cc00.length
    return address(sub_a6a8cc00[arg1])
}

function sub_fd9b2dd2(?) payable {
    require arg1 < sub_a09a4221.length
    return sub_a09a4221[arg1].field_0, sub_a09a4221[arg1].field_256, uint8(sub_a09a4221[arg1].field_512)
}

function _fallback() payable {
  stop
}

function getNodeAddress(bytes32 arg1) payable {
    if sub_b1be9407[arg1].field_0 <= 0:
        return 0
    require sub_b1be9407[arg1].field_0 < sub_a6a8cc00.length
    return address(sub_a6a8cc00[stor1[arg1].field_0])
}

function sub_5a5f0c30(?) payable {
    if sub_b1be9407[arg1].field_0 <= 0:
        if owner != msg.sender:
            if owner != tx.origin:
                return 0
    else:
        require sub_b1be9407[arg1].field_0 < owners.length
        if address(owners[stor1[arg1].field_0]) != msg.sender:
            if owner != msg.sender:
                if owner != tx.origin:
                    return 0
    if not sub_b1be9407[arg1].field_0:
        return 0
    require sub_b1be9407[arg1].field_0 < sub_a6a8cc00.length
    uint256(sub_a6a8cc00[stor1[arg1].field_0]) = arg2 or Mask(96, 160, uint256(sub_a6a8cc00[stor1[arg1].field_0]))
    return 1
}

function hasRelation(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require sub_17901696[arg1][arg2] < sub_a09a4221.length
    idx = 1
    while uint8(idx) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
        mem[96] = arg1
        mem[128] = arg2
        require sub_17901696[arg1][arg2] < sub_a09a4221.length
        mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
        require stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 < sub_a6a8cc00.length
        mem[0] = 3
        if arg3 != address(sub_a6a8cc00[stor[(4 * stor5[arg1][arg2]) + ('name', 'stor6', 6) + 3][idx << 248].field_0]):
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_86d6d2ef(?) payable {
    if sub_b1be9407[arg3].field_0:
        if sub_17901696[arg1][arg2]:
            require sub_17901696[arg1][arg2] < sub_a09a4221.length
            idx = var13001
            while uint8(idx) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 == sub_b1be9407[arg3].field_0:
                    return 1
                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                mem[0] = 6
                idx = idx + 1
                continue 
            return 0
        else:
            return 0
    else:
        return 0
}

function addNode(bytes32 arg1, address arg2) payable {
    if sub_b1be9407[arg1].field_0 > 0:
        return 0
    idx = 1
    while uint8(idx) < nodes.length:
        require idx < nodes.length
        mem[0] = 2
        if uint256(nodes[idx]):
            idx = idx + 1
            continue 
        if uint8(idx):
            require idx < nodes.length
            uint256(nodes[idx]) = arg1
            require idx < sub_a6a8cc00.length
            uint256(sub_a6a8cc00[idx]) = arg2 or Mask(96, 160, uint256(sub_a6a8cc00[idx]))
            require idx < owners.length
            uint256(owners[idx]) = tx.origin or Mask(96, 160, uint256(owners[idx]))
            uint8(sub_b1be9407[arg1].field_0) = uint8(idx)
            Mask(248, 0, sub_b1be9407[arg1].field_8) = 0
        else:
            nodes.length++
            if not nodes.length <= nodes.length + 1:
                idx = sha3(2) + nodes.length + 1
                while sha3(2) + nodes.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            sub_a6a8cc00.length++
            if not sub_a6a8cc00.length <= sub_a6a8cc00.length + 1:
                idx = sha3(3) + sub_a6a8cc00.length + 1
                while sha3(3) + sub_a6a8cc00.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            owners.length++
            if not owners.length <= owners.length + 1:
                idx = sha3(4) + owners.length + 1
                while sha3(4) + owners.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
            require nodes.length < nodes.length
            uint256(nodes[nodes.length]) = arg1
            require nodes.length < sub_a6a8cc00.length
            uint256(sub_a6a8cc00[stor2.length]) = arg2 or Mask(96, 160, uint256(sub_a6a8cc00[stor2.length]))
            require nodes.length < owners.length
            uint256(owners[stor2.length]) = tx.origin or Mask(96, 160, uint256(owners[stor2.length]))
            sub_b1be9407[arg1].field_0 = uint8(nodes.length)
        return 1
    nodes.length++
    if not nodes.length <= nodes.length + 1:
        idx = nodes.length + 1
        while nodes.length > idx:
            uint256(nodes[idx]) = 0
            idx = idx + 1
            continue 
    sub_a6a8cc00.length++
    if not sub_a6a8cc00.length <= sub_a6a8cc00.length + 1:
        idx = sub_a6a8cc00.length + 1
        while sub_a6a8cc00.length > idx:
            uint256(sub_a6a8cc00[idx]) = 0
            idx = idx + 1
            continue 
    owners.length++
    if not owners.length <= owners.length + 1:
        idx = owners.length + 1
        while owners.length > idx:
            uint256(owners[idx]) = 0
            idx = idx + 1
            continue 
    require nodes.length < nodes.length
    uint256(nodes[nodes.length]) = arg1
    require nodes.length < sub_a6a8cc00.length
    uint256(sub_a6a8cc00[stor2.length]) = arg2 or Mask(96, 160, uint256(sub_a6a8cc00[stor2.length]))
    require nodes.length < owners.length
    uint256(owners[stor2.length]) = tx.origin or Mask(96, 160, uint256(owners[stor2.length]))
    sub_b1be9407[arg1].field_0 = uint8(nodes.length)
    return 1
}

function sub_fe280202(?) payable {
    if sub_b1be9407[arg1].field_0 > 0:
        require sub_b1be9407[arg1].field_0 < owners.length
        if address(owners[stor1[arg1].field_0]) == msg.sender:
            if sub_17901696[arg1][arg2]:
                if sub_b1be9407[arg3].field_0:
                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                    idx = 0
                    while uint8(idx) < uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                        mem[0] = uint8(idx)
                        mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                        if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 != sub_b1be9407[arg3].field_0:
                            idx = idx + 1
                            continue 
                        if uint8(idx) >= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                            stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = 0
                        else:
                            stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0
                            stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = 0
                        sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                        if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) < 1:
                            require sub_17901696[arg1][arg2] < sub_a09a4221.length
                            sub_a09a4221[stor5[arg1][arg2]].field_0 = 0
                            sub_a09a4221[stor5[arg1][arg2]].field_256 = 0
                            uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) = 0
                            sub_17901696[arg1][arg2] = 0
                        if msg.sender == owner:
                            if sub_17901696[arg1][arg2]:
                                if sub_b1be9407[arg3].field_0:
                                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                    idx = 0
                                    while uint8(idx) < uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                                        mem[0] = uint8(idx)
                                        mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                                        if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 != sub_b1be9407[arg3].field_0:
                                            idx = idx + 1
                                            continue 
                                        if uint8(idx) >= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                                            stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = 0
                                        else:
                                            stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0
                                            stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = 0
                                        sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                                        if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) < 1:
                                            require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                            sub_a09a4221[stor5[arg1][arg2]].field_0 = 0
                                            sub_a09a4221[stor5[arg1][arg2]].field_256 = 0
                                            uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) = 0
                                            sub_17901696[arg1][arg2] = 0
                                            return 0
                                        else:
                                            return 0
                        else:
                            if tx.origin == owner:
                                if sub_17901696[arg1][arg2]:
                                    if sub_b1be9407[arg3].field_0:
                                        require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                        idx = 0
                                        while uint8(idx) < uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                                            mem[0] = uint8(idx)
                                            mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                                            if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 != sub_b1be9407[arg3].field_0:
                                                idx = idx + 1
                                                continue 
                                            if uint8(idx) >= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                                                stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = 0
                                            else:
                                                stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0
                                                stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = 0
                                            sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                                            if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) < 1:
                                                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                                sub_a09a4221[stor5[arg1][arg2]].field_0 = 0
                                                sub_a09a4221[stor5[arg1][arg2]].field_256 = 0
                                                uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) = 0
                                                sub_17901696[arg1][arg2] = 0
                                                return 0
                                            else:
                                                return 0
                        return 0
    if msg.sender == owner:
        if sub_17901696[arg1][arg2]:
            if sub_b1be9407[arg3].field_0:
                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                idx = 0
                while uint8(idx) < uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                    mem[0] = uint8(idx)
                    mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                    if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 != sub_b1be9407[arg3].field_0:
                        idx = idx + 1
                        continue 
                    if uint8(idx) >= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                        stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = 0
                    else:
                        stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0
                        stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = 0
                    sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                    if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) < 1:
                        require sub_17901696[arg1][arg2] < sub_a09a4221.length
                        sub_a09a4221[stor5[arg1][arg2]].field_0 = 0
                        sub_a09a4221[stor5[arg1][arg2]].field_256 = 0
                        uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) = 0
                        sub_17901696[arg1][arg2] = 0
                        return 0
                    else:
                        return 0
    else:
        if tx.origin == owner:
            if sub_17901696[arg1][arg2]:
                if sub_b1be9407[arg3].field_0:
                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                    idx = 0
                    while uint8(idx) < uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                        mem[0] = uint8(idx)
                        mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                        if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 != sub_b1be9407[arg3].field_0:
                            idx = idx + 1
                            continue 
                        if uint8(idx) >= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                            stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = 0
                        else:
                            stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 = stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0
                            stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = 0
                        sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                        if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) < 1:
                            require sub_17901696[arg1][arg2] < sub_a09a4221.length
                            sub_a09a4221[stor5[arg1][arg2]].field_0 = 0
                            sub_a09a4221[stor5[arg1][arg2]].field_256 = 0
                            uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) = 0
                            sub_17901696[arg1][arg2] = 0
                            return 0
                        else:
                            return 0
    return 0
}

function sub_21fb618e(?) payable {
    if sub_b1be9407[arg1].field_0 <= 0:
        if msg.sender == owner:
            if not sub_b1be9407[arg1].field_0:
                return -1
            if not sub_b1be9407[arg3].field_0:
                return -1
            if arg1 == arg3:
                return -1
            if sub_17901696[arg1][arg2] > 0:
                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) > 0:
                    if sub_b1be9407[arg3].field_0:
                        if sub_17901696[arg1][arg2]:
                            require sub_17901696[arg1][arg2] < sub_a09a4221.length
                            idx = var27001
                            while uint8(idx) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                                if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 == sub_b1be9407[arg3].field_0:
                                    return -2
                                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                mem[0] = 6
                                idx = idx + 1
                                continue 
                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                    sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) + 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                    stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = sub_b1be9407[arg3].field_0
                    return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 6))))))
        else:
            if owner != tx.origin:
                return 0
            if not sub_b1be9407[arg1].field_0:
                return -1
            if not sub_b1be9407[arg3].field_0:
                return -1
            if arg1 == arg3:
                return -1
            if sub_17901696[arg1][arg2] > 0:
                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) > 0:
                    if sub_b1be9407[arg3].field_0:
                        if sub_17901696[arg1][arg2]:
                            require sub_17901696[arg1][arg2] < sub_a09a4221.length
                            idx = var28001
                            while uint8(idx) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                                if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 == sub_b1be9407[arg3].field_0:
                                    return -2
                                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                mem[0] = 6
                                idx = idx + 1
                                continue 
                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                    sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) + 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                    stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = sub_b1be9407[arg3].field_0
                    return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 6))))))
        idx = 1
        while idx < sub_a09a4221.length:
            mem[0] = 6
            if sub_a09a4221[idx].field_0:
                idx = idx + 1
                continue 
            if idx:
                require idx < sub_a09a4221.length
                sub_a09a4221[idx].field_0 = sha3(arg1, arg2)
                sub_a09a4221[idx].field_256 = arg1
                uint8(sub_a09a4221[idx].field_512) = 0
                sub_a09a4221[idx].field_768 % 1 = 0
                sub_17901696[arg1][arg2] = idx
                sub_a09a4221[idx].field_512 = uint8(sub_a09a4221[idx].field_512) + 1 or Mask(248, 8, sub_a09a4221[idx].field_512)
                stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[idx].field_512)].field_0 = sub_b1be9407[arg3].field_0
                return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'sub_a09a4221', 6))))))
            sub_a09a4221.length++
            if not sub_a09a4221.length <= sub_a09a4221.length + 1:
                idx = sha3(6) + (4 * sub_a09a4221.length + 1)
                while sha3(6) + (4 * sub_a09a4221.length) > idx:
                    stor[idx] = 0
                    sub_b1be9407[idx].field_0 = 0
                    uint8(nodes[idx]) = 0
                    idx = idx + 1
                    continue 
            require sub_a09a4221.length < sub_a09a4221.length
            sub_a09a4221[sub_a09a4221.length].field_0 = sha3(arg1, arg2)
            sub_a09a4221[sub_a09a4221.length].field_256 = arg1
            uint8(sub_a09a4221[sub_a09a4221.length].field_512) = 0
            sub_a09a4221[sub_a09a4221.length].field_768 % 1 = 0
            sub_17901696[arg1][arg2] = sub_a09a4221.length
            sub_a09a4221[sub_a09a4221.length].field_512 = uint8(sub_a09a4221[sub_a09a4221.length].field_512) + 1 or Mask(248, 8, sub_a09a4221[sub_a09a4221.length].field_512)
            stor[(4 * sub_a09a4221.length) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[sub_a09a4221.length].field_512)].field_0 = sub_b1be9407[arg3].field_0
            return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('stor', ('length', ('name', 'sub_a09a4221', 6)))), ('name', 'sub_a09a4221', 6))))))
        sub_a09a4221.length++
        if not sub_a09a4221.length <= sub_a09a4221.length + 1:
            idx = 4 * sub_a09a4221.length + 1
            while 4 * sub_a09a4221.length > idx:
                sub_a09a4221[idx].field_0 = 0
                sub_a09a4221[idx].field_256 = 0
                uint8(sub_a09a4221[idx].field_512) = 0
                idx = idx + 1
                continue 
    else:
        require sub_b1be9407[arg1].field_0 < owners.length
        if address(owners[stor1[arg1].field_0]) == msg.sender:
            if not sub_b1be9407[arg1].field_0:
                return -1
            if not sub_b1be9407[arg3].field_0:
                return -1
            if arg1 == arg3:
                return -1
            if sub_17901696[arg1][arg2] > 0:
                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) > 0:
                    if sub_b1be9407[arg3].field_0:
                        if sub_17901696[arg1][arg2]:
                            require sub_17901696[arg1][arg2] < sub_a09a4221.length
                            idx = var28001
                            while uint8(idx) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                                if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 == sub_b1be9407[arg3].field_0:
                                    return -2
                                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                mem[0] = 6
                                idx = idx + 1
                                continue 
                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                    sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) + 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                    stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = sub_b1be9407[arg3].field_0
                    return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 6))))))
            idx = 1
            while idx < sub_a09a4221.length:
                mem[0] = 6
                if sub_a09a4221[idx].field_0:
                    idx = idx + 1
                    continue 
                if idx:
                    require idx < sub_a09a4221.length
                    sub_a09a4221[idx].field_0 = sha3(arg1, arg2)
                    sub_a09a4221[idx].field_256 = arg1
                    uint8(sub_a09a4221[idx].field_512) = 0
                    sub_a09a4221[idx].field_768 % 1 = 0
                    sub_17901696[arg1][arg2] = idx
                    sub_a09a4221[idx].field_512 = uint8(sub_a09a4221[idx].field_512) + 1 or Mask(248, 8, sub_a09a4221[idx].field_512)
                    stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[idx].field_512)].field_0 = sub_b1be9407[arg3].field_0
                    return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'sub_a09a4221', 6))))))
                sub_a09a4221.length++
                if not sub_a09a4221.length <= sub_a09a4221.length + 1:
                    idx = sha3(6) + (4 * sub_a09a4221.length + 1)
                    while sha3(6) + (4 * sub_a09a4221.length) > idx:
                        stor[idx] = 0
                        sub_b1be9407[idx].field_0 = 0
                        uint8(nodes[idx]) = 0
                        idx = idx + 1
                        continue 
                require sub_a09a4221.length < sub_a09a4221.length
                sub_a09a4221[sub_a09a4221.length].field_0 = sha3(arg1, arg2)
                sub_a09a4221[sub_a09a4221.length].field_256 = arg1
                uint8(sub_a09a4221[sub_a09a4221.length].field_512) = 0
                sub_a09a4221[sub_a09a4221.length].field_768 % 1 = 0
                sub_17901696[arg1][arg2] = sub_a09a4221.length
                sub_a09a4221[sub_a09a4221.length].field_512 = uint8(sub_a09a4221[sub_a09a4221.length].field_512) + 1 or Mask(248, 8, sub_a09a4221[sub_a09a4221.length].field_512)
                stor[(4 * sub_a09a4221.length) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[sub_a09a4221.length].field_512)].field_0 = sub_b1be9407[arg3].field_0
                return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('stor', ('length', ('name', 'sub_a09a4221', 6)))), ('name', 'sub_a09a4221', 6))))))
            sub_a09a4221.length++
            if not sub_a09a4221.length <= sub_a09a4221.length + 1:
                idx = 4 * sub_a09a4221.length + 1
                while 4 * sub_a09a4221.length > idx:
                    sub_a09a4221[idx].field_0 = 0
                    sub_a09a4221[idx].field_256 = 0
                    uint8(sub_a09a4221[idx].field_512) = 0
                    idx = idx + 1
                    continue 
        else:
            if msg.sender == owner:
                if not sub_b1be9407[arg1].field_0:
                    return -1
                if not sub_b1be9407[arg3].field_0:
                    return -1
                if arg1 == arg3:
                    return -1
                if sub_17901696[arg1][arg2] > 0:
                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                    if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) > 0:
                        if sub_b1be9407[arg3].field_0:
                            if sub_17901696[arg1][arg2]:
                                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                idx = var31001
                                while uint8(idx) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                    mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                                    if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 == sub_b1be9407[arg3].field_0:
                                        return -2
                                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    continue 
                        require sub_17901696[arg1][arg2] < sub_a09a4221.length
                        sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) + 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                        stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = sub_b1be9407[arg3].field_0
                        return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 6))))))
            else:
                if owner != tx.origin:
                    return 0
                if not sub_b1be9407[arg1].field_0:
                    return -1
                if not sub_b1be9407[arg3].field_0:
                    return -1
                if arg1 == arg3:
                    return -1
                if sub_17901696[arg1][arg2] > 0:
                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                    if uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) > 0:
                        if sub_b1be9407[arg3].field_0:
                            if sub_17901696[arg1][arg2]:
                                require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                idx = var32001
                                while uint8(idx) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_512):
                                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                    mem[32] = (4 * sub_17901696[arg1][arg2]) + sha3(6) + 3
                                    if stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][idx << 248].field_0 == sub_b1be9407[arg3].field_0:
                                        return -2
                                    require sub_17901696[arg1][arg2] < sub_a09a4221.length
                                    mem[0] = 6
                                    idx = idx + 1
                                    continue 
                        require sub_17901696[arg1][arg2] < sub_a09a4221.length
                        sub_a09a4221[stor5[arg1][arg2]].field_512 = uint8(sub_a09a4221[stor5[arg1][arg2]].field_512) + 1 or Mask(248, 8, sub_a09a4221[stor5[arg1][arg2]].field_512)
                        stor[(4 * stor5[arg1][arg2]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[arg1][arg2]].field_512)].field_0 = sub_b1be9407[arg3].field_0
                        return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 6))))))
            idx = 1
            while idx < sub_a09a4221.length:
                mem[0] = 6
                if sub_a09a4221[idx].field_0:
                    idx = idx + 1
                    continue 
                if idx:
                    require idx < sub_a09a4221.length
                    sub_a09a4221[idx].field_0 = sha3(arg1, arg2)
                    sub_a09a4221[idx].field_256 = arg1
                    uint8(sub_a09a4221[idx].field_512) = 0
                    sub_a09a4221[idx].field_768 % 1 = 0
                    sub_17901696[arg1][arg2] = idx
                    sub_a09a4221[idx].field_512 = uint8(sub_a09a4221[idx].field_512) + 1 or Mask(248, 8, sub_a09a4221[idx].field_512)
                    stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[idx].field_512)].field_0 = sub_b1be9407[arg3].field_0
                    return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'sub_a09a4221', 6))))))
                sub_a09a4221.length++
                if not sub_a09a4221.length <= sub_a09a4221.length + 1:
                    idx = sha3(6) + (4 * sub_a09a4221.length + 1)
                    while sha3(6) + (4 * sub_a09a4221.length) > idx:
                        stor[idx] = 0
                        sub_b1be9407[idx].field_0 = 0
                        uint8(nodes[idx]) = 0
                        idx = idx + 1
                        continue 
                require sub_a09a4221.length < sub_a09a4221.length
                sub_a09a4221[sub_a09a4221.length].field_0 = sha3(arg1, arg2)
                sub_a09a4221[sub_a09a4221.length].field_256 = arg1
                uint8(sub_a09a4221[sub_a09a4221.length].field_512) = 0
                sub_a09a4221[sub_a09a4221.length].field_768 % 1 = 0
                sub_17901696[arg1][arg2] = sub_a09a4221.length
                sub_a09a4221[sub_a09a4221.length].field_512 = uint8(sub_a09a4221[sub_a09a4221.length].field_512) + 1 or Mask(248, 8, sub_a09a4221[sub_a09a4221.length].field_512)
                stor[(4 * sub_a09a4221.length) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[sub_a09a4221.length].field_512)].field_0 = sub_b1be9407[arg3].field_0
                return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('stor', ('length', ('name', 'sub_a09a4221', 6)))), ('name', 'sub_a09a4221', 6))))))
            sub_a09a4221.length++
            if not sub_a09a4221.length <= sub_a09a4221.length + 1:
                idx = 4 * sub_a09a4221.length + 1
                while 4 * sub_a09a4221.length > idx:
                    sub_a09a4221[idx].field_0 = 0
                    sub_a09a4221[idx].field_256 = 0
                    uint8(sub_a09a4221[idx].field_512) = 0
                    idx = idx + 1
                    continue 
    require sub_a09a4221.length < sub_a09a4221.length
    sub_a09a4221[sub_a09a4221.length].field_0 = sha3(arg1, arg2)
    sub_a09a4221[sub_a09a4221.length].field_256 = arg1
    uint8(sub_a09a4221[sub_a09a4221.length].field_512) = 0
    sub_a09a4221[sub_a09a4221.length].field_768 % 1 = 0
    sub_17901696[arg1][arg2] = sub_a09a4221.length
    sub_a09a4221[sub_a09a4221.length].field_512 = uint8(sub_a09a4221[sub_a09a4221.length].field_512) + 1 or Mask(248, 8, sub_a09a4221[sub_a09a4221.length].field_512)
    stor[(4 * sub_a09a4221.length) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[sub_a09a4221.length].field_512)].field_0 = sub_b1be9407[arg3].field_0
    return ('signextend', 0, ('type', 8, ('field', 512, ('stor', ('array', ('mul', 4, ('stor', ('length', ('name', 'sub_a09a4221', 6)))), ('name', 'sub_a09a4221', 6))))))
}

function sub_16c58824(?) payable {
    if sub_b1be9407[arg1].field_0 <= 0:
        if msg.sender == owner:
            if sub_b1be9407[arg1].field_0:
                idx = 1
                while idx < sub_a09a4221.length:
                    require idx < sub_a09a4221.length
                    if sub_a09a4221[idx].field_256 != arg1:
                        mem[0] = 6
                        s = var32003
                        while uint8(s) <= uint8(sub_a09a4221[idx].field_512):
                            require idx < sub_a09a4221.length
                            mem[32] = (4 * idx) + sha3(6) + 3
                            require idx < sub_a09a4221.length
                            if stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][s << 248].field_0 == sub_b1be9407[arg1].field_0:
                                mem[32] = 1
                                if sub_17901696[stor6[idx].field_0]:
                                    if sub_b1be9407[arg1].field_0:
                                        require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                        t = 0
                                        while uint8(t) < uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                            mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                            if stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 != sub_b1be9407[arg1].field_0:
                                                mem[0] = 6
                                                t = t + 1
                                                continue 
                                            if uint8(t) >= uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = 0
                                            else:
                                                stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0
                                                mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0 = 0
                                            sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512 = uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)
                                            if uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) < 1:
                                                require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_0 = 0
                                                sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_256 = 0
                                                uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) = 0
                                                mem[32] = 5
                                                sub_17901696[stor6[idx].field_0] = 0
                                            require idx < sub_a09a4221.length
                                            mem[0] = 6
                                            s = s + 1
                                            continue 
                            mem[0] = 6
                            s = s + 1
                            continue 
                    else:
                        mem[32] = 5
                        sub_17901696[stor6[idx].field_0] = 0
                        mem[0] = 6
                        sub_a09a4221[idx].field_0 = 0
                        sub_a09a4221[idx].field_256 = 0
                        uint8(sub_a09a4221[idx].field_512) = 0
                    idx = idx + 1
                    continue 
                require sub_b1be9407[arg1].field_0 < nodes.length
                uint256(nodes[stor1[arg1].field_0]) = 0
                require sub_b1be9407[arg1].field_0 < sub_a6a8cc00.length
                address(sub_a6a8cc00[stor1[arg1].field_0]) = 0
                require sub_b1be9407[arg1].field_0 < owners.length
                address(owners[stor1[arg1].field_0]) = 0
                sub_b1be9407[arg1].field_0 = 0
        else:
            if tx.origin == owner:
                if sub_b1be9407[arg1].field_0:
                    idx = 1
                    while idx < sub_a09a4221.length:
                        require idx < sub_a09a4221.length
                        if sub_a09a4221[idx].field_256 != arg1:
                            mem[0] = 6
                            s = var33003
                            while uint8(s) <= uint8(sub_a09a4221[idx].field_512):
                                require idx < sub_a09a4221.length
                                mem[32] = (4 * idx) + sha3(6) + 3
                                require idx < sub_a09a4221.length
                                if stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][s << 248].field_0 == sub_b1be9407[arg1].field_0:
                                    mem[32] = 1
                                    if sub_17901696[stor6[idx].field_0]:
                                        if sub_b1be9407[arg1].field_0:
                                            require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                            t = 0
                                            while uint8(t) < uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                if stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 != sub_b1be9407[arg1].field_0:
                                                    mem[0] = 6
                                                    t = t + 1
                                                    continue 
                                                if uint8(t) >= uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                    mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                    stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = 0
                                                else:
                                                    stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0
                                                    mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                    stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0 = 0
                                                sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512 = uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)
                                                if uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) < 1:
                                                    require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                    sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_0 = 0
                                                    sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_256 = 0
                                                    uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) = 0
                                                    mem[32] = 5
                                                    sub_17901696[stor6[idx].field_0] = 0
                                                require idx < sub_a09a4221.length
                                                mem[0] = 6
                                                s = s + 1
                                                continue 
                                mem[0] = 6
                                s = s + 1
                                continue 
                        else:
                            mem[32] = 5
                            sub_17901696[stor6[idx].field_0] = 0
                            mem[0] = 6
                            sub_a09a4221[idx].field_0 = 0
                            sub_a09a4221[idx].field_256 = 0
                            uint8(sub_a09a4221[idx].field_512) = 0
                        idx = idx + 1
                        continue 
                    require sub_b1be9407[arg1].field_0 < nodes.length
                    uint256(nodes[stor1[arg1].field_0]) = 0
                    require sub_b1be9407[arg1].field_0 < sub_a6a8cc00.length
                    address(sub_a6a8cc00[stor1[arg1].field_0]) = 0
                    require sub_b1be9407[arg1].field_0 < owners.length
                    address(owners[stor1[arg1].field_0]) = 0
                    sub_b1be9407[arg1].field_0 = 0
    else:
        require sub_b1be9407[arg1].field_0 < owners.length
        if address(owners[stor1[arg1].field_0]) != msg.sender:
            if msg.sender == owner:
                if sub_b1be9407[arg1].field_0:
                    idx = 1
                    while idx < sub_a09a4221.length:
                        require idx < sub_a09a4221.length
                        if sub_a09a4221[idx].field_256 != arg1:
                            mem[0] = 6
                            s = var36003
                            while uint8(s) <= uint8(sub_a09a4221[idx].field_512):
                                require idx < sub_a09a4221.length
                                mem[32] = (4 * idx) + sha3(6) + 3
                                require idx < sub_a09a4221.length
                                if stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][s << 248].field_0 == sub_b1be9407[arg1].field_0:
                                    mem[32] = 1
                                    if sub_17901696[stor6[idx].field_0]:
                                        if sub_b1be9407[arg1].field_0:
                                            require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                            t = 0
                                            while uint8(t) < uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                if stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 != sub_b1be9407[arg1].field_0:
                                                    mem[0] = 6
                                                    t = t + 1
                                                    continue 
                                                if uint8(t) >= uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                    mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                    stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = 0
                                                else:
                                                    stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0
                                                    mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                    stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0 = 0
                                                sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512 = uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)
                                                if uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) < 1:
                                                    require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                    sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_0 = 0
                                                    sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_256 = 0
                                                    uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) = 0
                                                    mem[32] = 5
                                                    sub_17901696[stor6[idx].field_0] = 0
                                                require idx < sub_a09a4221.length
                                                mem[0] = 6
                                                s = s + 1
                                                continue 
                                mem[0] = 6
                                s = s + 1
                                continue 
                        else:
                            mem[32] = 5
                            sub_17901696[stor6[idx].field_0] = 0
                            mem[0] = 6
                            sub_a09a4221[idx].field_0 = 0
                            sub_a09a4221[idx].field_256 = 0
                            uint8(sub_a09a4221[idx].field_512) = 0
                        idx = idx + 1
                        continue 
                    require sub_b1be9407[arg1].field_0 < nodes.length
                    uint256(nodes[stor1[arg1].field_0]) = 0
                    require sub_b1be9407[arg1].field_0 < sub_a6a8cc00.length
                    address(sub_a6a8cc00[stor1[arg1].field_0]) = 0
                    require sub_b1be9407[arg1].field_0 < owners.length
                    address(owners[stor1[arg1].field_0]) = 0
                    sub_b1be9407[arg1].field_0 = 0
            else:
                if tx.origin == owner:
                    if sub_b1be9407[arg1].field_0:
                        idx = 1
                        while idx < sub_a09a4221.length:
                            require idx < sub_a09a4221.length
                            if sub_a09a4221[idx].field_256 != arg1:
                                mem[0] = 6
                                s = var37003
                                while uint8(s) <= uint8(sub_a09a4221[idx].field_512):
                                    require idx < sub_a09a4221.length
                                    mem[32] = (4 * idx) + sha3(6) + 3
                                    require idx < sub_a09a4221.length
                                    if stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][s << 248].field_0 == sub_b1be9407[arg1].field_0:
                                        mem[32] = 1
                                        if sub_17901696[stor6[idx].field_0]:
                                            if sub_b1be9407[arg1].field_0:
                                                require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                t = 0
                                                while uint8(t) < uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                    mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                    if stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 != sub_b1be9407[arg1].field_0:
                                                        mem[0] = 6
                                                        t = t + 1
                                                        continue 
                                                    if uint8(t) >= uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                        mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                        stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = 0
                                                    else:
                                                        stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0
                                                        mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                        stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0 = 0
                                                    sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512 = uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)
                                                    if uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) < 1:
                                                        require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                        sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_0 = 0
                                                        sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_256 = 0
                                                        uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) = 0
                                                        mem[32] = 5
                                                        sub_17901696[stor6[idx].field_0] = 0
                                                    require idx < sub_a09a4221.length
                                                    mem[0] = 6
                                                    s = s + 1
                                                    continue 
                                    mem[0] = 6
                                    s = s + 1
                                    continue 
                            else:
                                mem[32] = 5
                                sub_17901696[stor6[idx].field_0] = 0
                                mem[0] = 6
                                sub_a09a4221[idx].field_0 = 0
                                sub_a09a4221[idx].field_256 = 0
                                uint8(sub_a09a4221[idx].field_512) = 0
                            idx = idx + 1
                            continue 
                        require sub_b1be9407[arg1].field_0 < nodes.length
                        uint256(nodes[stor1[arg1].field_0]) = 0
                        require sub_b1be9407[arg1].field_0 < sub_a6a8cc00.length
                        address(sub_a6a8cc00[stor1[arg1].field_0]) = 0
                        require sub_b1be9407[arg1].field_0 < owners.length
                        address(owners[stor1[arg1].field_0]) = 0
                        sub_b1be9407[arg1].field_0 = 0
        else:
            if sub_b1be9407[arg1].field_0:
                idx = 1
                while idx < sub_a09a4221.length:
                    require idx < sub_a09a4221.length
                    if sub_a09a4221[idx].field_256 != arg1:
                        mem[0] = 6
                        s = var33003
                        while uint8(s) <= uint8(sub_a09a4221[idx].field_512):
                            require idx < sub_a09a4221.length
                            mem[32] = (4 * idx) + sha3(6) + 3
                            require idx < sub_a09a4221.length
                            if stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][s << 248].field_0 == sub_b1be9407[arg1].field_0:
                                mem[32] = 1
                                if sub_17901696[stor6[idx].field_0]:
                                    if sub_b1be9407[arg1].field_0:
                                        require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                        t = 0
                                        while uint8(t) < uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                            mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                            if stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 != sub_b1be9407[arg1].field_0:
                                                mem[0] = 6
                                                t = t + 1
                                                continue 
                                            if uint8(t) >= uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = 0
                                            else:
                                                stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0
                                                mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0 = 0
                                            sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512 = uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)
                                            if uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) < 1:
                                                require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_0 = 0
                                                sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_256 = 0
                                                uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) = 0
                                                mem[32] = 5
                                                sub_17901696[stor6[idx].field_0] = 0
                                            require idx < sub_a09a4221.length
                                            mem[0] = 6
                                            s = s + 1
                                            continue 
                            mem[0] = 6
                            s = s + 1
                            continue 
                    else:
                        mem[32] = 5
                        sub_17901696[stor6[idx].field_0] = 0
                        mem[0] = 6
                        sub_a09a4221[idx].field_0 = 0
                        sub_a09a4221[idx].field_256 = 0
                        uint8(sub_a09a4221[idx].field_512) = 0
                    idx = idx + 1
                    continue 
                require sub_b1be9407[arg1].field_0 < nodes.length
                uint256(nodes[stor1[arg1].field_0]) = 0
                require sub_b1be9407[arg1].field_0 < sub_a6a8cc00.length
                address(sub_a6a8cc00[stor1[arg1].field_0]) = 0
                require sub_b1be9407[arg1].field_0 < owners.length
                address(owners[stor1[arg1].field_0]) = 0
                sub_b1be9407[arg1].field_0 = 0
                if msg.sender == owner:
                    if sub_b1be9407[arg1].field_0:
                        idx = 1
                        while idx < sub_a09a4221.length:
                            require idx < sub_a09a4221.length
                            if sub_a09a4221[idx].field_256 != arg1:
                                mem[0] = 6
                                s = var47003
                                while uint8(s) <= uint8(sub_a09a4221[idx].field_512):
                                    require idx < sub_a09a4221.length
                                    mem[32] = (4 * idx) + sha3(6) + 3
                                    require idx < sub_a09a4221.length
                                    if stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][s << 248].field_0 == sub_b1be9407[arg1].field_0:
                                        mem[32] = 1
                                        if sub_17901696[stor6[idx].field_0]:
                                            if sub_b1be9407[arg1].field_0:
                                                require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                t = 0
                                                while uint8(t) < uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                    mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                    if stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 != sub_b1be9407[arg1].field_0:
                                                        mem[0] = 6
                                                        t = t + 1
                                                        continue 
                                                    if uint8(t) >= uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                        mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                        stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = 0
                                                    else:
                                                        stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0
                                                        mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                        stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0 = 0
                                                    sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512 = uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)
                                                    if uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) < 1:
                                                        require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                        sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_0 = 0
                                                        sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_256 = 0
                                                        uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) = 0
                                                        mem[32] = 5
                                                        sub_17901696[stor6[idx].field_0] = 0
                                                    require idx < sub_a09a4221.length
                                                    mem[0] = 6
                                                    s = s + 1
                                                    continue 
                                    mem[0] = 6
                                    s = s + 1
                                    continue 
                            else:
                                mem[32] = 5
                                sub_17901696[stor6[idx].field_0] = 0
                                mem[0] = 6
                                sub_a09a4221[idx].field_0 = 0
                                sub_a09a4221[idx].field_256 = 0
                                uint8(sub_a09a4221[idx].field_512) = 0
                            idx = idx + 1
                            continue 
                        require sub_b1be9407[arg1].field_0 < nodes.length
                        uint256(nodes[stor1[arg1].field_0]) = 0
                        require sub_b1be9407[arg1].field_0 < sub_a6a8cc00.length
                        address(sub_a6a8cc00[stor1[arg1].field_0]) = 0
                        require sub_b1be9407[arg1].field_0 < owners.length
                        address(owners[stor1[arg1].field_0]) = 0
                        sub_b1be9407[arg1].field_0 = 0
                else:
                    if tx.origin == owner:
                        if sub_b1be9407[arg1].field_0:
                            idx = 1
                            while idx < sub_a09a4221.length:
                                require idx < sub_a09a4221.length
                                if sub_a09a4221[idx].field_256 != arg1:
                                    mem[0] = 6
                                    s = var48003
                                    while uint8(s) <= uint8(sub_a09a4221[idx].field_512):
                                        require idx < sub_a09a4221.length
                                        mem[32] = (4 * idx) + sha3(6) + 3
                                        require idx < sub_a09a4221.length
                                        if stor[(4 * idx) + ('name', 'sub_a09a4221', 6) + 3][s << 248].field_0 == sub_b1be9407[arg1].field_0:
                                            mem[32] = 1
                                            if sub_17901696[stor6[idx].field_0]:
                                                if sub_b1be9407[arg1].field_0:
                                                    require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                    t = 0
                                                    while uint8(t) < uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                        mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                        if stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 != sub_b1be9407[arg1].field_0:
                                                            mem[0] = 6
                                                            t = t + 1
                                                            continue 
                                                        if uint8(t) >= uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512):
                                                            mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                            stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = 0
                                                        else:
                                                            stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][t << 248].field_0 = stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0
                                                            mem[32] = (4 * sub_17901696[stor6[idx].field_0]) + sha3(6) + 3
                                                            stor[(4 * stor5[sub_a09a4221[idx].field_0]) + ('name', 'sub_a09a4221', 6) + 3][uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)].field_0 = 0
                                                        sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512 = uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) - 1 or Mask(248, 8, sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512)
                                                        if uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) < 1:
                                                            require sub_17901696[stor6[idx].field_0] < sub_a09a4221.length
                                                            sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_0 = 0
                                                            sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_256 = 0
                                                            uint8(sub_a09a4221[stor5[sub_a09a4221[idx].field_0]].field_512) = 0
                                                            mem[32] = 5
                                                            sub_17901696[stor6[idx].field_0] = 0
                                                        require idx < sub_a09a4221.length
                                                        mem[0] = 6
                                                        s = s + 1
                                                        continue 
                                        mem[0] = 6
                                        s = s + 1
                                        continue 
                                else:
                                    mem[32] = 5
                                    sub_17901696[stor6[idx].field_0] = 0
                                    mem[0] = 6
                                    sub_a09a4221[idx].field_0 = 0
                                    sub_a09a4221[idx].field_256 = 0
                                    uint8(sub_a09a4221[idx].field_512) = 0
                                idx = idx + 1
                                continue 
                            require sub_b1be9407[arg1].field_0 < nodes.length
                            uint256(nodes[stor1[arg1].field_0]) = 0
                            require sub_b1be9407[arg1].field_0 < sub_a6a8cc00.length
                            address(sub_a6a8cc00[stor1[arg1].field_0]) = 0
                            require sub_b1be9407[arg1].field_0 < owners.length
                            address(owners[stor1[arg1].field_0]) = 0
                            sub_b1be9407[arg1].field_0 = 0
    return 0
}



}
