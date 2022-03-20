contract main {


// =======================  Init code  ======================


uint256 stor0;
array of uint256 stor1;
array of uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    stor3++
    if not stor3 <= stor3 + 1:
        idx = stor3 - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4
        while stor3 - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor4++
    if not stor4 <= stor4 + 1:
        idx = stor4 - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e64
        while stor4 - 0x75ca53043ea007e5c65182cbb028f60d7179ff4b55739a3949b401801c942e65 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
    stor6++
    if not stor6 <= stor6 + 1:
        idx = (4 * stor6 + 1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1
        while (4 * stor6) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
            stor[idx] = 0
            stor1[idx] = 0
            uint8(stor2[idx]) = 0
            idx = idx + 1
            continue 
    return code.data[396 len 5559]
}



// =====================  Runtime code  =====================


const sub_7bbcf787(?) = 0


address owner;
mapping of struct sub_b1be9407;
array of uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
mapping of uint256 sub_17901696;
uint256 stor6;
array of struct sub_a09a4221;
array of uint256 stor29835546399380531652508273789822998462594250691141507370188463369780184185869;
array of uint256 stor29835546399380531652508273789822998462594250691141507370188463369780184185870;
array of struct stor29835546399380531652508273789822998462594250691141507370188463369780184185871;
array of uint256 stor30287859247963798040881597950013185602646086568741665823467594557311094848525;
array of uint256 nodes;
array of address sub_a6a8cc00;

function owners(uint256 arg1) payable {
    require arg1 < stor4.length
    return address(stor[code.data[5527 len 32] + arg1])
}

function sub_17901696(?) payable {
    return sub_17901696[arg1]
}

function nodes(uint256 arg1) payable {
    require arg1 < stor2.length
    return nodes[arg1]
}

function owner() payable {
    return owner
}

function sub_a09a4221(?) payable {
    require sub_17901696[arg1][arg2] < stor6
    return uint8(sub_a09a4221[stor5[arg1][arg2]].field_0)
}

function sub_a6a8cc00(?) payable {
    require sub_17901696[arg1][arg2] < stor6
    require uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][arg3]) < stor3.length
    return address(sub_a6a8cc00[uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][arg3])])
}

function sub_b1be9407(?) payable {
    return uint256(sub_b1be9407[arg1].field_0)
}

function addresses(uint256 arg1) payable {
    require arg1 < stor3.length
    return address(sub_a6a8cc00[arg1])
}

function _fallback() payable {
  stop
}

function sub_fd9b2dd2(?) payable {
    require arg1 < stor6
    return stor41F6[arg1], stor42F6[arg1], uint8(sub_a09a4221[arg1].field_0)
}

function getNodeAddress(bytes32 arg1) payable {
    if uint256(sub_b1be9407[arg1].field_0) <= 0:
        return 0
    require uint256(sub_b1be9407[arg1].field_0) < stor3.length
    return address(sub_a6a8cc00[uint256(stor1[arg1].field_0)])
}

function sub_5a5f0c30(?) payable {
    if uint256(sub_b1be9407[arg1].field_0) <= 0:
        if owner != msg.sender:
            if owner != tx.origin:
                return 0
    else:
        require uint256(sub_b1be9407[arg1].field_0) < stor4.length
        if address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) != msg.sender:
            if owner != msg.sender:
                if owner != tx.origin:
                    return 0
    if not uint256(sub_b1be9407[arg1].field_0):
        return 0
    require uint256(sub_b1be9407[arg1].field_0) < stor3.length
    uint256(sub_a6a8cc00[uint256(stor1[arg1].field_0)]) = arg2 or Mask(96, 160, uint256(sub_a6a8cc00[uint256(stor1[arg1].field_0)]))
    return 1
}

function hasRelation(bytes32 arg1, bytes32 arg2, address arg3) payable {
    require sub_17901696[arg1][arg2] < stor6
    idx = 1
    while uint8(idx) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
        mem[96] = arg1
        mem[128] = arg2
        require sub_17901696[arg1][arg2] < stor6
        mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
        require uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(idx)]) < stor3.length
        mem[0] = 3
        if arg3 != address(sub_a6a8cc00[uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(idx)])]):
            idx = idx + 1
            continue 
        return 1
    return 0
}

function sub_86d6d2ef(?) payable {
    if uint256(sub_b1be9407[arg3].field_0) != 0:
        if sub_17901696[arg1][arg2]:
            require sub_17901696[arg1][arg2] < stor6
            if uint8(var12003) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                require sub_17901696[arg1][arg2] < stor6
                if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var16004)]) == var16003:
                    return 1
                require sub_17901696[arg1][arg2] < stor6
                idx = var16004
                while uint8(idx + 1) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                    require sub_17901696[arg1][arg2] < stor6
                    mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                    if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(idx + 1)]) == uint256(sub_b1be9407[arg3].field_0):
                        return 1
                    require sub_17901696[arg1][arg2] < stor6
                    mem[0] = 6
                    idx = idx + 1
                    continue 
                return 0
            else:
                return 0
        else:
            return 0
    else:
        return 0
}

function addNode(bytes32 arg1, address arg2) payable {
    if uint256(sub_b1be9407[arg1].field_0) > 0:
        return 0
    idx = 1
    while uint8(idx) < stor2.length:
        mem[0] = 2
        if nodes[uint8(idx)]:
            idx = idx + 1
            continue 
        if uint8(idx) != 0:
            require uint8(idx) < stor2.length
            nodes[uint8(idx)] = arg1
            require uint8(idx) < stor3.length
            uint256(sub_a6a8cc00[uint8(idx)]) = arg2 or Mask(96, 160, uint256(sub_a6a8cc00[uint8(idx)]))
            require uint8(idx) < stor4.length
            uint256(stor[uint8(idx) + code.data[5527 len 32]]) = tx.origin or Mask(96, 160, uint256(stor[uint8(idx) + code.data[5527 len 32]]))
            uint8(sub_b1be9407[arg1].field_0) = uint8(idx)
            Mask(248, 0, sub_b1be9407[arg1].field_8) = 0
        else:
            stor2.length++
            if not stor2.length <= stor2.length + 1:
                idx = stor2.length + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b
                while stor2.length + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            stor3.length++
            if not stor3.length <= stor3.length + 1:
                idx = sha3(3) + stor3.length + 1
                while sha3(3) + stor3.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            stor4.length++
            if not stor4.length <= stor4.length + 1:
                idx = sha3(4) + stor4.length + 1
                while sha3(4) + stor4.length > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
            require stor2.length < stor2.length
            nodes[stor2.length] = arg1
            require stor2.length < stor3.length
            uint256(sub_a6a8cc00[stor2.length]) = arg2 or Mask(96, 160, uint256(sub_a6a8cc00[stor2.length]))
            require stor2.length < stor4.length
            uint256(stor[stor2.length + code.data[5527 len 32]]) = tx.origin or Mask(96, 160, uint256(stor[stor2.length + code.data[5527 len 32]]))
            uint256(sub_b1be9407[arg1].field_0) = stor2.length
        return 1
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = stor2.length + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5b
        while stor2.length + 0x56405787fa12a823e0f2b7631cc41b3ba8828b3321ca811111fa75cd3aa3bb5a > idx:
            uint256(stor[idx]) = 0
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
    require stor2.length < stor2.length
    nodes[stor2.length] = arg1
    require stor2.length < stor3.length
    uint256(sub_a6a8cc00[stor2.length]) = arg2 or Mask(96, 160, uint256(sub_a6a8cc00[stor2.length]))
    require stor2.length < stor4.length
    uint256(stor[stor2.length + code.data[5527 len 32]]) = tx.origin or Mask(96, 160, uint256(stor[stor2.length + code.data[5527 len 32]]))
    uint256(sub_b1be9407[arg1].field_0) = stor2.length
    return 1
}

