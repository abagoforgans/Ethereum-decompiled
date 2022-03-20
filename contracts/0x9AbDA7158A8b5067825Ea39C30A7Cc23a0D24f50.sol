contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint64 stor1;
array of struct stor2;
uint64 stor4;
uint256 stor4;
array of uint256 stor5;

function _fallback() payable {
    mem[96 len -2764] = code.data[3719 len -2764]
    stor0 = msg.sender or Mask(96, 160, stor0)
    uint256(stor4) = uint64(stor4) + 1 or Mask(192, 64, uint256(stor4))
    stor1[address(msg.sender)] = uint64(stor4)
    mem[64] = -2540
    stor2[address(msg.sender)].field_0 = mem[96]
    stor2[address(msg.sender)].field_256 = block.timestamp
    stor2[address(msg.sender)][2][].field_0 = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[address(msg.sender)].field_768 = msg.sender or Mask(96, 160, stor2[address(msg.sender)].field_768)
    mem[-2508] = 'use a function name or variable '
    mem[-2476] = 'as key'
    mem[-2444] = 'help'
    mem[-2440] = 5
    stor5['help'] = 77
    s = 0
    idx = -2508
    while -2470 > idx:
        stor5['help'][s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor5['help'].length + 31 / 32 > idx:
        stor5['help'][idx] = 0
        idx = idx + 1
        continue 
    return code.data[955 len 2764]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint64 stor1;
mapping of struct stor2;
mapping of struct stor3;
uint64 stor4;
uint256 stor4;
array of uint256 stor5;

function kill() payable {
    if msg.sender == stor0:
        selfdestruct(stor0)
    else:
        return 0
}

function _fallback() payable {
  stop
}

function sub_cb4222fb(?) payable {
    if stor0 != msg.sender:
        return 0
    stor5[arg1[all]][] = Array(len=arg2.length, data=arg2[all])
    return 1
}

function sub_7fb5b1b6(?) payable {
    if not stor1[address(msg.sender)]:
        return 0
    if not stor1[address(arg1)]:
        return 0
    stor3[address(uint64(100000 * 10^18 * stor1[address(msg.sender)]) + stor1[address(arg1)])].field_0 = arg2 or Mask(248, 8, stor3[address(uint64(100000 * 10^18 * stor1[address(msg.sender)]) + stor1[address(arg1)])].field_0)
    stor3[address(uint64(100000 * 10^18 * stor1[address(msg.sender)]) + stor1[address(arg1)])].field_8 = Mask(248, 0, arg3)
    return 1
}

function sub_626d89a2(?) payable {
    if stor1[address(arg1)]:
        stor2[address(arg1)].field_0 = arg2 or Mask(248, 8, stor2[address(arg1)].field_0)
        stor2[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor2[address(arg1)].field_768 = stor2[address(arg1)].field_768
    else:
        uint256(stor4) = uint64(stor4) + 1 or Mask(192, 64, uint256(stor4))
        if uint64(stor4) > 100 * 10^18:
            return 0
        stor1[address(arg1)] = uint64(stor4)
        stor2[address(arg1)].field_0 = arg2 or Mask(248, 8, stor2[address(arg1)].field_0)
        stor2[address(arg1)].field_256 = block.timestamp
        stor2[address(arg1)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
        stor2[address(arg1)].field_768 = msg.sender or Mask(96, 160, stor2[address(arg1)].field_768)
    return stor1[address(arg1)]
}



}
