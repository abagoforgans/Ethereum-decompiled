contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
uint256 stor9;
array of struct stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;

function _fallback() payable {
    stor0 = 100 * 10^6
    stor1 = 20000
    stor5 = code.data[7389 len 32]
    stor4 = code.data[7389 len 32]
    stor9 = 1
    stor7[address(msg.sender)] = 1
    stor8[1] = msg.sender or Mask(96, 160, stor8[1])
    stor6['mralfredwooden'] = msg.sender or Mask(96, 160, stor6['mralfredwooden'])
    stor10[stor9].field_0 += 1000
    stor10[stor9].field_1024 = 0x6d72616c66726564776f6f64656e00000000000000000000000000000000001c
    idx = 0
    while stor10[stor9][4].length + 31 / 32 > idx:
        stor10[stor9][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    stor11[address(msg.sender)]++
    stor12[address(msg.sender)]++
    stor9++
    return code.data[420 len 6969]
}



// =====================  Runtime code  =====================


uint256 sub_141c0825;
uint256 sub_de6ae99e;
uint256 sub_a43c84a0;
uint256 sub_5d5c1a16;
address stor4;
uint256 stor4;
address stor5;
uint256 stor5;
mapping of address stor6;
mapping of uint256 stor7;
mapping of address stor8;
uint256 stor9;
array of struct sub_227d9f65;
mapping of uint256 stor11;
mapping of uint256 stor12;

function sub_141c0825(?) payable {
    return sub_141c0825
}

function sub_227d9f65(?) payable {
    return uint256(sub_227d9f65[stor7[address(arg1)]].field_0)
}

function sub_5d5c1a16(?) payable {
    return sub_5d5c1a16
}

function sub_9b55f40d(?) payable {
    require arg1 - 1 < 8
    return uint256(sub_227d9f65[stor7[address(arg2)]][arg1].field_7168)
}

function sub_a43c84a0(?) payable {
    return sub_a43c84a0
}

function sub_ae8c0bb2(?) payable {
    return uint256(sub_227d9f65[stor7[address(arg1)]].field_256)
}

function sub_d53ec0da(?) payable {
    require arg1 - 1 < 8
    return uint256(sub_227d9f65[stor7[address(arg2)]][arg1].field_3072)
}

function sub_dbe6934c(?) payable {
    return uint256(sub_227d9f65[stor7[address(arg1)]].field_512)
}

function sub_de6ae99e(?) payable {
    return sub_de6ae99e
}

function sub_ecc44133(?) payable {
    return uint256(sub_227d9f65[stor7[address(arg1)]].field_768)
}

function _fallback() payable {
  stop
}

function sub_70713738(?) payable {
    require msg.sender == address(stor4)
    sub_141c0825 = arg1
}

function sub_e591d072(?) payable {
    require address(stor4) == msg.sender
    sub_de6ae99e = arg1
}

function sub_a5d87c40(?) payable {
    if address(stor6[arg1[all]]) <= 0:
        return 0
    return 1
}

function checkPlayer(address arg1) payable {
    if 0 == stor12[address(arg1)]:
        return 0
    return 1
}

function checkPartner(address arg1) payable {
    if 0 == stor11[address(arg1)]:
        return 0
    return 1
}

function setPartner(address arg1) payable {
    require msg.sender == address(stor4)
    stor11[address(arg1)]++
}

function constants() payable {
    return sub_141c0825, sub_de6ae99e, sub_a43c84a0, sub_5d5c1a16, address(stor4), address(stor5)
}

function sub_90848ac1(?) payable {
    if uint256(sub_227d9f65[stor7[address(arg1)]].field_0) <= 0:
        return 0
    return 1
}

function sub_3544c28b(?) payable {
    require msg.sender == address(stor4)
    sub_de6ae99e -= arg2
    sub_5d5c1a16 += arg2
    uint256(sub_227d9f65[stor7[address(arg1)]].field_512) += arg2
}

function sub_cd268063(?) payable {
    require address(stor4) == msg.sender
    sub_141c0825 -= arg2
    sub_a43c84a0 += arg2
    uint256(sub_227d9f65[stor7[address(arg1)]].field_256) += arg2
}

function setMainAddress(address arg1) payable {
    require address(stor4) == msg.sender
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
    uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
}

function sub_95f1d11d(?) payable {
    require msg.sender == address(stor4)
    uint256(sub_227d9f65[stor7[address(arg1)]].field_256) -= arg3
    uint256(sub_227d9f65[stor7[address(arg2)]].field_256) += arg3
}

function getPlayers() payable {
    idx = 0
    s = 0
    while idx < 7:
        mem[0] = stor7[address(msg.sender)]
        mem[32] = 10
        require idx < 8
        idx = idx + 1
        s = s + uint256(sub_227d9f65[stor7[address(msg.sender)]][idx].field_7424)
        continue 
    return (0x180ea14e592bc647d081ee78ba6d7c3465fc3bb29eff2fd359a19f381 * s)
}

function getPartners() payable {
    idx = 0
    s = 0
    while idx < 7:
        mem[0] = stor7[address(msg.sender)]
        mem[32] = 10
        require idx < 8
        idx = idx + 1
        s = s + uint256(sub_227d9f65[stor7[address(msg.sender)]][idx].field_3328)
        continue 
    return (0x180ea14e592bc647d081ee78ba6d7c3465fc3bb29eff2fd359a19f381 * s)
}

function sub_7cf746e1(?) payable {
    mem[352] = 0
    mem[384 len 224] = 0
    idx = 0
    while idx < 7:
        require idx < 8
        mem[0] = uint256(sub_227d9f65[stor7[address(arg1)]][idx].field_1280)
        mem[32] = 8
        mem[(32 * idx) + 352] = address(stor8[uint256(stor10[stor7[address(arg1)]][idx].field_1280)])
        idx = idx + 1
        continue 
    return memory
      from 352
       len 256
}

function sub_c1315604(?) payable {
    mem[352] = 0
    mem[384 len 224] = 0
    idx = 0
    while idx < 7:
        require idx < 8
        mem[0] = uint256(sub_227d9f65[stor7[address(arg1)]][idx].field_5376)
        mem[32] = 8
        mem[(32 * idx) + 352] = address(stor8[uint256(stor10[stor7[address(arg1)]][idx].field_5376)])
        idx = idx + 1
        continue 
    return memory
      from 352
       len 256
}

function sub_a94a2cf3(?) payable {
    require uint256(sub_227d9f65[stor7[address(msg.sender)]].field_0) != 0
    require uint256(sub_227d9f65[stor7[address(msg.sender)]].field_0) >= arg2
    require arg2 + uint256(sub_227d9f65[stor7[address(arg1)]].field_0) >= uint256(sub_227d9f65[stor7[address(arg1)]].field_0)
    uint256(sub_227d9f65[stor7[address(msg.sender)]].field_0) -= arg2
    uint256(sub_227d9f65[stor7[address(arg1)]].field_0) += arg2
}

function sub_66b87b2a(?) payable {
    require msg.sender == address(stor4)
    if stor7[address(arg1)] > 0:
        uint256(stor8[stor7[address(arg1)]]) = arg2 or Mask(96, 160, uint256(stor8[stor7[address(arg1)]]))
        stor7[address(arg2)] = stor7[address(arg1)]
        mem[96] = uint256(sub_227d9f65[stor7[address(arg1)]][4].field_0)
        idx = 96
        s = 0
        while sub_227d9f65[stor7[address(arg1)]][4].length + 96 > idx + 32:
            mem[idx + 32] = uint256(sub_227d9f65[stor7[address(arg1)]][s + 4].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[sub_227d9f65[stor7[address(arg1)]][4].length + 96] = 6
        uint256(stor[sha3(mem[96 len stor10[stor7[address(arg1)]][4].length + 32])]) = arg2 or Mask(96, 160, uint256(stor[sha3(mem[96 len stor10[stor7[address(arg1)]][4].length + 32])]))
        stor7[address(arg1)] = 0
        stor11[address(arg1)] = 0
        stor11[address(arg2)]++
}

function sub_48a1eadc(?) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require msg.sender == address(stor4)
    if 0 == stor11[address(arg1)]:
        if stor11[address(stor6[arg3[all]])] > 0:
            stor7[address(arg1)] = stor9
            uint256(stor8[stor9]) = arg1 or Mask(96, 160, uint256(stor8[stor9]))
            stor11[address(arg1)]++
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg2.length] = arg2[all]
            mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
            if address(stor6[arg2[all]]) != 0:
                uint256(sub_227d9f65[stor9].field_768) = arg4
                uint256(sub_227d9f65[stor9][4][].field_0) = Array(len=arg2.length, data=arg2[all])
                uint256(sub_227d9f65[stor9].field_1280) = stor7[address(stor6[arg3[all]])]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                mem[0] = stor7[address(stor6[arg3[all]])]
                uint256(sub_227d9f65[stor7[address(stor6[arg3[all]])]].field_3328)++
                idx = 0
                s = 0
                while idx < 7:
                    _562 = mem[64]
                    _563 = mem[ceil32(arg2.length) + 128]
                    mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                    mem[_563 + mem[64]] = 6
                    mem[0] = address(stor[sha3(mem[mem[64] len _563 + _562 + -mem[64] + 32])])
                    mem[0] = stor7[mem[0]]
                    mem[32] = 10
                    require idx < 8
                    if 0 == uint256(sub_227d9f65[mem[0]][idx].field_1280):
                        idx = idx + 1
                        s = s
                        continue 
                    _575 = mem[ceil32(arg2.length) + 128]
                    mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                    mem[_575 + mem[64]] = 6
                    mem[0] = address(stor[sha3(mem[mem[64] len _575 + 32])])
                    mem[0] = stor7[mem[0]]
                    require idx < 8
                    require s + 1 < 8
                    uint256(sub_227d9f65[stor9][s].field_1536) = uint256(sub_227d9f65[mem[0]][idx].field_1280)
                    _589 = mem[ceil32(arg2.length) + 128]
                    mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                    mem[_589 + mem[64]] = 6
                    mem[0] = address(stor[sha3(mem[mem[64] len _589 + 32])])
                    mem[0] = stor7[mem[0]]
                    require idx < 8
                    mem[0] = uint256(sub_227d9f65[mem[0]][idx].field_1280)
                    mem[32] = 10
                    require s + 1 < 8
                    uint256(sub_227d9f65[mem[0]][s].field_3584)++
                    idx = idx + 1
                    s = s + 1
                    continue 
            else:
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg2.length] = arg2[all]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                uint256(stor6[arg2[all]]) = arg1 or Mask(96, 160, uint256(stor6[arg2[all]]))
                uint256(sub_227d9f65[stor9].field_768) = arg4
                uint256(sub_227d9f65[stor9][4][].field_0) = Array(len=arg2.length, data=arg2[all])
                uint256(sub_227d9f65[stor9].field_1280) = stor7[address(stor6[arg3[all]])]
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                mem[0] = stor7[address(stor6[arg3[all]])]
                uint256(sub_227d9f65[stor7[address(stor6[arg3[all]])]].field_3328)++
                idx = 0
                s = 0
                while idx < 7:
                    _568 = mem[64]
                    _569 = mem[ceil32(arg2.length) + 128]
                    mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                    mem[_569 + mem[64]] = 6
                    mem[0] = address(stor[sha3(mem[mem[64] len _569 + _568 + -mem[64] + 32])])
                    mem[0] = stor7[mem[0]]
                    mem[32] = 10
                    require idx < 8
                    if 0 == uint256(sub_227d9f65[mem[0]][idx].field_1280):
                        idx = idx + 1
                        s = s
                        continue 
                    _581 = mem[ceil32(arg2.length) + 128]
                    mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                    mem[_581 + mem[64]] = 6
                    mem[0] = address(stor[sha3(mem[mem[64] len _581 + 32])])
                    mem[0] = stor7[mem[0]]
                    require idx < 8
                    require s + 1 < 8
                    uint256(sub_227d9f65[stor9][s].field_1536) = uint256(sub_227d9f65[mem[0]][idx].field_1280)
                    _594 = mem[64]
                    _595 = mem[ceil32(arg2.length) + 128]
                    mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                    mem[_595 + mem[64]] = 6
                    mem[0] = address(stor[sha3(mem[mem[64] len _595 + _594 + -mem[64] + 32])])
                    mem[0] = stor7[mem[0]]
                    require idx < 8
                    mem[0] = uint256(sub_227d9f65[mem[0]][idx].field_1280)
                    mem[32] = 10
                    require s + 1 < 8
                    uint256(sub_227d9f65[mem[0]][s].field_3584)++
                    idx = idx + 1
                    s = s + 1
                    continue 
            stor9++
}

