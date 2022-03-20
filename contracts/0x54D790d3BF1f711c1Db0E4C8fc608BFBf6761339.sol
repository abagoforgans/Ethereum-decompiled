contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
uint256 stor0;
mapping of uint64 stor1;
array of struct stor2;
uint64 stor4;
uint256 stor4;

function _fallback() payable {
    mem[96 len -7132] = code.data[7778 len -7132]
    uint256(stor0.field_0) = msg.sender or Mask(96, 160, uint256(stor0.field_0))
    uint8(stor0.field_160) = 1
    uint256(stor4) = uint64(stor4) + 1 or Mask(192, 64, uint256(stor4))
    stor1[address(msg.sender)] = uint64(stor4)
    mem[64] = -6908
    stor2[address(msg.sender)].field_0 = mem[96]
    stor2[address(msg.sender)].field_256 = block.timestamp
    stor2[address(msg.sender)][2][].field_0 = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[address(msg.sender)].field_768 = msg.sender or Mask(96, 160, stor2[address(msg.sender)].field_768)
    return code.data[646 len 7132]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint64 sub_ae842caa;
mapping of struct details;
mapping of struct sub_6bc74fe0;
uint64 sub_ea9613ad;
uint256 stor4;
uint128 stor5; offset 160
address stor5;
uint256 sub_2332186d;
array of struct sub_cb5dd855;
uint256 sub_3c246b28;

function sub_2332186d(?) payable {
    return sub_2332186d
}

function details(address arg1) payable {
    mem[256] = details[arg1][2].field_0
    idx = 256
    s = 0
    while details[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = details[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return details[arg1].field_0, 
           details[arg1].field_256,
           Array(len=details[arg1][2].length, data=mem[256 len details[arg1][2].length + (floor32(details[arg1][2].length - 1) + -details[arg1][2].length + 32 % 32)]),
           details[arg1].field_768
}

function sub_3c246b28(?) payable {
    return sub_3c246b28
}

function sub_6bc74fe0(?) payable {
    return sub_6bc74fe0[arg1].field_0, sub_6bc74fe0[arg1].field_8
}

function sub_ae842caa(?) payable {
    return sub_ae842caa[arg1]
}

function sub_cb5dd855(?) payable {
    mem[192] = sub_cb5dd855[arg1].field_0
    idx = 192
    s = 0
    while sub_cb5dd855[arg1].length + 192 > idx + 32:
        mem[idx + 32] = sub_cb5dd855[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[sub_cb5dd855[arg1].length + (floor32(sub_cb5dd855[arg1].length - 1) + -sub_cb5dd855[arg1].length + 32 % 32) + 192] = sub_cb5dd855[arg1][1].length
    mem[sub_cb5dd855[arg1].length + (floor32(sub_cb5dd855[arg1].length - 1) + -sub_cb5dd855[arg1].length + 32 % 32) + 224] = sub_cb5dd855[arg1][1].field_0
    idx = sub_cb5dd855[arg1].length + (floor32(sub_cb5dd855[arg1].length - 1) + -sub_cb5dd855[arg1].length + 32 % 32) + 224
    s = 0
    while sub_cb5dd855[arg1].length + (floor32(sub_cb5dd855[arg1].length - 1) + -sub_cb5dd855[arg1].length + 32 % 32) + sub_cb5dd855[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = sub_cb5dd855[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_cb5dd855[arg1].length, data=mem[192 len sub_cb5dd855[arg1].length + (floor32(sub_cb5dd855[arg1].length - 1) + -sub_cb5dd855[arg1].length + 32 % 32) + sub_cb5dd855[arg1][1].length + (floor32(sub_cb5dd855[arg1][1].length - 1) + -sub_cb5dd855[arg1][1].length + 32 % 32) + 32]), 
           sub_cb5dd855[arg1].length + (floor32(sub_cb5dd855[arg1].length - 1) + -sub_cb5dd855[arg1].length + 32 % 32) + 96
}

function sub_ea9613ad(?) payable {
    return uint64(sub_ea9613ad)
}

function kill() payable {
    if msg.sender == stor0:
        selfdestruct(stor0)
    else:
        return 0
}

function _fallback() payable {
    revert 
}

function sub_3fda8aab(?) payable {
    uint256(stor4) = uint64(sub_ea9613ad) + 1 or Mask(192, 64, uint256(stor4))
}

function sub_2e1eeb73(?) payable {
    uint256(stor4) = uint64(sub_ea9613ad) + 1 or Mask(192, 64, uint256(stor4))
    sub_ae842caa[address(arg1)] = uint64(sub_ea9613ad)
}

function sub_cb4222fb(?) payable {
    if stor0 != msg.sender:
        return 0
    sub_3c246b28++
    sub_cb5dd855[stor7][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_cb5dd855[stor7][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    return 1
}

function sub_520fc724(?) payable {
    if sub_ae842caa[address(arg1)]:
        if arg1 != msg.sender:
            sub_2332186d = 30
        else:
            sub_2332186d = 20
    else:
        uint256(stor4) = uint64(sub_ea9613ad) + 1 or Mask(192, 64, uint256(stor4))
        sub_2332186d = 10
    return sub_ae842caa[address(arg1)]
}

function sub_5a1d76ad(?) payable {
    uint256(stor4) = uint64(sub_ea9613ad) + 1 or Mask(192, 64, uint256(stor4))
    sub_ae842caa[address(arg1)] = uint64(sub_ea9613ad)
    details[address(arg1)].field_0 = arg2 or Mask(248, 8, details[address(arg1)].field_0)
    details[address(arg1)].field_256 = block.timestamp
    details[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    details[address(arg1)].field_768 = msg.sender or Mask(96, 160, details[address(arg1)].field_768)
}

function sub_7fb5b1b6(?) payable {
    if not sub_ae842caa[address(msg.sender)]:
        return 0
    if not sub_ae842caa[address(arg1)]:
        return 0
    sub_6bc74fe0[address(uint64(100000 * 10^18 * stor1[address(msg.sender)]) + stor1[address(arg1)])].field_0 = arg2 or Mask(248, 8, sub_6bc74fe0[address(uint64(100000 * 10^18 * stor1[address(msg.sender)]) + stor1[address(arg1)])].field_0)
    sub_6bc74fe0[address(uint64(100000 * 10^18 * stor1[address(msg.sender)]) + stor1[address(arg1)])].field_8 = Mask(248, 0, arg3)
    address(stor5.field_0) = address(uint64(100000 * 10^18 * sub_ae842caa[address(msg.sender)]) + sub_ae842caa[address(arg1)])
    Mask(96, 0, stor5.field_160) = 0
    return 1
}

function sub_5f75cd73(?) payable {
    if sub_ae842caa[address(arg1)]:
        if arg1 == msg.sender:
            details[address(arg1)].field_0 = arg2 or Mask(248, 8, details[address(arg1)].field_0)
            details[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
            details[address(arg1)].field_768 = details[address(arg1)].field_768
    else:
        uint256(stor4) = uint64(sub_ea9613ad) + 1 or Mask(192, 64, uint256(stor4))
        sub_ae842caa[address(arg1)] = uint64(sub_ea9613ad)
        details[address(arg1)].field_0 = arg2 or Mask(248, 8, details[address(arg1)].field_0)
        details[address(arg1)].field_256 = block.timestamp
        details[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        details[address(arg1)].field_768 = msg.sender or Mask(96, 160, details[address(arg1)].field_768)
    return sub_ae842caa[address(arg1)]
}

function sub_626d89a2(?) payable {
    if sub_ae842caa[address(arg1)]:
        if arg1 == msg.sender:
            details[address(arg1)].field_0 = arg2 or Mask(248, 8, details[address(arg1)].field_0)
            details[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
            details[address(arg1)].field_768 = details[address(arg1)].field_768
    else:
        uint256(stor4) = uint64(sub_ea9613ad) + 1 or Mask(192, 64, uint256(stor4))
        if uint64(sub_ea9613ad) > 100 * 10^18:
            return 0
        sub_ae842caa[address(arg1)] = uint64(sub_ea9613ad)
        details[address(arg1)].field_0 = arg2 or Mask(248, 8, details[address(arg1)].field_0)
        details[address(arg1)].field_256 = block.timestamp
        details[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        details[address(arg1)].field_768 = msg.sender or Mask(96, 160, details[address(arg1)].field_768)
    return sub_ae842caa[address(arg1)]
}



}