function sub_fe280202(?) payable {
    if uint256(sub_b1be9407[arg1].field_0) > 0:
        require uint256(sub_b1be9407[arg1].field_0) < stor4.length
        if address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) == msg.sender:
            if sub_17901696[arg1][arg2] != 0:
                if uint256(sub_b1be9407[arg3].field_0) != 0:
                    require sub_17901696[arg1][arg2] < stor6
                    idx = 0
                    while uint8(idx) < uint8(stor41F6[stor5[arg1][arg2]].field_0):
                        mem[0] = uint8(idx)
                        mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                        if uint256(sub_b1be9407[arg3].field_0) != uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]):
                            idx = idx + 1
                            continue 
                        if uint8(idx) >= uint8(stor41F6[stor5[arg1][arg2]].field_0):
                            uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = 0
                        else:
                            uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)])
                            uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = 0
                        uint256(stor41F6[stor5[arg1][arg2]].field_0) = uint8(stor41F6[stor5[arg1][arg2]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[arg1][arg2]].field_0))
                        if uint8(stor41F6[stor5[arg1][arg2]].field_0) < 1:
                            require sub_17901696[arg1][arg2] < stor6
                            stor41F6[stor5[arg1][arg2]] = 0
                            stor42F6[stor5[arg1][arg2]] = 0
                            uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) = 0
                            sub_17901696[arg1][arg2] = 0
                        if msg.sender == owner:
                            if sub_17901696[arg1][arg2] != 0:
                                if uint256(sub_b1be9407[arg3].field_0) != 0:
                                    require sub_17901696[arg1][arg2] < stor6
                                    idx = 0
                                    while uint8(idx) < uint8(stor41F6[stor5[arg1][arg2]].field_0):
                                        mem[0] = uint8(idx)
                                        mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                        if uint256(sub_b1be9407[arg3].field_0) != uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]):
                                            idx = idx + 1
                                            continue 
                                        if uint8(idx) >= uint8(stor41F6[stor5[arg1][arg2]].field_0):
                                            uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = 0
                                        else:
                                            uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)])
                                            uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = 0
                                        uint256(stor41F6[stor5[arg1][arg2]].field_0) = uint8(stor41F6[stor5[arg1][arg2]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[arg1][arg2]].field_0))
                                        if uint8(stor41F6[stor5[arg1][arg2]].field_0) < 1:
                                            require sub_17901696[arg1][arg2] < stor6
                                            stor41F6[stor5[arg1][arg2]] = 0
                                            stor42F6[stor5[arg1][arg2]] = 0
                                            uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) = 0
                                            sub_17901696[arg1][arg2] = 0
                                            return 0
                                        else:
                                            return 0
                        else:
                            if tx.origin == owner:
                                if sub_17901696[arg1][arg2] != 0:
                                    if uint256(sub_b1be9407[arg3].field_0) != 0:
                                        require sub_17901696[arg1][arg2] < stor6
                                        idx = 0
                                        while uint8(idx) < uint8(stor41F6[stor5[arg1][arg2]].field_0):
                                            mem[0] = uint8(idx)
                                            mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                            if uint256(sub_b1be9407[arg3].field_0) != uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]):
                                                idx = idx + 1
                                                continue 
                                            if uint8(idx) >= uint8(stor41F6[stor5[arg1][arg2]].field_0):
                                                uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = 0
                                            else:
                                                uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)])
                                                uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = 0
                                            uint256(stor41F6[stor5[arg1][arg2]].field_0) = uint8(stor41F6[stor5[arg1][arg2]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[arg1][arg2]].field_0))
                                            if uint8(stor41F6[stor5[arg1][arg2]].field_0) < 1:
                                                require sub_17901696[arg1][arg2] < stor6
                                                stor41F6[stor5[arg1][arg2]] = 0
                                                stor42F6[stor5[arg1][arg2]] = 0
                                                uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) = 0
                                                sub_17901696[arg1][arg2] = 0
                                                return 0
                                            else:
                                                return 0
                        return 0
    if msg.sender == owner:
        if sub_17901696[arg1][arg2] != 0:
            if uint256(sub_b1be9407[arg3].field_0) != 0:
                require sub_17901696[arg1][arg2] < stor6
                idx = 0
                while uint8(idx) < uint8(stor41F6[stor5[arg1][arg2]].field_0):
                    mem[0] = uint8(idx)
                    mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                    if uint256(sub_b1be9407[arg3].field_0) != uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]):
                        idx = idx + 1
                        continue 
                    if uint8(idx) >= uint8(stor41F6[stor5[arg1][arg2]].field_0):
                        uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = 0
                    else:
                        uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)])
                        uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = 0
                    uint256(stor41F6[stor5[arg1][arg2]].field_0) = uint8(stor41F6[stor5[arg1][arg2]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[arg1][arg2]].field_0))
                    if uint8(stor41F6[stor5[arg1][arg2]].field_0) < 1:
                        require sub_17901696[arg1][arg2] < stor6
                        stor41F6[stor5[arg1][arg2]] = 0
                        stor42F6[stor5[arg1][arg2]] = 0
                        uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) = 0
                        sub_17901696[arg1][arg2] = 0
                        return 0
                    else:
                        return 0
    else:
        if tx.origin == owner:
            if sub_17901696[arg1][arg2] != 0:
                if uint256(sub_b1be9407[arg3].field_0) != 0:
                    require sub_17901696[arg1][arg2] < stor6
                    idx = 0
                    while uint8(idx) < uint8(stor41F6[stor5[arg1][arg2]].field_0):
                        mem[0] = uint8(idx)
                        mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                        if uint256(sub_b1be9407[arg3].field_0) != uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]):
                            idx = idx + 1
                            continue 
                        if uint8(idx) >= uint8(stor41F6[stor5[arg1][arg2]].field_0):
                            uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = 0
                        else:
                            uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][idx << 248]) = uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)])
                            uint256(stor[(4 * stor5[arg1][arg2]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = 0
                        uint256(stor41F6[stor5[arg1][arg2]].field_0) = uint8(stor41F6[stor5[arg1][arg2]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[arg1][arg2]].field_0))
                        if uint8(stor41F6[stor5[arg1][arg2]].field_0) < 1:
                            require sub_17901696[arg1][arg2] < stor6
                            stor41F6[stor5[arg1][arg2]] = 0
                            stor42F6[stor5[arg1][arg2]] = 0
                            uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) = 0
                            sub_17901696[arg1][arg2] = 0
                            return 0
                        else:
                            return 0
    return 0
}