function sub_ab01d9a3(?) payable {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 160
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    require msg.sender == address(stor4)
    if 0 == stor12[address(arg1)]:
        if stor12[address(stor6[arg3[all]])] > 0:
            if stor11[address(arg1)]:
                stor12[address(arg1)]++
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg2.length] = arg2[all]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                if address(stor6[arg2[all]]) != 0:
                    uint256(sub_227d9f65[stor7[address(arg1)]][4][].field_0) = Array(len=arg2.length, data=arg2[all])
                    if stor11[address(arg1)]:
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_5376) = stor7[address(arg1)]
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_7424)++
                    else:
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_5376) = stor7[address(stor6[arg3[all]])]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
                        mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                        mem[0] = address(stor6[arg3[all]])
                        if 0 == stor11[address(stor6[arg3[all]])]:
                            idx = 0
                            s = 0
                            while idx < 7:
                                _1727 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1727 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1727 + 32])])
                                mem[0] = stor7[mem[0]]
                                mem[32] = 10
                                require idx < 8
                                if 0 == uint256(sub_227d9f65[mem[0]][idx].field_5376):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                _1750 = mem[64]
                                _1751 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1751 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1751 + _1750 + -mem[64] + 32])])
                                mem[0] = stor7[mem[0]]
                                require idx < 8
                                require s + 1 < 8
                                uint256(sub_227d9f65[stor7[address(arg1)]][s].field_5632) = uint256(sub_227d9f65[mem[0]][idx].field_5376)
                                _1782 = mem[64]
                                _1783 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1783 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1783 + _1782 + -mem[64] + 32])])
                                mem[0] = stor7[mem[0]]
                                require idx < 8
                                mem[0] = uint256(sub_227d9f65[mem[0]][idx].field_5376)
                                mem[0] = address(stor8[mem[0]])
                                mem[32] = 11
                                if 0 == stor11[mem[0]]:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                _1815 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1815 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1815 + 32])])
                                mem[0] = stor7[mem[0]]
                                require idx < 8
                                mem[0] = uint256(sub_227d9f65[mem[0]][idx].field_5376)
                                require s + 1 < 8
                                uint256(sub_227d9f65[mem[0]][s].field_7680)++
                        else:
                            uint256(sub_227d9f65[stor7[address(stor6[arg3[all]])]].field_7424)++
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg2.length] = arg2[all]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                    uint256(stor6[arg2[all]]) = arg1 or Mask(96, 160, uint256(stor6[arg2[all]]))
                    uint256(sub_227d9f65[stor7[address(arg1)]][4][].field_0) = Array(len=arg2.length, data=arg2[all])
                    if stor11[address(arg1)]:
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_5376) = stor7[address(arg1)]
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_7424)++
                    else:
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_5376) = stor7[address(stor6[arg3[all]])]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
                        mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                        mem[0] = address(stor6[arg3[all]])
                        if 0 == stor11[address(stor6[arg3[all]])]:
                            idx = 0
                            s = 0
                            while idx < 7:
                                _1732 = mem[64]
                                _1733 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1733 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1733 + _1732 + -mem[64] + 32])])
                                mem[0] = stor7[mem[0]]
                                mem[32] = 10
                                require idx < 8
                                if 0 == uint256(sub_227d9f65[mem[0]][idx].field_5376):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                _1756 = mem[64]
                                _1757 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1757 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1757 + _1756 + -mem[64] + 32])])
                                mem[0] = stor7[mem[0]]
                                require idx < 8
                                require s + 1 < 8
                                uint256(sub_227d9f65[stor7[address(arg1)]][s].field_5632) = uint256(sub_227d9f65[mem[0]][idx].field_5376)
                                _1789 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1789 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1789 + 32])])
                                mem[0] = stor7[mem[0]]
                                require idx < 8
                                mem[0] = uint256(sub_227d9f65[mem[0]][idx].field_5376)
                                mem[0] = address(stor8[mem[0]])
                                mem[32] = 11
                                if 0 == stor11[mem[0]]:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                _1821 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1821 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1821 + 32])])
                                mem[0] = stor7[mem[0]]
                                require idx < 8
                                mem[0] = uint256(sub_227d9f65[mem[0]][idx].field_5376)
                                require s + 1 < 8
                                uint256(sub_227d9f65[mem[0]][s].field_7680)++
                        else:
                            uint256(sub_227d9f65[stor7[address(stor6[arg3[all]])]].field_7424)++
            else:
                stor7[address(arg1)] = stor9
                uint256(stor8[stor9]) = arg1 or Mask(96, 160, uint256(stor8[stor9]))
                stor9++
                stor12[address(arg1)]++
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg2.length] = arg2[all]
                mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                if address(stor6[arg2[all]]) != 0:
                    uint256(sub_227d9f65[stor7[address(arg1)]][4][].field_0) = Array(len=arg2.length, data=arg2[all])
                    if stor11[address(arg1)]:
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_5376) = stor7[address(arg1)]
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_7424)++
                    else:
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_5376) = stor7[address(stor6[arg3[all]])]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
                        mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                        mem[0] = address(stor6[arg3[all]])
                        if 0 == stor11[address(stor6[arg3[all]])]:
                            idx = 0
                            s = 0
                            while idx < 7:
                                _1738 = mem[64]
                                _1739 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1739 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1739 + _1738 + -mem[64] + 32])])
                                mem[0] = stor7[mem[0]]
                                mem[32] = 10
                                require idx < 8
                                if 0 == uint256(sub_227d9f65[mem[0]][idx].field_5376):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                _1762 = mem[64]
                                _1763 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1763 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1763 + _1762 + -mem[64] + 32])])
                                mem[0] = stor7[mem[0]]
                                require idx < 8
                                require s + 1 < 8
                                uint256(sub_227d9f65[stor7[address(arg1)]][s].field_5632) = uint256(sub_227d9f65[mem[0]][idx].field_5376)
                                _1795 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1795 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1795 + 32])])
                                mem[0] = stor7[mem[0]]
                                require idx < 8
                                mem[0] = uint256(sub_227d9f65[mem[0]][idx].field_5376)
                                mem[0] = address(stor8[mem[0]])
                                mem[32] = 11
                                if 0 == stor11[mem[0]]:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                _1826 = mem[64]
                                _1827 = mem[ceil32(arg2.length) + 128]
                                mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
                                mem[_1827 + mem[64]] = 6
                                mem[0] = address(stor[sha3(mem[mem[64] len _1827 + _1826 + -mem[64] + 32])])
                                mem[0] = stor7[mem[0]]
                                require idx < 8
                                mem[0] = uint256(sub_227d9f65[mem[0]][idx].field_5376)
                                require s + 1 < 8
                                uint256(sub_227d9f65[mem[0]][s].field_7680)++
                        else:
                            uint256(sub_227d9f65[stor7[address(stor6[arg3[all]])]].field_7424)++
                else:
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg2.length] = arg2[all]
                    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                    uint256(stor6[arg2[all]]) = arg1 or Mask(96, 160, uint256(stor6[arg2[all]]))
                    uint256(sub_227d9f65[stor7[address(arg1)]][4][].field_0) = Array(len=arg2.length, data=arg2[all])
                    if stor11[address(arg1)]:
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_5376) = stor7[address(arg1)]
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_7424)++
                    else:
                        uint256(sub_227d9f65[stor7[address(arg1)]].field_5376) = stor7[address(stor6[arg3[all]])]
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
                        mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                        if 0 == stor11[address(stor6[arg3[all]])]:
                            idx = 0
                            s = 0
                            while idx < 7:
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = mem[ceil32(arg2.length) + 160 len arg3.length]
                                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                                mem[0] = stor7[address(stor[sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length + 32])])]
                                mem[32] = 10
                                require idx < 8
                                if 0 == uint256(sub_227d9f65[stor7[address(stor[sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length + 32])])]][idx].field_5376):
                                    idx = idx + 1
                                    s = s
                                    continue 
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = mem[ceil32(arg2.length) + 160 len arg3.length]
                                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                                require idx < 8
                                require s + 1 < 8
                                uint256(sub_227d9f65[stor7[address(arg1)]][s].field_5632) = uint256(sub_227d9f65[stor7[address(stor[sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length + 32])])]][idx].field_5376)
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = mem[ceil32(arg2.length) + 160 len arg3.length]
                                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                                require idx < 8
                                mem[0] = address(stor8[uint256(stor10[stor7[address(stor[sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length + 32])])]][idx].field_5376)])
                                mem[32] = 11
                                if 0 == stor11[address(stor8[uint256(stor10[stor7[address(stor[sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length + 32])])]][idx].field_5376)])]:
                                    idx = idx + 1
                                    s = s + 1
                                    continue 
                                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = mem[ceil32(arg2.length) + 160 len arg3.length]
                                mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
                                require idx < 8
                                require s + 1 < 8
                                uint256(sub_227d9f65[uint256(sub_227d9f65[stor7[address(stor[sha3(mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length + 32])])]][idx].field_5376)][s].field_7680)++
                        else:
                            uint256(sub_227d9f65[stor7[address(stor6[arg3[all]])]].field_7424)++
}



}
