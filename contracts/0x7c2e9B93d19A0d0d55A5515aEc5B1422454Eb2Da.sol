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

function _fallback() payable {
    stor5 = code.data[3939 len 32]
    stor4 = code.data[3939 len 32]
    stor0 = 100 * 10^6
    stor1 = 25000
    stor9 = 1
    stor7[address(msg.sender)] = 1
    stor8[1] = msg.sender or Mask(96, 160, stor8[1])
    stor6['mralfredwooden'] = msg.sender or Mask(96, 160, stor6['mralfredwooden'])
    stor10[stor9].field_768 = 0x6d72616c66726564776f6f64656e00000000000000000000000000000000001c
    idx = 0
    while stor10[stor9][3].length + 31 / 32 > idx:
        stor10[stor9][idx + 3].field_0 = 0
        idx = idx + 1
        continue 
    stor11[address(msg.sender)]++
    stor9++
    return code.data[388 len 3551]
}



// =====================  Runtime code  =====================


uint256 sub_141c0825;
uint256 sub_de6ae99e;
uint256 sub_a43c84a0;
uint256 sub_5d5c1a16;
address stor4;
uint256 stor4;
uint256 stor5;
mapping of address stor6;
mapping of uint256 stor7;
mapping of address stor8;
uint256 stor9;
array of struct sub_ae8c0bb2;
mapping of uint256 stor11;

function sub_141c0825(?) payable {
    return sub_141c0825
}

function sub_5d5c1a16(?) payable {
    return sub_5d5c1a16
}

function sub_a43c84a0(?) payable {
    return sub_a43c84a0
}

function sub_ae8c0bb2(?) payable {
    return uint256(sub_ae8c0bb2[stor7[address(arg1)]].field_0)
}

function sub_d53ec0da(?) payable {
    require arg1 - 1 < 8
    return uint256(sub_ae8c0bb2[stor7[address(arg2)]][arg1].field_2816)
}

function sub_dbe6934c(?) payable {
    return uint256(sub_ae8c0bb2[stor7[address(arg1)]].field_256)
}

function sub_de6ae99e(?) payable {
    return sub_de6ae99e
}

function sub_ecc44133(?) payable {
    return uint256(sub_ae8c0bb2[stor7[address(arg1)]].field_512)
}

function init() payable {
  stop
}

function _fallback() payable {
  stop
}