function sub_21fb618e(?) payable {
    if uint256(sub_b1be9407[arg1].field_0) <= 0:
        if msg.sender == owner:
            if not uint256(sub_b1be9407[arg1].field_0):
                return -1
            if not uint256(sub_b1be9407[arg3].field_0):
                return -1
            if arg1 == arg3:
                return -1
            if sub_17901696[arg1][arg2] > 0:
                require sub_17901696[arg1][arg2] < stor6
                if uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) > 0:
                    if uint256(sub_b1be9407[arg3].field_0) != 0:
                        if sub_17901696[arg1][arg2]:
                            require sub_17901696[arg1][arg2] < stor6
                            if uint8(var24003) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                require sub_17901696[arg1][arg2] < stor6
                                if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var28004)]) == var28003:
                                    return -2
                                require sub_17901696[arg1][arg2] < stor6
                                idx = var28004
                                while uint8(idx + 1) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                    require sub_17901696[arg1][arg2] < stor6
                                    mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                    if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(idx + 1)]) == uint256(sub_b1be9407[arg3].field_0):
                                        return -2
                                    require sub_17901696[arg1][arg2] < stor6
                                    mem[0] = 6
                                    idx = idx + 1
                                    continue 
                    require sub_17901696[arg1][arg2] < stor6
                    uint256(sub_a09a4221[stor5[arg1][arg2]].field_0) = Mask(248, 0, sub_a09a4221[stor5[arg1][arg2]].field_8)
                    uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                    return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
        else:
            if owner != tx.origin:
                return 0
            if not uint256(sub_b1be9407[arg1].field_0):
                return -1
            if not uint256(sub_b1be9407[arg3].field_0):
                return -1
            if arg1 == arg3:
                return -1
            if sub_17901696[arg1][arg2] > 0:
                require sub_17901696[arg1][arg2] < stor6
                if uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) > 0:
                    if uint256(sub_b1be9407[arg3].field_0) != 0:
                        if sub_17901696[arg1][arg2]:
                            require sub_17901696[arg1][arg2] < stor6
                            if uint8(var25003) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                require sub_17901696[arg1][arg2] < stor6
                                if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var29004)]) == var29003:
                                    return -2
                                require sub_17901696[arg1][arg2] < stor6
                                idx = var29004
                                while uint8(idx + 1) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                    require sub_17901696[arg1][arg2] < stor6
                                    mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                    if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(idx + 1)]) == uint256(sub_b1be9407[arg3].field_0):
                                        return -2
                                    require sub_17901696[arg1][arg2] < stor6
                                    mem[0] = 6
                                    idx = idx + 1
                                    continue 
                    require sub_17901696[arg1][arg2] < stor6
                    uint256(sub_a09a4221[stor5[arg1][arg2]].field_0) = Mask(248, 0, sub_a09a4221[stor5[arg1][arg2]].field_8)
                    uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                    return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
        idx = 1
        while idx < stor6:
            mem[0] = 6
            if stor41F6[idx]:
                idx = idx + 1
                continue 
            if idx != 0:
                require idx < stor6
                stor41F6[idx] = sha3(arg1, arg2)
                stor41F6[idx] = arg1
                uint8(stor41F6[idx].field_0) = 0
                stor41F6[idx].field_256 % 1 = 0
                sub_17901696[arg1][arg2] = idx
                uint256(sub_a09a4221[idx].field_0) = Mask(248, 0, sub_a09a4221[idx].field_8)
                uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[idx].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
            stor6++
            if not stor6 <= stor6 + 1:
                idx = (4 * stor6 + 1) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                while (4 * stor6) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d > idx:
                    uint256(stor[idx]) = 0
                    uint256(sub_b1be9407[idx].field_0) = 0
                    stor2[idx] = 0
                    idx = idx + 1
                    continue 
            require stor6 < stor6
            stor41F6[stor6] = sha3(arg1, arg2)
            stor41F6[stor6] = arg1
            uint8(stor41F6[stor6].field_0) = 0
            stor41F6[stor6].field_256 % 1 = 0
            sub_17901696[arg1][arg2] = stor6
            uint256(sub_a09a4221[stor6].field_0) = Mask(248, 0, sub_a09a4221[stor6].field_8)
            uint256(stor[(4 * stor6) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[stor6].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
            return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('stor', ('name', 'stor6', 6))), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
    else:
        require uint256(sub_b1be9407[arg1].field_0) < stor4.length
        if address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) == msg.sender:
            if not uint256(sub_b1be9407[arg1].field_0):
                return -1
            if not uint256(sub_b1be9407[arg3].field_0):
                return -1
            if arg1 == arg3:
                return -1
            if sub_17901696[arg1][arg2] > 0:
                require sub_17901696[arg1][arg2] < stor6
                if uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) > 0:
                    if uint256(sub_b1be9407[arg3].field_0) != 0:
                        if sub_17901696[arg1][arg2]:
                            require sub_17901696[arg1][arg2] < stor6
                            if uint8(var24003) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                require sub_17901696[arg1][arg2] < stor6
                                if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var28004)]) == var28003:
                                    return -2
                                require sub_17901696[arg1][arg2] < stor6
                                idx = var28004
                                while uint8(idx + 1) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                    require sub_17901696[arg1][arg2] < stor6
                                    mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                    if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(idx + 1)]) == uint256(sub_b1be9407[arg3].field_0):
                                        return -2
                                    require sub_17901696[arg1][arg2] < stor6
                                    mem[0] = 6
                                    idx = idx + 1
                                    continue 
                    require sub_17901696[arg1][arg2] < stor6
                    uint256(sub_a09a4221[stor5[arg1][arg2]].field_0) = Mask(248, 0, sub_a09a4221[stor5[arg1][arg2]].field_8)
                    uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                    return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
            idx = 1
            while idx < stor6:
                mem[0] = 6
                if stor41F6[idx]:
                    idx = idx + 1
                    continue 
                if idx != 0:
                    require idx < stor6
                    stor41F6[idx] = sha3(arg1, arg2)
                    stor41F6[idx] = arg1
                    uint8(stor41F6[idx].field_0) = 0
                    stor41F6[idx].field_256 % 1 = 0
                    sub_17901696[arg1][arg2] = idx
                    uint256(sub_a09a4221[idx].field_0) = Mask(248, 0, sub_a09a4221[idx].field_8)
                    uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[idx].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                    return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
                stor6++
                if not stor6 <= stor6 + 1:
                    idx = (4 * stor6 + 1) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                    while (4 * stor6) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d > idx:
                        uint256(stor[idx]) = 0
                        uint256(sub_b1be9407[idx].field_0) = 0
                        stor2[idx] = 0
                        idx = idx + 1
                        continue 
                require stor6 < stor6
                stor41F6[stor6] = sha3(arg1, arg2)
                stor41F6[stor6] = arg1
                uint8(stor41F6[stor6].field_0) = 0
                stor41F6[stor6].field_256 % 1 = 0
                sub_17901696[arg1][arg2] = stor6
                uint256(sub_a09a4221[stor6].field_0) = Mask(248, 0, sub_a09a4221[stor6].field_8)
                uint256(stor[(4 * stor6) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[stor6].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('stor', ('name', 'stor6', 6))), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
        else:
            if msg.sender == owner:
                if not uint256(sub_b1be9407[arg1].field_0):
                    return -1
                if not uint256(sub_b1be9407[arg3].field_0):
                    return -1
                if arg1 == arg3:
                    return -1
                if sub_17901696[arg1][arg2] > 0:
                    require sub_17901696[arg1][arg2] < stor6
                    if uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) > 0:
                        if uint256(sub_b1be9407[arg3].field_0) != 0:
                            if sub_17901696[arg1][arg2]:
                                require sub_17901696[arg1][arg2] < stor6
                                if uint8(var26003) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                    require sub_17901696[arg1][arg2] < stor6
                                    if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var30004)]) == var30003:
                                        return -2
                                    require sub_17901696[arg1][arg2] < stor6
                                    idx = var30004
                                    while uint8(idx + 1) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                        require sub_17901696[arg1][arg2] < stor6
                                        mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                        if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(idx + 1)]) == uint256(sub_b1be9407[arg3].field_0):
                                            return -2
                                        require sub_17901696[arg1][arg2] < stor6
                                        mem[0] = 6
                                        idx = idx + 1
                                        continue 
                        require sub_17901696[arg1][arg2] < stor6
                        uint256(sub_a09a4221[stor5[arg1][arg2]].field_0) = Mask(248, 0, sub_a09a4221[stor5[arg1][arg2]].field_8)
                        uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                        return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
            else:
                if owner != tx.origin:
                    return 0
                if not uint256(sub_b1be9407[arg1].field_0):
                    return -1
                if not uint256(sub_b1be9407[arg3].field_0):
                    return -1
                if arg1 == arg3:
                    return -1
                if sub_17901696[arg1][arg2] > 0:
                    require sub_17901696[arg1][arg2] < stor6
                    if uint8(sub_a09a4221[stor5[arg1][arg2]].field_0) > 0:
                        if uint256(sub_b1be9407[arg3].field_0) != 0:
                            if sub_17901696[arg1][arg2]:
                                require sub_17901696[arg1][arg2] < stor6
                                if uint8(var27003) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                    require sub_17901696[arg1][arg2] < stor6
                                    if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var31004)]) == var31003:
                                        return -2
                                    require sub_17901696[arg1][arg2] < stor6
                                    idx = var31004
                                    while uint8(idx + 1) <= uint8(sub_a09a4221[stor5[arg1][arg2]].field_0):
                                        require sub_17901696[arg1][arg2] < stor6
                                        mem[32] = (4 * sub_17901696[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                        if uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(idx + 1)]) == uint256(sub_b1be9407[arg3].field_0):
                                            return -2
                                        require sub_17901696[arg1][arg2] < stor6
                                        mem[0] = 6
                                        idx = idx + 1
                                        continue 
                        require sub_17901696[arg1][arg2] < stor6
                        uint256(sub_a09a4221[stor5[arg1][arg2]].field_0) = Mask(248, 0, sub_a09a4221[stor5[arg1][arg2]].field_8)
                        uint256(stor[(4 * stor5[arg1][arg2]) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[stor5[arg1][arg2]].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                        return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('stor', ('map', ('data', ('param', 'arg1'), ('param', 'arg2')), ('name', 'stor5', 5)))), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
            idx = 1
            while idx < stor6:
                mem[0] = 6
                if stor41F6[idx]:
                    idx = idx + 1
                    continue 
                if idx != 0:
                    require idx < stor6
                    stor41F6[idx] = sha3(arg1, arg2)
                    stor41F6[idx] = arg1
                    uint8(stor41F6[idx].field_0) = 0
                    stor41F6[idx].field_256 % 1 = 0
                    sub_17901696[arg1][arg2] = idx
                    uint256(sub_a09a4221[idx].field_0) = Mask(248, 0, sub_a09a4221[idx].field_8)
                    uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[idx].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                    return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('var', 0)), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
                stor6++
                if not stor6 <= stor6 + 1:
                    idx = (4 * stor6 + 1) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                    while (4 * stor6) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d > idx:
                        uint256(stor[idx]) = 0
                        uint256(sub_b1be9407[idx].field_0) = 0
                        stor2[idx] = 0
                        idx = idx + 1
                        continue 
                require stor6 < stor6
                stor41F6[stor6] = sha3(arg1, arg2)
                stor41F6[stor6] = arg1
                uint8(stor41F6[stor6].field_0) = 0
                stor41F6[stor6].field_256 % 1 = 0
                sub_17901696[arg1][arg2] = stor6
                uint256(sub_a09a4221[stor6].field_0) = Mask(248, 0, sub_a09a4221[stor6].field_8)
                uint256(stor[(4 * stor6) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[stor6].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
                return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('stor', ('name', 'stor6', 6))), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
    stor6++
    if not stor6 <= stor6 + 1:
        idx = (4 * stor6 + 1) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
        while (4 * stor6) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d > idx:
            uint256(stor[idx]) = 0
            uint256(sub_b1be9407[idx].field_0) = 0
            stor2[idx] = 0
            idx = idx + 1
            continue 
    require stor6 < stor6
    stor41F6[stor6] = sha3(arg1, arg2)
    stor41F6[stor6] = arg1
    uint8(stor41F6[stor6].field_0) = 0
    stor41F6[stor6].field_256 % 1 = 0
    sub_17901696[arg1][arg2] = stor6
    uint256(sub_a09a4221[stor6].field_0) = Mask(248, 0, sub_a09a4221[stor6].field_8)
    uint256(stor[(4 * stor6) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(stor41F6[stor6].field_0)]) = uint256(sub_b1be9407[arg3].field_0)
    return ('signextend', 0, ('type', 8, ('field', 0, ('stor', ('array', ('mul', 4, ('stor', ('name', 'stor6', 6))), ('name', 'sub_a09a4221', 29383233550797265264134949629632811322542414813541348916909332182249273523213))))))
}

