contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint64 stor1;
array of struct stor2;
uint64 stor4;
uint256 stor4;
array of uint256 stor6;

function _fallback() payable {
    mem[96 len -3515] = code.data[4470 len -3515]
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor4) = uint64(stor4) + 1 or Mask(192, 64, uint256(stor4))
    stor1[address(msg.sender)] = uint64(stor4)
    mem[64] = -3291
    stor2[address(msg.sender)].field_0 = mem[96]
    stor2[address(msg.sender)].field_256 = block.timestamp
    stor2[address(msg.sender)][2][].field_0 = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[address(msg.sender)].field_768 = msg.sender or Mask(96, 160, stor2[address(msg.sender)].field_768)
    mem[-3259] = 'use a function name or variable '
    mem[-3227] = 'as key'
    mem[-3195] = 'help'
    mem[-3191] = 6
    stor6['help'] = 77
    s = 0
    idx = -3259
    while -3221 > idx:
        stor6['help'][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor6['help'].length + 31 / 32 > idx:
        stor6['help'][idx] = 0
        idx = idx + 1
        continue 
    return code.data[955 len 3515]
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
array of uint256 stor6;

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

function sub_6bc74fe0(?) payable {
    return sub_6bc74fe0[arg1].field_0, sub_6bc74fe0[arg1].field_8
}

function sub_ae842caa(?) payable {
    return sub_ae842caa[arg1]
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

function sub_cb4222fb(?) payable {
    if stor0 != msg.sender:
        return 0
    stor6[arg1[all]][] = Array(len=arg2.length, data=arg2[all])
    return 1
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

function sub_626d89a2(?) payable {
    if sub_ae842caa[address(arg1)]:
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