function sub_70713738(?) payable {
    require address(stor4) == msg.sender
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

function checkPartner(address arg1) payable {
    if 0 == stor11[address(arg1)]:
        return 0
    return 1
}

function setMainAddress(address arg1) payable {
    require address(stor4) == msg.sender
    uint256(stor4) = arg1 or Mask(96, 160, uint256(stor4))
    stor5 = arg1 or Mask(96, 160, stor5)
}

function sub_cd268063(?) payable {
    require address(stor4) == msg.sender
    sub_141c0825 -= arg2
    sub_a43c84a0 += arg2
    uint256(sub_ae8c0bb2[stor7[address(arg1)]].field_0) += arg2
}

function sub_3544c28b(?) payable {
    require address(stor4) == msg.sender
    sub_de6ae99e -= arg2
    sub_5d5c1a16 += arg2
    uint256(sub_ae8c0bb2[stor7[address(arg1)]].field_256) += arg2
}

function sub_7cf746e1(?) payable {
    mem[352] = 0
    mem[384 len 224] = 0
    idx = 0
    while idx < 7:
        require idx < 8
        mem[0] = uint256(sub_ae8c0bb2[stor7[address(arg1)]][idx].field_1024)
        mem[32] = 8
        mem[(32 * idx) + 352] = address(stor8[uint256(stor10[stor7[address(arg1)]][idx].field_1024)])
        idx = idx + 1
        continue 
    return memory
      from 352
       len 256
}

function sub_66b87b2a(?) payable {
    require address(stor4) == msg.sender
    if stor7[address(arg1)] > 0:
        uint256(stor8[stor7[address(arg1)]]) = arg2 or Mask(96, 160, uint256(stor8[stor7[address(arg1)]]))
        stor7[address(arg2)] = stor7[address(arg1)]
        mem[96] = uint256(sub_ae8c0bb2[stor7[address(arg1)]][3].field_0)
        idx = 96
        s = 0
        while sub_ae8c0bb2[stor7[address(arg1)]][3].length + 96 > idx + 32:
            mem[idx + 32] = uint256(sub_ae8c0bb2[stor7[address(arg1)]][s + 3].field_256)
            idx = idx + 32
            s = s + 1
            continue 
        mem[sub_ae8c0bb2[stor7[address(arg1)]][3].length + 96] = 6
        uint256(stor[sha3(mem[96 len stor10[stor7[address(arg1)]][3].length + 32])]) = arg2 or Mask(96, 160, uint256(stor[sha3(mem[96 len stor10[stor7[address(arg1)]][3].length + 32])]))
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
    require 0 == stor11[address(arg1)]
    require stor11[address(stor6[arg3[all]])] > 0
    stor7[address(arg1)] = stor9
    uint256(stor8[stor9]) = arg1 or Mask(96, 160, uint256(stor8[stor9]))
    stor11[address(arg1)]++
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg2.length] = arg2[all]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
    if address(stor6[arg2[all]]) != 0:
        uint256(sub_ae8c0bb2[stor9].field_512) = arg4
        uint256(sub_ae8c0bb2[stor9][3][].field_0) = Array(len=arg2.length, data=arg2[all])
        uint256(sub_ae8c0bb2[stor9].field_1024) = stor7[address(stor6[arg3[all]])]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
        mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
        mem[0] = stor7[address(stor6[arg3[all]])]
        uint256(sub_ae8c0bb2[stor7[address(stor6[arg3[all]])]].field_3072)++
        idx = 0
        s = 0
        while idx < 7:
            _562 = mem[ceil32(arg2.length) + 128]
            mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            mem[_562 + mem[64]] = 6
            mem[0] = address(stor[sha3(mem[mem[64] len _562 + 32])])
            mem[0] = stor7[mem[0]]
            mem[32] = 10
            require idx < 8
            if 0 == uint256(sub_ae8c0bb2[mem[0]][idx].field_1024):
                idx = idx + 1
                s = s
                continue 
            _574 = mem[ceil32(arg2.length) + 128]
            mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            mem[_574 + mem[64]] = 6
            mem[0] = address(stor[sha3(mem[mem[64] len _574 + 32])])
            mem[0] = stor7[mem[0]]
            require idx < 8
            require s + 1 < 8
            uint256(sub_ae8c0bb2[stor9][s].field_1280) = uint256(sub_ae8c0bb2[mem[0]][idx].field_1024)
            _587 = mem[64]
            _588 = mem[ceil32(arg2.length) + 128]
            mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            mem[_588 + mem[64]] = 6
            mem[0] = address(stor[sha3(mem[mem[64] len _588 + _587 + -mem[64] + 32])])
            mem[0] = stor7[mem[0]]
            mem[32] = 10
            require idx < 8
            mem[0] = uint256(sub_ae8c0bb2[mem[0]][idx].field_1024)
            require s + 1 < 8
            uint256(sub_ae8c0bb2[mem[0]][s].field_3328)++
            idx = idx + 1
            s = s + 1
            continue 
    else:
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg2.length] = arg2[all]
        mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
        uint256(stor6[arg2[all]]) = arg1 or Mask(96, 160, uint256(stor6[arg2[all]]))
        uint256(sub_ae8c0bb2[stor9].field_512) = arg4
        uint256(sub_ae8c0bb2[stor9][3][].field_0) = Array(len=arg2.length, data=arg2[all])
        uint256(sub_ae8c0bb2[stor9].field_1024) = stor7[address(stor6[arg3[all]])]
        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len arg3.length] = arg3[all]
        mem[arg3.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = 6
        mem[0] = stor7[address(stor6[arg3[all]])]
        uint256(sub_ae8c0bb2[stor7[address(stor6[arg3[all]])]].field_3072)++
        idx = 0
        s = 0
        while idx < 7:
            _567 = mem[64]
            _568 = mem[ceil32(arg2.length) + 128]
            mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            mem[_568 + mem[64]] = 6
            mem[0] = address(stor[sha3(mem[mem[64] len _568 + _567 + -mem[64] + 32])])
            mem[0] = stor7[mem[0]]
            mem[32] = 10
            require idx < 8
            if 0 == uint256(sub_ae8c0bb2[mem[0]][idx].field_1024):
                idx = idx + 1
                s = s
                continue 
            _579 = mem[64]
            _580 = mem[ceil32(arg2.length) + 128]
            mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            mem[_580 + mem[64]] = 6
            mem[0] = address(stor[sha3(mem[mem[64] len _580 + _579 + -mem[64] + 32])])
            mem[0] = stor7[mem[0]]
            require idx < 8
            require s + 1 < 8
            uint256(sub_ae8c0bb2[stor9][s].field_1280) = uint256(sub_ae8c0bb2[mem[0]][idx].field_1024)
            _593 = mem[64]
            _594 = mem[ceil32(arg2.length) + 128]
            mem[mem[64] len mem[ceil32(arg2.length) + 128]] = mem[ceil32(arg2.length) + 160 len mem[ceil32(arg2.length) + 128]]
            mem[_594 + mem[64]] = 6
            mem[0] = address(stor[sha3(mem[mem[64] len _594 + _593 + -mem[64] + 32])])
            mem[0] = stor7[mem[0]]
            mem[32] = 10
            require idx < 8
            mem[0] = uint256(sub_ae8c0bb2[mem[0]][idx].field_1024)
            require s + 1 < 8
            uint256(sub_ae8c0bb2[mem[0]][s].field_3328)++
            idx = idx + 1
            s = s + 1
            continue 
    stor9++
}



}