function sub_16c58824(?) payable {
    if uint256(sub_b1be9407[arg1].field_0) <= 0:
        if msg.sender == owner:
            if uint256(sub_b1be9407[arg1].field_0):
                idx = 1
                while idx < stor6:
                    require idx < stor6
                    if stor42F6[idx] == arg1:
                        mem[32] = 5
                        sub_17901696[stor41F6[idx]] = 0
                        mem[0] = 6
                        stor41F6[idx] = 0
                        stor41F6[idx] = 0
                        uint8(stor41F6[idx].field_0) = 0
                    else:
                        mem[0] = 6
                        if uint8(var27005) <= uint8(sub_a09a4221[idx].field_0):
                            require idx < stor6
                            mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                            if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var31006)]):
                                require idx < stor6
                                mem[0] = 6
                                s = var31006
                                while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                    require idx < stor6
                                    mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                    if uint256(sub_b1be9407[arg1].field_0) == uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                        require idx < stor6
                                        mem[32] = 1
                                        if sub_17901696[stor41F6[idx]] != 0:
                                            if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                require sub_17901696[stor41F6[idx]] < stor6
                                                t = 0
                                                while uint8(t) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                    mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]):
                                                        require idx < stor6
                                                        mem[0] = 6
                                                        t = t + 1
                                                        continue 
                                                    mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                    if uint8(t) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = 0
                                                    else:
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                    uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                    if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                        require sub_17901696[stor41F6[idx]] < stor6
                                                        stor41F6[stor5[stor41F6[idx]]] = 0
                                                        stor42F6[stor5[stor41F6[idx]]] = 0
                                                        uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                        mem[32] = 5
                                                        sub_17901696[stor41F6[idx]] = 0
                                                    require idx < stor6
                                                    mem[0] = 6
                                                    s = s + 1
                                                    continue 
                                    require idx < stor6
                                    mem[0] = 6
                                    s = s + 1
                                    continue 
                            else:
                                require idx < stor6
                                mem[32] = 1
                                if sub_17901696[stor41F6[idx]] != 0:
                                    if uint256(sub_b1be9407[arg1].field_0) != 0:
                                        require sub_17901696[stor41F6[idx]] < stor6
                                        s = 0
                                        while uint8(s) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                            mem[0] = uint8(s)
                                            mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                            if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]):
                                                s = s + 1
                                                continue 
                                            mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                            if uint8(s) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = 0
                                            else:
                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                            uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                            if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                require sub_17901696[stor41F6[idx]] < stor6
                                                stor41F6[stor5[stor41F6[idx]]] = 0
                                                stor42F6[stor5[stor41F6[idx]]] = 0
                                                uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                mem[32] = 5
                                                sub_17901696[stor41F6[idx]] = 0
                                            require idx < stor6
                                            mem[0] = 6
                                            s = var37007
                                            while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                                require idx < stor6
                                                mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                                if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                    require idx < stor6
                                                    mem[0] = 6
                                                    s = s + 1
                                                    continue 
                                                require idx < stor6
                                                require idx < stor6
                                                mem[0] = 6
                                                var37003 = stor42F6[idx]
                                                var37007 = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                require idx < stor6
                                mem[0] = 6
                                s = var37007
                                while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                    require idx < stor6
                                    mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                        require idx < stor6
                                        mem[0] = 6
                                        s = s + 1
                                        continue 
                                    require idx < stor6
                                    require idx < stor6
                                    mem[0] = 6
                                    var37003 = stor42F6[idx]
                                    var37007 = s + 1
                                    continue 
                    idx = idx + 1
                    continue 
                require uint256(sub_b1be9407[arg1].field_0) < stor2.length
                nodes[uint256(stor1[arg1].field_0)] = 0
                require uint256(sub_b1be9407[arg1].field_0) < stor3.length
                address(sub_a6a8cc00[uint256(stor1[arg1].field_0)]) = 0
                require uint256(sub_b1be9407[arg1].field_0) < stor4.length
                address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) = 0
                uint256(sub_b1be9407[arg1].field_0) = 0
        else:
            if tx.origin == owner:
                if uint256(sub_b1be9407[arg1].field_0):
                    idx = 1
                    while idx < stor6:
                        require idx < stor6
                        if stor42F6[idx] == arg1:
                            mem[32] = 5
                            sub_17901696[stor41F6[idx]] = 0
                            mem[0] = 6
                            stor41F6[idx] = 0
                            stor41F6[idx] = 0
                            uint8(stor41F6[idx].field_0) = 0
                        else:
                            mem[0] = 6
                            if uint8(var28005) <= uint8(sub_a09a4221[idx].field_0):
                                require idx < stor6
                                mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var32006)]):
                                    require idx < stor6
                                    mem[0] = 6
                                    s = var32006
                                    while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                        require idx < stor6
                                        mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                        if uint256(sub_b1be9407[arg1].field_0) == uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                            require idx < stor6
                                            mem[32] = 1
                                            if sub_17901696[stor41F6[idx]] != 0:
                                                if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                    require sub_17901696[stor41F6[idx]] < stor6
                                                    t = 0
                                                    while uint8(t) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                        mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                        if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]):
                                                            require idx < stor6
                                                            mem[0] = 6
                                                            t = t + 1
                                                            continue 
                                                        mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                        if uint8(t) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                            uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = 0
                                                        else:
                                                            uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                            uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                        uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                        if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                            require sub_17901696[stor41F6[idx]] < stor6
                                                            stor41F6[stor5[stor41F6[idx]]] = 0
                                                            stor42F6[stor5[stor41F6[idx]]] = 0
                                                            uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                            mem[32] = 5
                                                            sub_17901696[stor41F6[idx]] = 0
                                                        require idx < stor6
                                                        mem[0] = 6
                                                        s = s + 1
                                                        continue 
                                        require idx < stor6
                                        mem[0] = 6
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < stor6
                                    mem[32] = 1
                                    if sub_17901696[stor41F6[idx]] != 0:
                                        if uint256(sub_b1be9407[arg1].field_0) != 0:
                                            require sub_17901696[stor41F6[idx]] < stor6
                                            s = 0
                                            while uint8(s) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                mem[0] = uint8(s)
                                                mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]):
                                                    s = s + 1
                                                    continue 
                                                mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                if uint8(s) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                    uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = 0
                                                else:
                                                    uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                    uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                    require sub_17901696[stor41F6[idx]] < stor6
                                                    stor41F6[stor5[stor41F6[idx]]] = 0
                                                    stor42F6[stor5[stor41F6[idx]]] = 0
                                                    uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                    mem[32] = 5
                                                    sub_17901696[stor41F6[idx]] = 0
                                                require idx < stor6
                                                mem[0] = 6
                                                s = var38007
                                                while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                                    require idx < stor6
                                                    mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                        require idx < stor6
                                                        mem[0] = 6
                                                        s = s + 1
                                                        continue 
                                                    require idx < stor6
                                                    require idx < stor6
                                                    mem[0] = 6
                                                    var38003 = stor42F6[idx]
                                                    var38007 = s + 1
                                                    continue 
                                                idx = idx + 1
                                                continue 
                                    require idx < stor6
                                    mem[0] = 6
                                    s = var38007
                                    while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                        require idx < stor6
                                        mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                        if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                            require idx < stor6
                                            mem[0] = 6
                                            s = s + 1
                                            continue 
                                        require idx < stor6
                                        require idx < stor6
                                        mem[0] = 6
                                        var38003 = stor42F6[idx]
                                        var38007 = s + 1
                                        continue 
                        idx = idx + 1
                        continue 
                    require uint256(sub_b1be9407[arg1].field_0) < stor2.length
                    nodes[uint256(stor1[arg1].field_0)] = 0
                    require uint256(sub_b1be9407[arg1].field_0) < stor3.length
                    address(sub_a6a8cc00[uint256(stor1[arg1].field_0)]) = 0
                    require uint256(sub_b1be9407[arg1].field_0) < stor4.length
                    address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) = 0
                    uint256(sub_b1be9407[arg1].field_0) = 0
    else:
        require uint256(sub_b1be9407[arg1].field_0) < stor4.length
        if address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) != msg.sender:
            if msg.sender == owner:
                if uint256(sub_b1be9407[arg1].field_0):
                    idx = 1
                    while idx < stor6:
                        require idx < stor6
                        if stor42F6[idx] == arg1:
                            mem[32] = 5
                            sub_17901696[stor41F6[idx]] = 0
                            mem[0] = 6
                            stor41F6[idx] = 0
                            stor41F6[idx] = 0
                            uint8(stor41F6[idx].field_0) = 0
                        else:
                            mem[0] = 6
                            if uint8(var29005) <= uint8(sub_a09a4221[idx].field_0):
                                require idx < stor6
                                mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var33006)]):
                                    require idx < stor6
                                    mem[0] = 6
                                    s = var33006
                                    while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                        require idx < stor6
                                        mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                        if uint256(sub_b1be9407[arg1].field_0) == uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                            require idx < stor6
                                            mem[32] = 1
                                            if sub_17901696[stor41F6[idx]] != 0:
                                                if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                    require sub_17901696[stor41F6[idx]] < stor6
                                                    t = 0
                                                    while uint8(t) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                        mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                        if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]):
                                                            require idx < stor6
                                                            mem[0] = 6
                                                            t = t + 1
                                                            continue 
                                                        mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                        if uint8(t) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                            uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = 0
                                                        else:
                                                            uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                            uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                        uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                        if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                            require sub_17901696[stor41F6[idx]] < stor6
                                                            stor41F6[stor5[stor41F6[idx]]] = 0
                                                            stor42F6[stor5[stor41F6[idx]]] = 0
                                                            uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                            mem[32] = 5
                                                            sub_17901696[stor41F6[idx]] = 0
                                                        require idx < stor6
                                                        mem[0] = 6
                                                        s = s + 1
                                                        continue 
                                        require idx < stor6
                                        mem[0] = 6
                                        s = s + 1
                                        continue 
                                else:
                                    require idx < stor6
                                    mem[32] = 1
                                    if sub_17901696[stor41F6[idx]] != 0:
                                        if uint256(sub_b1be9407[arg1].field_0) != 0:
                                            require sub_17901696[stor41F6[idx]] < stor6
                                            s = 0
                                            while uint8(s) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                mem[0] = uint8(s)
                                                mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]):
                                                    s = s + 1
                                                    continue 
                                                mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                if uint8(s) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                    uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = 0
                                                else:
                                                    uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                    uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                    require sub_17901696[stor41F6[idx]] < stor6
                                                    stor41F6[stor5[stor41F6[idx]]] = 0
                                                    stor42F6[stor5[stor41F6[idx]]] = 0
                                                    uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                    mem[32] = 5
                                                    sub_17901696[stor41F6[idx]] = 0
                                                require idx < stor6
                                                mem[0] = 6
                                                s = var39007
                                                while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                                    require idx < stor6
                                                    mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                        require idx < stor6
                                                        mem[0] = 6
                                                        s = s + 1
                                                        continue 
                                                    require idx < stor6
                                                    require idx < stor6
                                                    mem[0] = 6
                                                    var39003 = stor42F6[idx]
                                                    var39007 = s + 1
                                                    continue 
                                                idx = idx + 1
                                                continue 
                                    require idx < stor6
                                    mem[0] = 6
                                    s = var39007
                                    while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                        require idx < stor6
                                        mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                        if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                            require idx < stor6
                                            mem[0] = 6
                                            s = s + 1
                                            continue 
                                        require idx < stor6
                                        require idx < stor6
                                        mem[0] = 6
                                        var39003 = stor42F6[idx]
                                        var39007 = s + 1
                                        continue 
                        idx = idx + 1
                        continue 
                    require uint256(sub_b1be9407[arg1].field_0) < stor2.length
                    nodes[uint256(stor1[arg1].field_0)] = 0
                    require uint256(sub_b1be9407[arg1].field_0) < stor3.length
                    address(sub_a6a8cc00[uint256(stor1[arg1].field_0)]) = 0
                    require uint256(sub_b1be9407[arg1].field_0) < stor4.length
                    address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) = 0
                    uint256(sub_b1be9407[arg1].field_0) = 0
            else:
                if tx.origin == owner:
                    if uint256(sub_b1be9407[arg1].field_0):
                        idx = 1
                        while idx < stor6:
                            require idx < stor6
                            if stor42F6[idx] == arg1:
                                mem[32] = 5
                                sub_17901696[stor41F6[idx]] = 0
                                mem[0] = 6
                                stor41F6[idx] = 0
                                stor41F6[idx] = 0
                                uint8(stor41F6[idx].field_0) = 0
                            else:
                                mem[0] = 6
                                if uint8(var30005) <= uint8(sub_a09a4221[idx].field_0):
                                    require idx < stor6
                                    mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var34006)]):
                                        require idx < stor6
                                        mem[0] = 6
                                        s = var34006
                                        while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                            require idx < stor6
                                            mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                            if uint256(sub_b1be9407[arg1].field_0) == uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                require idx < stor6
                                                mem[32] = 1
                                                if sub_17901696[stor41F6[idx]] != 0:
                                                    if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                        require sub_17901696[stor41F6[idx]] < stor6
                                                        t = 0
                                                        while uint8(t) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                            mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                            if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]):
                                                                require idx < stor6
                                                                mem[0] = 6
                                                                t = t + 1
                                                                continue 
                                                            mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                            if uint8(t) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = 0
                                                            else:
                                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                            uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                            if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                                require sub_17901696[stor41F6[idx]] < stor6
                                                                stor41F6[stor5[stor41F6[idx]]] = 0
                                                                stor42F6[stor5[stor41F6[idx]]] = 0
                                                                uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                                mem[32] = 5
                                                                sub_17901696[stor41F6[idx]] = 0
                                                            require idx < stor6
                                                            mem[0] = 6
                                                            s = s + 1
                                                            continue 
                                            require idx < stor6
                                            mem[0] = 6
                                            s = s + 1
                                            continue 
                                    else:
                                        require idx < stor6
                                        mem[32] = 1
                                        if sub_17901696[stor41F6[idx]] != 0:
                                            if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                require sub_17901696[stor41F6[idx]] < stor6
                                                s = 0
                                                while uint8(s) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                    mem[0] = uint8(s)
                                                    mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]):
                                                        s = s + 1
                                                        continue 
                                                    mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                    if uint8(s) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = 0
                                                    else:
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                    uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                    if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                        require sub_17901696[stor41F6[idx]] < stor6
                                                        stor41F6[stor5[stor41F6[idx]]] = 0
                                                        stor42F6[stor5[stor41F6[idx]]] = 0
                                                        uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                        mem[32] = 5
                                                        sub_17901696[stor41F6[idx]] = 0
                                                    require idx < stor6
                                                    mem[0] = 6
                                                    s = var40007
                                                    while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                                        require idx < stor6
                                                        mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                                        if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                            require idx < stor6
                                                            mem[0] = 6
                                                            s = s + 1
                                                            continue 
                                                        require idx < stor6
                                                        require idx < stor6
                                                        mem[0] = 6
                                                        var40003 = stor42F6[idx]
                                                        var40007 = s + 1
                                                        continue 
                                                    idx = idx + 1
                                                    continue 
                                        require idx < stor6
                                        mem[0] = 6
                                        s = var40007
                                        while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                            require idx < stor6
                                            mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                            if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                require idx < stor6
                                                mem[0] = 6
                                                s = s + 1
                                                continue 
                                            require idx < stor6
                                            require idx < stor6
                                            mem[0] = 6
                                            var40003 = stor42F6[idx]
                                            var40007 = s + 1
                                            continue 
                            idx = idx + 1
                            continue 
                        require uint256(sub_b1be9407[arg1].field_0) < stor2.length
                        nodes[uint256(stor1[arg1].field_0)] = 0
                        require uint256(sub_b1be9407[arg1].field_0) < stor3.length
                        address(sub_a6a8cc00[uint256(stor1[arg1].field_0)]) = 0
                        require uint256(sub_b1be9407[arg1].field_0) < stor4.length
                        address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) = 0
                        uint256(sub_b1be9407[arg1].field_0) = 0
        else:
            if uint256(sub_b1be9407[arg1].field_0):
                idx = 1
                while idx < stor6:
                    require idx < stor6
                    if stor42F6[idx] == arg1:
                        mem[32] = 5
                        sub_17901696[stor41F6[idx]] = 0
                        mem[0] = 6
                        stor41F6[idx] = 0
                        stor41F6[idx] = 0
                        uint8(stor41F6[idx].field_0) = 0
                    else:
                        mem[0] = 6
                        if uint8(var27005) <= uint8(sub_a09a4221[idx].field_0):
                            require idx < stor6
                            mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                            if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var31006)]):
                                require idx < stor6
                                mem[0] = 6
                                s = var31006
                                while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                    require idx < stor6
                                    mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                    if uint256(sub_b1be9407[arg1].field_0) == uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                        require idx < stor6
                                        mem[32] = 1
                                        if sub_17901696[stor41F6[idx]] != 0:
                                            if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                require sub_17901696[stor41F6[idx]] < stor6
                                                t = 0
                                                while uint8(t) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                    mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]):
                                                        require idx < stor6
                                                        mem[0] = 6
                                                        t = t + 1
                                                        continue 
                                                    mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                    if uint8(t) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = 0
                                                    else:
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                    uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                    if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                        require sub_17901696[stor41F6[idx]] < stor6
                                                        stor41F6[stor5[stor41F6[idx]]] = 0
                                                        stor42F6[stor5[stor41F6[idx]]] = 0
                                                        uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                        mem[32] = 5
                                                        sub_17901696[stor41F6[idx]] = 0
                                                    require idx < stor6
                                                    mem[0] = 6
                                                    s = s + 1
                                                    continue 
                                    require idx < stor6
                                    mem[0] = 6
                                    s = s + 1
                                    continue 
                            else:
                                require idx < stor6
                                mem[32] = 1
                                if sub_17901696[stor41F6[idx]] != 0:
                                    if uint256(sub_b1be9407[arg1].field_0) != 0:
                                        require sub_17901696[stor41F6[idx]] < stor6
                                        s = 0
                                        while uint8(s) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                            mem[0] = uint8(s)
                                            mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                            if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]):
                                                s = s + 1
                                                continue 
                                            mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                            if uint8(s) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = 0
                                            else:
                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                            uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                            if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                require sub_17901696[stor41F6[idx]] < stor6
                                                stor41F6[stor5[stor41F6[idx]]] = 0
                                                stor42F6[stor5[stor41F6[idx]]] = 0
                                                uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                mem[32] = 5
                                                sub_17901696[stor41F6[idx]] = 0
                                            require idx < stor6
                                            mem[0] = 6
                                            s = var37007
                                            while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                                require idx < stor6
                                                mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                                if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                    require idx < stor6
                                                    mem[0] = 6
                                                    s = s + 1
                                                    continue 
                                                require idx < stor6
                                                require idx < stor6
                                                mem[0] = 6
                                                var37003 = stor42F6[idx]
                                                var37007 = s + 1
                                                continue 
                                            idx = idx + 1
                                            continue 
                                require idx < stor6
                                mem[0] = 6
                                s = var37007
                                while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                    require idx < stor6
                                    mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                        require idx < stor6
                                        mem[0] = 6
                                        s = s + 1
                                        continue 
                                    require idx < stor6
                                    require idx < stor6
                                    mem[0] = 6
                                    var37003 = stor42F6[idx]
                                    var37007 = s + 1
                                    continue 
                    idx = idx + 1
                    continue 
                require uint256(sub_b1be9407[arg1].field_0) < stor2.length
                nodes[uint256(stor1[arg1].field_0)] = 0
                require uint256(sub_b1be9407[arg1].field_0) < stor3.length
                address(sub_a6a8cc00[uint256(stor1[arg1].field_0)]) = 0
                require uint256(sub_b1be9407[arg1].field_0) < stor4.length
                address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) = 0
                uint256(sub_b1be9407[arg1].field_0) = 0
                if msg.sender == owner:
                    if uint256(sub_b1be9407[arg1].field_0):
                        idx = 1
                        while idx < stor6:
                            require idx < stor6
                            if stor42F6[idx] == arg1:
                                mem[32] = 5
                                sub_17901696[stor41F6[idx]] = 0
                                mem[0] = 6
                                stor41F6[idx] = 0
                                stor41F6[idx] = 0
                                uint8(stor41F6[idx].field_0) = 0
                            else:
                                mem[0] = 6
                                if uint8(var37005) <= uint8(sub_a09a4221[idx].field_0):
                                    require idx < stor6
                                    mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var41006)]):
                                        require idx < stor6
                                        mem[0] = 6
                                        s = var41006
                                        while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                            require idx < stor6
                                            mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                            if uint256(sub_b1be9407[arg1].field_0) == uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                require idx < stor6
                                                mem[32] = 1
                                                if sub_17901696[stor41F6[idx]] != 0:
                                                    if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                        require sub_17901696[stor41F6[idx]] < stor6
                                                        t = 0
                                                        while uint8(t) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                            mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                            if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]):
                                                                require idx < stor6
                                                                mem[0] = 6
                                                                t = t + 1
                                                                continue 
                                                            mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                            if uint8(t) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = 0
                                                            else:
                                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                                uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                            uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                            if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                                require sub_17901696[stor41F6[idx]] < stor6
                                                                stor41F6[stor5[stor41F6[idx]]] = 0
                                                                stor42F6[stor5[stor41F6[idx]]] = 0
                                                                uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                                mem[32] = 5
                                                                sub_17901696[stor41F6[idx]] = 0
                                                            require idx < stor6
                                                            mem[0] = 6
                                                            s = s + 1
                                                            continue 
                                            require idx < stor6
                                            mem[0] = 6
                                            s = s + 1
                                            continue 
                                    else:
                                        require idx < stor6
                                        mem[32] = 1
                                        if sub_17901696[stor41F6[idx]] != 0:
                                            if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                require sub_17901696[stor41F6[idx]] < stor6
                                                s = 0
                                                while uint8(s) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                    mem[0] = uint8(s)
                                                    mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                    if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]):
                                                        s = s + 1
                                                        continue 
                                                    mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                    if uint8(s) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = 0
                                                    else:
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                        uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                    uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                    if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                        require sub_17901696[stor41F6[idx]] < stor6
                                                        stor41F6[stor5[stor41F6[idx]]] = 0
                                                        stor42F6[stor5[stor41F6[idx]]] = 0
                                                        uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                        mem[32] = 5
                                                        sub_17901696[stor41F6[idx]] = 0
                                                    require idx < stor6
                                                    mem[0] = 6
                                                    s = var47007
                                                    while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                                        require idx < stor6
                                                        mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                                        if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                            require idx < stor6
                                                            mem[0] = 6
                                                            s = s + 1
                                                            continue 
                                                        require idx < stor6
                                                        require idx < stor6
                                                        mem[0] = 6
                                                        var47003 = stor42F6[idx]
                                                        var47007 = s + 1
                                                        continue 
                                                    idx = idx + 1
                                                    continue 
                                        require idx < stor6
                                        mem[0] = 6
                                        s = var47007
                                        while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                            require idx < stor6
                                            mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                            if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                require idx < stor6
                                                mem[0] = 6
                                                s = s + 1
                                                continue 
                                            require idx < stor6
                                            require idx < stor6
                                            mem[0] = 6
                                            var47003 = stor42F6[idx]
                                            var47007 = s + 1
                                            continue 
                            idx = idx + 1
                            continue 
                        require uint256(sub_b1be9407[arg1].field_0) < stor2.length
                        nodes[uint256(stor1[arg1].field_0)] = 0
                        require uint256(sub_b1be9407[arg1].field_0) < stor3.length
                        address(sub_a6a8cc00[uint256(stor1[arg1].field_0)]) = 0
                        require uint256(sub_b1be9407[arg1].field_0) < stor4.length
                        address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) = 0
                        uint256(sub_b1be9407[arg1].field_0) = 0
                else:
                    if tx.origin == owner:
                        if uint256(sub_b1be9407[arg1].field_0):
                            idx = 1
                            while idx < stor6:
                                require idx < stor6
                                if stor42F6[idx] == arg1:
                                    mem[32] = 5
                                    sub_17901696[stor41F6[idx]] = 0
                                    mem[0] = 6
                                    stor41F6[idx] = 0
                                    stor41F6[idx] = 0
                                    uint8(stor41F6[idx].field_0) = 0
                                else:
                                    mem[0] = 6
                                    if uint8(var38005) <= uint8(sub_a09a4221[idx].field_0):
                                        require idx < stor6
                                        mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                        if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(var42006)]):
                                            require idx < stor6
                                            mem[0] = 6
                                            s = var42006
                                            while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                                require idx < stor6
                                                mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                                if uint256(sub_b1be9407[arg1].field_0) == uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                    require idx < stor6
                                                    mem[32] = 1
                                                    if sub_17901696[stor41F6[idx]] != 0:
                                                        if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                            require sub_17901696[stor41F6[idx]] < stor6
                                                            t = 0
                                                            while uint8(t) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                                mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                                if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]):
                                                                    require idx < stor6
                                                                    mem[0] = 6
                                                                    t = t + 1
                                                                    continue 
                                                                mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                                if uint8(t) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                                    uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = 0
                                                                else:
                                                                    uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][t << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                                    uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                                uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                                if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                                    require sub_17901696[stor41F6[idx]] < stor6
                                                                    stor41F6[stor5[stor41F6[idx]]] = 0
                                                                    stor42F6[stor5[stor41F6[idx]]] = 0
                                                                    uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                                    mem[32] = 5
                                                                    sub_17901696[stor41F6[idx]] = 0
                                                                require idx < stor6
                                                                mem[0] = 6
                                                                s = s + 1
                                                                continue 
                                                require idx < stor6
                                                mem[0] = 6
                                                s = s + 1
                                                continue 
                                        else:
                                            require idx < stor6
                                            mem[32] = 1
                                            if sub_17901696[stor41F6[idx]] != 0:
                                                if uint256(sub_b1be9407[arg1].field_0) != 0:
                                                    require sub_17901696[stor41F6[idx]] < stor6
                                                    s = 0
                                                    while uint8(s) < uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                        mem[0] = uint8(s)
                                                        mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                        if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]):
                                                            s = s + 1
                                                            continue 
                                                        mem[32] = (4 * sub_17901696[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10
                                                        if uint8(s) >= uint8(stor41F6[stor5[stor41F6[idx]]].field_0):
                                                            uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = 0
                                                        else:
                                                            uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][s << 248]) = uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)])
                                                            uint256(stor[(4 * stor5[stor41F6[idx]]) + 0x41f652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c10][uint8(stor41F6[stor5[stor41F6[idx]]].field_0)]) = 0
                                                        uint256(stor41F6[stor5[stor41F6[idx]]].field_0) = uint8(stor41F6[stor5[stor41F6[idx]]].field_0) - 1 or Mask(248, 8, uint256(stor41F6[stor5[stor41F6[idx]]].field_0))
                                                        if uint8(stor41F6[stor5[stor41F6[idx]]].field_0) < 1:
                                                            require sub_17901696[stor41F6[idx]] < stor6
                                                            stor41F6[stor5[stor41F6[idx]]] = 0
                                                            stor42F6[stor5[stor41F6[idx]]] = 0
                                                            uint8(sub_a09a4221[stor5[stor41F6[idx]]].field_0) = 0
                                                            mem[32] = 5
                                                            sub_17901696[stor41F6[idx]] = 0
                                                        require idx < stor6
                                                        mem[0] = 6
                                                        s = var48007
                                                        while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                                            require idx < stor6
                                                            mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                                            if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                                require idx < stor6
                                                                mem[0] = 6
                                                                s = s + 1
                                                                continue 
                                                            require idx < stor6
                                                            require idx < stor6
                                                            mem[0] = 6
                                                            var48003 = stor42F6[idx]
                                                            var48007 = s + 1
                                                            continue 
                                                        idx = idx + 1
                                                        continue 
                                            require idx < stor6
                                            mem[0] = 6
                                            s = var48007
                                            while uint8(s + 1) <= uint8(sub_a09a4221[idx].field_0):
                                                require idx < stor6
                                                mem[32] = (4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d
                                                if uint256(sub_b1be9407[arg1].field_0) != uint256(stor[(4 * idx) + 0x5bf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d][uint8(s + 1)]):
                                                    require idx < stor6
                                                    mem[0] = 6
                                                    s = s + 1
                                                    continue 
                                                require idx < stor6
                                                require idx < stor6
                                                mem[0] = 6
                                                var48003 = stor42F6[idx]
                                                var48007 = s + 1
                                                continue 
                                idx = idx + 1
                                continue 
                            require uint256(sub_b1be9407[arg1].field_0) < stor2.length
                            nodes[uint256(stor1[arg1].field_0)] = 0
                            require uint256(sub_b1be9407[arg1].field_0) < stor3.length
                            address(sub_a6a8cc00[uint256(stor1[arg1].field_0)]) = 0
                            require uint256(sub_b1be9407[arg1].field_0) < stor4.length
                            address(stor[uint256(stor1[arg1].field_0) + code.data[5527 len 32]]) = 0
                            uint256(sub_b1be9407[arg1].field_0) = 0
    return 0
}



}
