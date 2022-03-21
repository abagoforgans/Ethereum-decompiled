contract main {


// =======================  Init code  ======================


mapping of uint8 stor0;
array of uint256 stor1;

function _fallback() payable {
    mem[96 len -4709] = code.data[5123 len -4709]
    mem[64] = -4613
    if mem[mem[96] + 96] != 0:
        idx = 0
        while idx < mem[mem[96] + 96]:
            require idx < mem[mem[96] + 96]
            mem[32] = 0
            stor0[mem[(32 * idx) + mem[96] + 140 len 20]] = 1
            stor1.length++
            if not stor1.length <= stor1.length + 1:
                s = stor1.length + code.data[5091 len 32] + 1
                while code.data[5091 len 32] + stor1.length > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            mem[0] = 1
            require idx < mem[mem[96] + 96]
            stor1[stor1.length] = mem[(32 * idx) + mem[96] + 128]
            idx = idx + 1
            continue 
    else:
        stor0[address(msg.sender)] = 1
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            idx = stor1.length + 1
            while stor1.length > idx:
                stor1[idx] = 0
                idx = idx + 1
                continue 
        stor[code.data[5091 len 32] + stor1.length] = msg.sender or Mask(96, 160, stor[code.data[5091 len 32] + stor1.length])
    return code.data[414 len 4677]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct stor1;
array of struct stor2;
array of struct stor3;
uint32 stor4;
uint32 stor4; offset 32
uint32 stor4; offset 64
address stor4; offset 96
uint256 stor4;
uint64 stor5;
uint256 stor5;
array of struct stor6;
array of struct stor7;
array of struct stor8;
array of address stor80084422859880547211683076133703299733277748156566366325829078699459944778997;
array of address stor87903029871075914254377627908054574944891091886930582284385770809450030037082;
array of uint64 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;

function _fallback() payable {
  stop
}

function signers() payable {
    if stor1.length:
        mem[160] = address(stor1.field_0)
        idx = 160
        s = 0
        while (32 * stor1.length) + 128 > idx:
            mem[idx + 32] = address(stor1[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=stor1.length, data=mem[160 len 32 * stor1.length])
}

function currentVersion() payable {
    if 0 == stor8.length:
        return 0
    require stor8.length - 1 < stor8.length
    return uint32(stor8[stor8.length - 1].field_0), 
           uint32(stor8[stor8.length - 1].field_0),
           uint32(stor8[stor8.length - 1].field_0),
           address(address(stor8[stor8.length - 1].field_96)),
           storF3F7[stor8.length - 1]
}

function authProposals() payable {
    if stor3.length:
        mem[160] = address(stor3.field_0)
        if (32 * stor3.length) + 32 > 64:
            mem[192] = address(stor3.field_256)
            idx = 192
            s = 1
            while (32 * stor3.length) + 128 > idx:
                mem[idx + 32] = address(stor3[s].field_256)
                idx = idx + 32
                s = s + 1
                continue 
    return Array(len=stor3.length, data=mem[160 len 32 * stor3.length])
}

function proposedVersion() payable {
    if stor6.length:
        mem[192] = address(stor6.field_0)
        idx = 192
        s = 0
        while (32 * stor6.length) + 160 > idx:
            mem[idx + 32] = address(stor6[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if stor7.length:
        mem[(32 * stor6.length) + 224] = address(stor7.field_0)
        idx = (32 * stor6.length) + 224
        s = 0
        while (32 * stor6.length) + (32 * stor7.length) + 192 > idx:
            mem[idx + 32] = address(stor7[s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(64 * stor6.length) + (32 * stor7.length) + 448] = stor7.length
    mem[(64 * stor6.length) + (32 * stor7.length) + 480 len 32 * stor7.length] = mem[(32 * stor6.length) + 224 len 32 * stor7.length]
    return uint32(stor4.field_0), 
           uint32(stor4.field_0),
           uint32(stor4.field_0),
           address(address(stor4.field_96)),
           Array(len=stor6.length, data=mem[192 len 32 * stor6.length], stor7.length, mem[(32 * stor6.length) + 224 len 32 * stor7.length]),
           (32 * stor6.length) + 224
}

function nuke() payable {
    if stor0[address(msg.sender)]:
        if stor6.length != 0:
            idx = 0
            while idx < stor6.length:
                mem[0] = 6
                if address(stor6[idx].field_0) != msg.sender:
                    idx = idx + 1
                    continue 
            idx = 0
            while idx < stor7.length:
                mem[0] = 7
                if address(stor7[idx].field_0) != msg.sender:
                    idx = idx + 1
                    continue 
            stor7.length++
            if not stor7.length <= stor7.length + 1:
                idx = stor7.length + 1
                while stor7.length > idx:
                    uint256(stor7[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor7[stor7.length].field_0) = msg.sender or Mask(96, 160, uint256(stor7[stor7.length].field_0))
            if stor7.length > uint255(stor1.length.field_1):
                uint256(stor4.field_0) = 0
                uint64(stor5) = 0
                stor6.length = 0
                idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
                while stor6.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                    uint256(stor[idx]) = 0
                    idx = idx + 1
                    continue 
                stor7.length = 0
                idx = 0
                while stor7.length > idx:
                    uint256(stor7[idx].field_0) = 0
                    idx = idx + 1
                    continue 
}

function authVotes(address arg1) payable {
    if uint256(stor2[address(arg1)].field_0):
        mem[192] = address(stor2[address(arg1)].field_0)
        idx = 192
        s = 0
        while (32 * uint256(stor2[address(arg1)].field_0)) + 160 > idx:
            mem[idx + 32] = address(stor2[address(arg1)][s].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    if uint256(stor2[address(arg1)].field_256):
        mem[(32 * uint256(stor2[address(arg1)].field_0)) + 224] = address(stor2[address(arg1)][1].field_0)
        idx = (32 * uint256(stor2[address(arg1)].field_0)) + 224
        s = 0
        while (32 * uint256(stor2[address(arg1)].field_0)) + (32 * uint256(stor2[address(arg1)].field_256)) + 192 > idx:
            mem[idx + 32] = address(stor2[address(arg1)][s + 1].field_256)
            idx = idx + 32
            s = s + 1
            continue 
    mem[(64 * uint256(stor2[address(arg1)].field_0)) + (32 * uint256(stor2[address(arg1)].field_256)) + 320] = uint256(stor2[address(arg1)].field_256)
    mem[(64 * uint256(stor2[address(arg1)].field_0)) + (32 * uint256(stor2[address(arg1)].field_256)) + 352 len 32 * uint256(stor2[address(arg1)].field_256)] = mem[(32 * uint256(stor2[address(arg1)].field_0)) + 224 len 32 * uint256(stor2[address(arg1)].field_256)]
    return Array(len=uint256(stor2[address(arg1)].field_0), data=mem[192 len 32 * uint256(stor2[address(arg1)].field_0)], uint256(stor2[address(arg1)].field_256), mem[(32 * uint256(stor2[address(arg1)].field_0)) + 224 len 32 * uint256(stor2[address(arg1)].field_256)]), 
           (32 * uint256(stor2[address(arg1)].field_0)) + 96
}

function release(uint32 arg1, uint32 arg2, uint32 arg3, bytes20 arg4) payable {
    if stor0[address(msg.sender)]:
        if 0 == stor6.length:
            uint32(stor4.field_0) = arg1
            uint32(stor4.field_32) = arg2
            uint32(stor4.field_64) = arg3
            address(stor4.field_96) = Mask(160, 96, arg4) >> 96
        if uint32(stor4.field_0) == arg1:
            if arg2 == uint32(stor4.field_32):
                if uint32(stor4.field_64) == arg3:
                    if arg4 == address(address(stor4.field_96)):
                        idx = 0
                        while idx < stor6.length:
                            mem[0] = 6
                            if address(stor6[idx].field_0) != msg.sender:
                                idx = idx + 1
                                continue 
                        idx = 0
                        while idx < stor7.length:
                            mem[0] = 7
                            if address(stor7[idx].field_0) != msg.sender:
                                idx = idx + 1
                                continue 
                        stor6.length++
                        if not stor6.length <= stor6.length + 1:
                            idx = stor6.length + 1
                            while stor6.length > idx:
                                uint256(stor6[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor6[stor6.length].field_0) = msg.sender or Mask(96, 160, uint256(stor6[stor6.length].field_0))
                        if stor6.length > uint255(stor1.length.field_1):
                            uint256(stor5) = block.timestamp or Mask(192, 64, uint256(stor5))
                            stor8.length++
                            if not stor8.length <= stor8.length + 1:
                                mem[0] = 8
                                idx = 4 * stor8.length + 1
                                while sha3(8) + (4 * stor8.length) > idx + sha3(mem[0]):
                                    uint256(stor[idx + sha3(mem[0])]) = 0
                                    uint64(stor[idx + sha3(mem[0]) + 1]) = 0
                                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                                    s = sha3(idx + sha3(mem[0]) + 2)
                                    while sha3(idx + sha3(mem[0]) + 2) + uint256(stor[idx + sha3(mem[0]) + 2]) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                                    mem[0] = idx + sha3(mem[0]) + 3
                                    s = sha3(idx + sha3(mem[0]) + 3)
                                    while sha3(idx + sha3(mem[0]) + 3) + uint256(stor[idx + sha3(mem[0]) + 3]) > s:
                                        uint256(stor[s]) = 0
                                        s = s + 1
                                        continue 
                                    idx = idx + 4
                                    continue 
                            uint32(stor8[stor8.length].field_0) = uint32(stor4.field_0)
                            uint32(stor8[stor8.length].field_0) = uint32(stor4.field_0)
                            Mask(224, 0, stor8[stor8.length].field_32) = uint32(stor4.field_32)
                            Mask(192, 0, stor8[stor8.length].field_64) = 0
                            uint32(stor8[stor8.length].field_0) = uint32(stor4.field_0)
                            uint32(stor8[stor8.length].field_32) = uint32(stor4.field_32)
                            Mask(192, 0, stor8[stor8.length].field_64) = uint32(stor4.field_64)
                            address(stor8[stor8.length].field_96) = 0
                            address(stor8[stor8.length].field_96) = 0
                            uint32(stor8[stor8.length].field_0) = uint32(stor4.field_0)
                            uint32(stor8[stor8.length].field_32) = uint32(stor4.field_32)
                            uint32(stor8[stor8.length].field_64) = uint32(stor4.field_64)
                            address(stor8[stor8.length].field_96) = address(stor4.field_96)
                            uint64(stor8[stor8.length].field_256) = uint64(stor5)
                            uint256(stor8[stor8.length].field_512) = stor6.length
                            if not stor6.length:
                                idx = 0
                                while uint256(stor8[stor8.length].field_512) > idx:
                                    address(stor[idx + sha3((4 * stor8.length) + ('name', 'stor8', 8) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor6.length > idx:
                                    uint256(stor[s + sha3((4 * stor8.length) + ('name', 'stor8', 8) + 2)].field_0) = uint256(stor6[idx].field_0)
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor6.length
                                while uint256(stor8[stor8.length].field_512) > idx:
                                    address(stor[idx + sha3((4 * stor8.length) + ('name', 'stor8', 8) + 2)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor8[stor8.length].field_768) = stor7.length
                            if not stor7.length:
                                idx = 0
                                while uint256(stor8[stor8.length].field_768) > idx:
                                    address(stor[idx + sha3((4 * stor8.length) + ('name', 'stor8', 8) + 3)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            else:
                                s = 0
                                idx = 0
                                while stor7.length > idx:
                                    uint256(stor[s + sha3((4 * stor8.length) + ('name', 'stor8', 8) + 3)].field_0) = uint256(stor7[idx].field_0)
                                    s = s + 1
                                    idx = idx + 1
                                    continue 
                                idx = stor7.length
                                while uint256(stor8[stor8.length].field_768) > idx:
                                    address(stor[idx + sha3((4 * stor8.length) + ('name', 'stor8', 8) + 3)].field_0) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor4.field_0) = 0
                            uint64(stor5) = 0
                            stor6.length = 0
                            idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
                            while stor6.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor7.length = 0
                            idx = 0
                            while stor7.length > idx:
                                uint256(stor7[idx].field_0) = 0
                                idx = idx + 1
                                continue 
}

function promote(address arg1) payable {
    if stor0[address(msg.sender)]:
        idx = 0
        while idx < uint256(stor2[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 2)
            if address(stor2[address(arg1)][idx].field_0) != msg.sender:
                idx = idx + 1
                continue 
        idx = 0
        while idx < uint256(stor2[address(arg1)].field_256):
            mem[0] = sha3(address(arg1), 2) + 1
            if address(stor2[address(arg1)][idx + 1].field_0) != msg.sender:
                idx = idx + 1
                continue 
        if uint256(stor2[address(arg1)].field_0) != 0:
            uint256(stor2[address(arg1)].field_0)++
            if not uint256(stor2[address(arg1)].field_0) <= uint256(stor2[address(arg1)].field_0) + 1:
                idx = uint256(stor2[address(arg1)].field_0) + 1
                while uint256(stor2[address(arg1)].field_0) > idx:
                    uint256(stor2[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0) = msg.sender or Mask(96, 160, uint256(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0))
            if uint256(stor2[address(arg1)].field_0) > uint255(stor1.length.field_1):
                if not stor0[address(arg1)]:
                    stor0[address(arg1)] = 1
                    stor1.length++
                    if not stor1.length <= stor1.length + 1:
                        idx = stor1.length + 1
                        while stor1.length > idx:
                            uint256(stor1[idx].field_0) = 0
                            idx = idx + 1
                            continue 
                    uint256(stor1[stor1.length].field_0) = arg1 or Mask(96, 160, uint256(stor1[stor1.length].field_0))
                uint256(stor2[address(arg1)].field_0) = 0
                idx = 0
                while uint256(stor2[address(arg1)].field_0) > idx:
                    uint256(stor2[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                uint256(stor2[address(arg1)].field_256) = 0
                idx = 0
                while uint256(stor2[address(arg1)].field_256) > idx:
                    uint256(stor2[address(arg1)][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    if address(stor3[idx].field_0) != arg1:
                        idx = idx + 1
                        continue 
                    require stor3.length - 1 < stor3.length
                    require idx < stor3.length
                    address(stor3[idx].field_0) = storC257[stor3.length]
                    stor3.length--
                    if not stor3.length <= stor3.length - 1:
                        idx = sha3(3) + stor3.length - 1
                        while sha3(3) + stor3.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
        else:
            if uint256(stor2[address(arg1)].field_256) != 0:
                uint256(stor2[address(arg1)].field_0)++
                if not uint256(stor2[address(arg1)].field_0) <= uint256(stor2[address(arg1)].field_0) + 1:
                    idx = uint256(stor2[address(arg1)].field_0) + 1
                    while uint256(stor2[address(arg1)].field_0) > idx:
                        uint256(stor2[address(arg1)][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0) = msg.sender or Mask(96, 160, uint256(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0))
                if uint256(stor2[address(arg1)].field_0) > uint255(stor1.length.field_1):
                    if not stor0[address(arg1)]:
                        stor0[address(arg1)] = 1
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            idx = stor1.length + 1
                            while stor1.length > idx:
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor1[stor1.length].field_0) = arg1 or Mask(96, 160, uint256(stor1[stor1.length].field_0))
                    uint256(stor2[address(arg1)].field_0) = 0
                    idx = 0
                    while uint256(stor2[address(arg1)].field_0) > idx:
                        uint256(stor2[address(arg1)][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor2[address(arg1)].field_256) = 0
                    idx = 0
                    while uint256(stor2[address(arg1)].field_256) > idx:
                        uint256(stor2[address(arg1)][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        if address(stor3[idx].field_0) != arg1:
                            idx = idx + 1
                            continue 
                        require stor3.length - 1 < stor3.length
                        require idx < stor3.length
                        address(stor3[idx].field_0) = storC257[stor3.length]
                        stor3.length--
                        if not stor3.length <= stor3.length - 1:
                            idx = sha3(3) + stor3.length - 1
                            while sha3(3) + stor3.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
            else:
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = stor3.length + 1
                    while stor3.length > idx:
                        uint256(stor3[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor3[stor3.length].field_0) = arg1 or Mask(96, 160, uint256(stor3[stor3.length].field_0))
                uint256(stor2[address(arg1)].field_0)++
                if not uint256(stor2[address(arg1)].field_0) <= uint256(stor2[address(arg1)].field_0) + 1:
                    idx = uint256(stor2[address(arg1)].field_0) + 1
                    while uint256(stor2[address(arg1)].field_0) > idx:
                        uint256(stor2[address(arg1)][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0) = msg.sender or Mask(96, 160, uint256(stor2[address(arg1)][uint256(stor2[address(arg1)].field_0)].field_0))
                if uint256(stor2[address(arg1)].field_0) > uint255(stor1.length.field_1):
                    if not stor0[address(arg1)]:
                        stor0[address(arg1)] = 1
                        stor1.length++
                        if not stor1.length <= stor1.length + 1:
                            idx = stor1.length + 1
                            while stor1.length > idx:
                                uint256(stor1[idx].field_0) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor1[stor1.length].field_0) = arg1 or Mask(96, 160, uint256(stor1[stor1.length].field_0))
                    uint256(stor2[address(arg1)].field_0) = 0
                    idx = 0
                    while uint256(stor2[address(arg1)].field_0) > idx:
                        uint256(stor2[address(arg1)][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor2[address(arg1)].field_256) = 0
                    idx = 0
                    while uint256(stor2[address(arg1)].field_256) > idx:
                        uint256(stor2[address(arg1)][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        if address(stor3[idx].field_0) != arg1:
                            idx = idx + 1
                            continue 
                        require stor3.length - 1 < stor3.length
                        require idx < stor3.length
                        address(stor3[idx].field_0) = storC257[stor3.length]
                        stor3.length--
                        if not stor3.length <= stor3.length - 1:
                            idx = sha3(3) + stor3.length - 1
                            while sha3(3) + stor3.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
}

function demote(address arg1) payable {
    if stor0[address(msg.sender)]:
        idx = 0
        while idx < uint256(stor2[address(arg1)].field_0):
            mem[0] = sha3(address(arg1), 2)
            if address(stor2[address(arg1)][idx].field_0) != msg.sender:
                idx = idx + 1
                continue 
        idx = 0
        while idx < uint256(stor2[address(arg1)].field_256):
            mem[0] = sha3(address(arg1), 2) + 1
            if address(stor2[address(arg1)][idx + 1].field_0) != msg.sender:
                idx = idx + 1
                continue 
        if uint256(stor2[address(arg1)].field_0) != 0:
            uint256(stor2[address(arg1)].field_256)++
            if not uint256(stor2[address(arg1)].field_256) <= uint256(stor2[address(arg1)].field_256) + 1:
                idx = uint256(stor2[address(arg1)].field_256) + 1
                while uint256(stor2[address(arg1)].field_256) > idx:
                    uint256(stor2[address(arg1)][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + uint256(stor2[address(arg1)].field_256)].field_0) = msg.sender or Mask(96, 160, uint256(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + uint256(stor2[address(arg1)].field_256)].field_0))
            if uint256(stor2[address(arg1)].field_256) > uint255(stor1.length.field_1):
                if stor0[address(arg1)]:
                    stor0[address(arg1)] = 0
                    idx = 0
                    while idx < stor1.length:
                        mem[0] = 1
                        if address(stor1[idx].field_0) != arg1:
                            idx = idx + 1
                            continue 
                        require stor1.length - 1 < stor1.length
                        require idx < stor1.length
                        address(stor1[idx].field_0) = storB10E[stor1.length]
                        stor1.length--
                        if not stor1.length <= stor1.length - 1:
                            idx = sha3(1) + stor1.length - 1
                            while sha3(1) + stor1.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                        uint256(stor4.field_0) = 0
                        uint64(stor5) = 0
                        stor6.length = 0
                        idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
                        while stor6.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                        stor7.length = 0
                        idx = sha3(7)
                        while sha3(7) + stor7.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                        uint256(stor2[address(arg1)].field_0) = 0
                        idx = sha3(sha3(address(arg1), 2))
                        while sha3(sha3(address(arg1), 2)) + uint256(stor2[address(arg1)].field_0) > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                        uint256(stor2[address(arg1)].field_256) = 0
                        idx = sha3(sha3(address(arg1), 2) + 1)
                        while sha3(sha3(address(arg1), 2) + 1) + uint256(stor2[address(arg1)].field_256) > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
                        idx = 0
                        while idx < stor3.length:
                            mem[0] = 3
                            if address(stor3[idx].field_0) != arg1:
                                idx = idx + 1
                                continue 
                            require stor3.length - 1 < stor3.length
                            require idx < stor3.length
                            address(stor3[idx].field_0) = storC257[stor3.length]
                            stor3.length--
                            if not stor3.length <= stor3.length - 1:
                                idx = sha3(3) + stor3.length - 1
                                while sha3(3) + stor3.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                uint256(stor2[address(arg1)].field_0) = 0
                idx = 0
                while uint256(stor2[address(arg1)].field_0) > idx:
                    uint256(stor2[address(arg1)][idx].field_0) = 0
                    idx = idx + 1
                    continue 
                uint256(stor2[address(arg1)].field_256) = 0
                idx = 0
                while uint256(stor2[address(arg1)].field_256) > idx:
                    uint256(stor2[address(arg1)][idx + 1].field_0) = 0
                    idx = idx + 1
                    continue 
                idx = 0
                while idx < stor3.length:
                    mem[0] = 3
                    if address(stor3[idx].field_0) != arg1:
                        idx = idx + 1
                        continue 
                    require stor3.length - 1 < stor3.length
                    require idx < stor3.length
                    address(stor3[idx].field_0) = storC257[stor3.length]
                    stor3.length--
                    if not stor3.length <= stor3.length - 1:
                        idx = sha3(3) + stor3.length - 1
                        while sha3(3) + stor3.length > idx:
                            uint256(stor[idx]) = 0
                            idx = idx + 1
                            continue 
        else:
            if uint256(stor2[address(arg1)].field_256) != 0:
                uint256(stor2[address(arg1)].field_256)++
                if not uint256(stor2[address(arg1)].field_256) <= uint256(stor2[address(arg1)].field_256) + 1:
                    idx = uint256(stor2[address(arg1)].field_256) + 1
                    while uint256(stor2[address(arg1)].field_256) > idx:
                        uint256(stor2[address(arg1)][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + uint256(stor2[address(arg1)].field_256)].field_0) = msg.sender or Mask(96, 160, uint256(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + uint256(stor2[address(arg1)].field_256)].field_0))
                if uint256(stor2[address(arg1)].field_256) > uint255(stor1.length.field_1):
                    if stor0[address(arg1)]:
                        stor0[address(arg1)] = 0
                        idx = 0
                        while idx < stor1.length:
                            mem[0] = 1
                            if address(stor1[idx].field_0) != arg1:
                                idx = idx + 1
                                continue 
                            require stor1.length - 1 < stor1.length
                            require idx < stor1.length
                            address(stor1[idx].field_0) = storB10E[stor1.length]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                idx = sha3(1) + stor1.length - 1
                                while sha3(1) + stor1.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor4.field_0) = 0
                            uint64(stor5) = 0
                            stor6.length = 0
                            idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
                            while stor6.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor7.length = 0
                            idx = sha3(7)
                            while sha3(7) + stor7.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor2[address(arg1)].field_0) = 0
                            idx = sha3(sha3(address(arg1), 2))
                            while sha3(sha3(address(arg1), 2)) + uint256(stor2[address(arg1)].field_0) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor2[address(arg1)].field_256) = 0
                            idx = sha3(sha3(address(arg1), 2) + 1)
                            while sha3(sha3(address(arg1), 2) + 1) + uint256(stor2[address(arg1)].field_256) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < stor3.length:
                                mem[0] = 3
                                if address(stor3[idx].field_0) != arg1:
                                    idx = idx + 1
                                    continue 
                                require stor3.length - 1 < stor3.length
                                require idx < stor3.length
                                address(stor3[idx].field_0) = storC257[stor3.length]
                                stor3.length--
                                if not stor3.length <= stor3.length - 1:
                                    idx = sha3(3) + stor3.length - 1
                                    while sha3(3) + stor3.length > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    uint256(stor2[address(arg1)].field_0) = 0
                    idx = 0
                    while uint256(stor2[address(arg1)].field_0) > idx:
                        uint256(stor2[address(arg1)][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor2[address(arg1)].field_256) = 0
                    idx = 0
                    while uint256(stor2[address(arg1)].field_256) > idx:
                        uint256(stor2[address(arg1)][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        if address(stor3[idx].field_0) != arg1:
                            idx = idx + 1
                            continue 
                        require stor3.length - 1 < stor3.length
                        require idx < stor3.length
                        address(stor3[idx].field_0) = storC257[stor3.length]
                        stor3.length--
                        if not stor3.length <= stor3.length - 1:
                            idx = sha3(3) + stor3.length - 1
                            while sha3(3) + stor3.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
            else:
                stor3.length++
                if not stor3.length <= stor3.length + 1:
                    idx = stor3.length + 1
                    while stor3.length > idx:
                        uint256(stor3[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor3[stor3.length].field_0) = arg1 or Mask(96, 160, uint256(stor3[stor3.length].field_0))
                uint256(stor2[address(arg1)].field_256)++
                if not uint256(stor2[address(arg1)].field_256) <= uint256(stor2[address(arg1)].field_256) + 1:
                    idx = uint256(stor2[address(arg1)].field_256) + 1
                    while uint256(stor2[address(arg1)].field_256) > idx:
                        uint256(stor2[address(arg1)][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                uint256(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + uint256(stor2[address(arg1)].field_256)].field_0) = msg.sender or Mask(96, 160, uint256(stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor2', 2))) + uint256(stor2[address(arg1)].field_256)].field_0))
                if uint256(stor2[address(arg1)].field_256) > uint255(stor1.length.field_1):
                    if stor0[address(arg1)]:
                        stor0[address(arg1)] = 0
                        idx = 0
                        while idx < stor1.length:
                            mem[0] = 1
                            if address(stor1[idx].field_0) != arg1:
                                idx = idx + 1
                                continue 
                            require stor1.length - 1 < stor1.length
                            require idx < stor1.length
                            address(stor1[idx].field_0) = storB10E[stor1.length]
                            stor1.length--
                            if not stor1.length <= stor1.length - 1:
                                idx = sha3(1) + stor1.length - 1
                                while sha3(1) + stor1.length > idx:
                                    uint256(stor[idx]) = 0
                                    idx = idx + 1
                                    continue 
                            uint256(stor4.field_0) = 0
                            uint64(stor5) = 0
                            stor6.length = 0
                            idx = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
                            while stor6.length - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                            stor7.length = 0
                            idx = sha3(7)
                            while sha3(7) + stor7.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor2[address(arg1)].field_0) = 0
                            idx = sha3(sha3(address(arg1), 2))
                            while sha3(sha3(address(arg1), 2)) + uint256(stor2[address(arg1)].field_0) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                            uint256(stor2[address(arg1)].field_256) = 0
                            idx = sha3(sha3(address(arg1), 2) + 1)
                            while sha3(sha3(address(arg1), 2) + 1) + uint256(stor2[address(arg1)].field_256) > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
                            idx = 0
                            while idx < stor3.length:
                                mem[0] = 3
                                if address(stor3[idx].field_0) != arg1:
                                    idx = idx + 1
                                    continue 
                                require stor3.length - 1 < stor3.length
                                require idx < stor3.length
                                address(stor3[idx].field_0) = storC257[stor3.length]
                                stor3.length--
                                if not stor3.length <= stor3.length - 1:
                                    idx = sha3(3) + stor3.length - 1
                                    while sha3(3) + stor3.length > idx:
                                        uint256(stor[idx]) = 0
                                        idx = idx + 1
                                        continue 
                    uint256(stor2[address(arg1)].field_0) = 0
                    idx = 0
                    while uint256(stor2[address(arg1)].field_0) > idx:
                        uint256(stor2[address(arg1)][idx].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint256(stor2[address(arg1)].field_256) = 0
                    idx = 0
                    while uint256(stor2[address(arg1)].field_256) > idx:
                        uint256(stor2[address(arg1)][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    idx = 0
                    while idx < stor3.length:
                        mem[0] = 3
                        if address(stor3[idx].field_0) != arg1:
                            idx = idx + 1
                            continue 
                        require stor3.length - 1 < stor3.length
                        require idx < stor3.length
                        address(stor3[idx].field_0) = storC257[stor3.length]
                        stor3.length--
                        if not stor3.length <= stor3.length - 1:
                            idx = sha3(3) + stor3.length - 1
                            while sha3(3) + stor3.length > idx:
                                uint256(stor[idx]) = 0
                                idx = idx + 1
                                continue 
}



}
