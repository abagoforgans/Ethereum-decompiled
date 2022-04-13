contract main {


// =======================  Init code  ======================


address stor5;
address stor6;
address stor7;
mapping of uint8 stor21;

function _fallback() {
    stor7 = msg.sender
    stor6 = msg.sender
    stor5 = msg.sender
    stor21[address(msg.sender)] = 1
    return code.data[107 len 14441]
}



// =====================  Runtime code  =====================


#
#  - sub_0613b3a1(?)
#  - sub_1f541ba4(?)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 6


uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
array of uint256 message;
uint256 sub_8f41bb58;
address stor5;
address stor6;
uint8 stor7; offset 160
uint128 stor7; offset 160
address stor7;
mapping of uint256 balanceOf;
mapping of uint256 sub_064d5a8b;
mapping of address sub_c1198ea1;
mapping of address stor11;
mapping of uint256 stor12;
mapping of uint256 stor13;
mapping of address stor14;
mapping of address stor15;
mapping of address stor16;
mapping of address stor17;
mapping of uint256 stor18;
mapping of uint256 stor19;
mapping of uint256 stor20;
mapping of uint8 stor21;
mapping of uint8 stor22;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of struct stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint32 stor35;
uint256 stor35; offset 32
uint256 stor35;
mapping of address stor99;

function sub_064d5a8b(?) {
    return sub_064d5a8b[arg1]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_8f41bb58(?) {
    return sub_8f41bb58
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c1198ea1(?) {
    return sub_c1198ea1[arg1]
}

function message() {
    return message[0 len message.length]
}

function sub_455d4d6e(?) {
    require stor5 == msg.sender
    if arg1:
        stor5 = arg1
    else:
        if arg2:
            stor6 = arg2
            stor21[address(arg2)] = 1
        else:
            if not arg3:
                selfdestruct(stor5)
            address(stor7.field_0) = arg3
            stor21[address(arg3)] = 1
}

function sub_9d0398a1(?) {
    if stor11[address(arg1)] != msg.sender:
        require stor6 == msg.sender
    stor24[address(arg1)] = uint8(arg2)
}

function sub_c7636f0e(?) {
    require balanceOf[address(msg.sender)] > arg1
    if not stor21[address(msg.sender)]:
        balanceOf[address(msg.sender)] -= arg1
        totalSupply -= arg1
}

function sub_88d8de4c(?) {
    require not stor21[address(msg.sender)]
    require balanceOf[address(msg.sender)] > stor34
    balanceOf[address(msg.sender)] -= stor34
    stor12[stor6] += stor34
    stor21[address(msg.sender)] = 1
}

function sub_9865932c(?) {
    require stor6 == msg.sender
    if arg1.length:
        name[] = Array(len=arg1.length, data=arg1[all])
    if arg2.length:
        symbol[] = Array(len=arg2.length, data=arg2[all])
    message[] = Array(len=arg3.length, data=arg3[all])
}

function sub_40885c82(?) {
    if arg1:
        sub_064d5a8b[address(msg.sender)] = stor12[address(msg.sender)]
    else:
        if arg2:
            sub_064d5a8b[address(msg.sender)] = stor18[address(msg.sender)]
        else:
            if arg3:
                sub_064d5a8b[address(msg.sender)] = stor19[address(msg.sender)]
            else:
                if not arg4:
                    sub_064d5a8b[address(msg.sender)] = 0
                else:
                    sub_064d5a8b[address(msg.sender)] = stor20[address(msg.sender)]
}

function sub_b09f1c93(?) {
    if arg1:
        sub_c1198ea1[address(msg.sender)] = stor11[address(msg.sender)]
    else:
        if arg2:
            sub_c1198ea1[address(msg.sender)] = stor15[address(msg.sender)]
        else:
            if arg3:
                sub_c1198ea1[address(msg.sender)] = stor16[address(msg.sender)]
            else:
                if not arg4:
                    sub_c1198ea1[address(msg.sender)] = 0
                else:
                    sub_c1198ea1[address(msg.sender)] = stor17[address(msg.sender)]
}

function sub_7ee37c7b(?) {
    require stor6 == msg.sender
    require arg8 + arg7 + arg6 + arg5 + arg4 <= 1000
    stor29 = arg4
    stor30 = arg5
    stor31 = arg6
    stor32 = arg7
    stor33 = arg8
    stor28 = -arg8 + -arg7 + -arg6 + -arg5 + -arg4 + 1000
    uint32(stor35.field_0) = arg2
    Mask(224, 0, stor35.field_32) = 0
    stor34 = arg1
    stor27 = arg3
    Mask(96, 0, stor7.field_160) = Mask(96, 0, arg9)
    emit 0xf630f87f: arg1, arg1 / 100, uint256(stor35.field_0), stor27, stor29 / 5, stor30 / 5, stor31 / 5, stor32 / 5, stor33 / 5
}

function sub_806bef1f(?) {
    require eth.balance(this.address)
    if 10^16 * totalSupply / eth.balance(this.address) >= 1000:
        require 10^16 * totalSupply / eth.balance(this.address)
        sub_8f41bb58 = 10^10 / 10^16 * totalSupply / eth.balance(this.address)
        emit 0x3b98ac72: (10^10 / 10^16 * totalSupply / eth.balance(this.address))
        return (10^16 * totalSupply / eth.balance(this.address))
    stor12[stor6] += (eth.balance(this.address) / 10^12) - (10 * totalSupply) / 10
    totalSupply += (eth.balance(this.address) / 10^12) - (10 * totalSupply) / 10
    sub_8f41bb58 = 10 * 10^6
    emit 0x3b98ac72: 10 * 10^6
    return 1000
}

function sub_135c5256(?) {
    require not stor24[address(msg.sender)]
    if stor11[address(msg.sender)] == arg1:
        uint256(stor23[address(msg.sender)]) = not uint8(stor23[address(msg.sender)]) or Mask(248, 8, uint256(stor23[address(msg.sender)]))
    else:
        if not arg1:
            uint8(stor23[address(msg.sender)]) = 0
        else:
            if arg1 == msg.sender:
                uint8(stor23[address(msg.sender)]) = 0
            else:
                uint8(stor23[address(msg.sender)]) = 1
                stor11[address(msg.sender)] = arg1
    require balanceOf[address(msg.sender)] > stor34 / 100
    if not stor21[address(msg.sender)]:
        balanceOf[address(msg.sender)] -= stor34 / 100
        totalSupply -= stor34 / 100
}

function registration(address arg1) {
    if arg1 != msg.sender:
        if not stor14[address(msg.sender)]:
            if arg1:
                stor14[address(msg.sender)] = arg1
                stor15[msg.sender] = stor15[address(arg1)]
                stor16[msg.sender] = stor16[address(arg1)]
                stor17[msg.sender] = stor17[address(arg1)]
                stor11[msg.sender] = stor11[address(arg1)]
                uint8(stor22[address(msg.sender)]) = 0
                stor18[address(msg.sender)] += stor18[address(arg1)] / 10
                stor19[address(msg.sender)] += stor19[address(arg1)] / 10
                stor20[address(msg.sender)] += stor20[address(arg1)] / 10
                if stor15[address(msg.sender)]:
                    emit 0x57b97aa0: stor15[address(msg.sender)], stor16[address(msg.sender)], stor17[address(msg.sender)], stor18[address(msg.sender)], stor19[address(msg.sender)], stor20[address(msg.sender)]
}

function sub_8706ae3e(?) {
    require not stor24[address(msg.sender)]
    uint8(stor23[address(msg.sender)]) = uint8(arg2)
    uint8(stor22[address(msg.sender)]) = uint8(arg3)
    if arg4 <= 450:
        stor13[address(msg.sender)] = arg4
    else:
        stor13[address(msg.sender)] = 450
    if not arg1:
        if arg5:
            stor11[address(msg.sender)] = 0
            uint8(stor22[address(msg.sender)]) = 0
            uint8(stor23[address(msg.sender)]) = 0
    else:
        if arg1 != msg.sender:
            stor11[address(msg.sender)] = arg1
        if arg5:
            stor11[address(msg.sender)] = 0
            uint8(stor22[address(msg.sender)]) = 0
            uint8(stor23[address(msg.sender)]) = 0
    mem[288] = uint256(stor26[address(msg.sender)].field_0)
    idx = 288
    s = 0
    while stor26[address(msg.sender)].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor26[address(msg.sender)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xa8c1e4c5: Array(len=stor26[address(msg.sender)].length, data=mem[288 len stor26[address(msg.sender)].length + (floor32(stor26[address(msg.sender)].length - 1) + -stor26[address(msg.sender)].length + 32 % 32)]), bool(stor21[address(msg.sender)]), bool(uint8(stor23[address(msg.sender)])), bool(uint8(stor22[address(msg.sender)])), stor13[address(msg.sender)]
}

function sub_fac0256c(?) {
    if stor18[address(msg.sender)] > uint256(stor35.field_0):
        if arg1:
            if stor15[address(msg.sender)] != arg1:
                stor18[address(msg.sender)] -= uint256(stor35.field_0)
                stor15[address(msg.sender)] = arg1
    if stor19[address(msg.sender)] > uint256(stor35.field_0):
        if arg2:
            if stor16[address(msg.sender)] != arg2:
                stor19[address(msg.sender)] -= uint256(stor35.field_0)
                stor16[address(msg.sender)] = arg2
    if stor20[address(msg.sender)] > uint256(stor35.field_0):
        if arg3:
            if stor17[address(msg.sender)] != arg3:
                stor20[address(msg.sender)] -= uint256(stor35.field_0)
                stor17[address(msg.sender)] = arg3
    require balanceOf[address(msg.sender)] > stor34 / 100
    if not stor21[address(msg.sender)]:
        balanceOf[address(msg.sender)] -= stor34 / 100
        totalSupply -= stor34 / 100
    mem[352] = uint256(stor26[address(msg.sender)].field_0)
    idx = 352
    s = 0
    while stor26[address(msg.sender)].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor26[address(msg.sender)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xed0719f1: Array(len=stor26[address(msg.sender)].length, data=mem[352 len stor26[address(msg.sender)].length + (floor32(stor26[address(msg.sender)].length - 1) + -stor26[address(msg.sender)].length + 32 % 32)]), stor15[address(msg.sender)], stor16[address(msg.sender)], stor17[address(msg.sender)], stor18[address(msg.sender)], stor19[address(msg.sender)], stor20[address(msg.sender)]
}

function sub_9b754c5f(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    require stor6 == msg.sender
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 160] = 25
    if stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]:
        stor21[address(arg1)] = 1
        stor17[address(arg1)] = arg1
        stor16[address(arg1)] = arg1
        stor15[address(arg1)] = arg1
        stor14[address(arg1)] = arg1
        if not arg3:
            stor14[address(arg1)] = stor6
    else:
        if arg2.length:
            mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + 160] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 160] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
            mem[ceil32(arg2.length) + arg2.length + 160] = 25
            stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = msg.sender
        stor21[address(arg1)] = 1
        stor17[address(arg1)] = arg1
        stor16[address(arg1)] = arg1
        stor15[address(arg1)] = arg1
        stor14[address(arg1)] = arg1
        if not arg3:
            stor14[address(arg1)] = stor6
    stor20[address(arg1)] = arg3 * uint256(stor35.field_0)
    stor19[address(arg1)] = arg3 * uint256(stor35.field_0)
    stor18[address(arg1)] = arg3 * uint256(stor35.field_0)
}

function sub_a6441514(?) {
    require not stor24[address(msg.sender)]
    uint256(stor22[address(msg.sender)]) = not uint8(stor22[address(msg.sender)]) or Mask(248, 8, uint256(stor22[address(msg.sender)]))
    mem[224] = uint256(stor26[address(msg.sender)].field_0)
    idx = 224
    s = 0
    while stor26[address(msg.sender)].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor26[address(msg.sender)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor26[address(msg.sender)].length + (floor32(stor26[address(msg.sender)].length - 1) + -stor26[address(msg.sender)].length + 32 % 32) + 224] = stor26[stor11[address(msg.sender)]].length
    mem[stor26[address(msg.sender)].length + (floor32(stor26[address(msg.sender)].length - 1) + -stor26[address(msg.sender)].length + 32 % 32) + 256] = uint256(stor26[stor11[address(msg.sender)]].field_0)
    idx = stor26[address(msg.sender)].length + (floor32(stor26[address(msg.sender)].length - 1) + -stor26[address(msg.sender)].length + 32 % 32) + 256
    s = 0
    while stor26[address(msg.sender)].length + (floor32(stor26[address(msg.sender)].length - 1) + -stor26[address(msg.sender)].length + 32 % 32) + stor26[stor11[address(msg.sender)]].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor26[stor11[address(msg.sender)]][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xf4bf15f5: Array(len=stor26[address(msg.sender)].length, data=mem[224 len stor26[address(msg.sender)].length + (floor32(stor26[address(msg.sender)].length - 1) + -stor26[address(msg.sender)].length + 32 % 32) + stor26[stor11[address(msg.sender)]].length + (floor32(stor26[stor11[address(msg.sender)]].length - 1) + -stor26[stor11[address(msg.sender)]].length + 32 % 32) + 32]), stor26[address(msg.sender)].length + (floor32(stor26[address(msg.sender)].length - 1) + -stor26[address(msg.sender)].length + 32 % 32) + 128, bool(uint8(not uint8(stor22[address(msg.sender)])))
    require balanceOf[address(msg.sender)] > stor34 / 100
    if not stor21[address(msg.sender)]:
        balanceOf[address(msg.sender)] -= stor34 / 100
        totalSupply -= stor34 / 100
}

function sub_8335bb58(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + arg1.length + 128] = 25
    if stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] != msg.sender:
        if not stor14[address(msg.sender)]:
            if stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]:
                stor14[address(msg.sender)] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
                stor15[msg.sender] = stor15[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]]
                stor16[msg.sender] = stor16[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]]
                stor17[msg.sender] = stor17[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]]
                stor11[msg.sender] = stor11[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]]
                uint8(stor22[address(msg.sender)]) = 0
                stor18[address(msg.sender)] += stor18[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]] / 10
                stor19[address(msg.sender)] += stor19[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]] / 10
                stor20[address(msg.sender)] += stor20[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]] / 10
                if stor15[address(msg.sender)]:
                    emit 0x57b97aa0: stor15[address(msg.sender)], stor16[address(msg.sender)], stor17[address(msg.sender)], stor18[address(msg.sender)], stor19[address(msg.sender)], stor20[address(msg.sender)]
}

function sub_8eeb8a73(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    require stor21[address(msg.sender)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 192] = 25
    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] != msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 192] = 25
        if not stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]:
            if arg2.length:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 192] = 25
                stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = msg.sender
                uint256(stor26[address(msg.sender)][].field_0) = Array(len=arg2.length, data=arg2[all])
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 192] = 25
        bool(stor26[address(msg.sender)].field_0) = 0
        uint255(stor26[address(msg.sender)].field_1) = 0
        Mask(248, 0, stor26[address(msg.sender)].field_8) = mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len 31]
        idx = 0
        while stor26[address(msg.sender)].length + 31 / 32 > idx:
            uint256(stor26[address(msg.sender)][idx].field_0) = 0
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 224] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 224] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
        mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 224] = 25
        if not stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]:
            if arg2.length:
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 224 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 224] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 224] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
                mem[ceil32(arg1.length) + ceil32(arg2.length) + arg2.length + 224] = 25
                stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 224 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = msg.sender
                uint256(stor26[address(msg.sender)][].field_0) = Array(len=arg2.length, data=arg2[all])
}

function _fallback() payable {
    if msg.value <= 10^17:
        require stor6 == msg.sender
    require not uint8(stor7.field_160)
    balanceOf[address(msg.sender)] += 1000 * msg.value / 10^16
    balanceOf[address(stor7.field_0)] += 250 * msg.value / 10^16 / 1000 * stor28
    stor12[address(msg.sender)] += 250 * msg.value / 10^16 / 1000 * stor33
    if not stor14[address(msg.sender)]:
        if not stor15[address(msg.sender)]:
            if not stor16[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                balanceOf[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor31
                stor20[stor16[address(msg.sender)]] += msg.value / 10^16
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor30 * 250 * msg.value / 10^16 / 1000) + totalSupply
        else:
            balanceOf[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor30
            stor19[stor15[address(msg.sender)]] += 10 * msg.value / 10^16
            if not stor16[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                balanceOf[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor31
                stor20[stor16[address(msg.sender)]] += msg.value / 10^16
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) + totalSupply
    else:
        balanceOf[stor14[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor29 / 1000
        stor18[stor14[address(msg.sender)]] += 100 * msg.value / 10^16
        if not stor15[address(msg.sender)]:
            if not stor16[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                balanceOf[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor31
                stor20[stor16[address(msg.sender)]] += msg.value / 10^16
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor30 * 250 * msg.value / 10^16 / 1000) + totalSupply
        else:
            balanceOf[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor30
            stor19[stor15[address(msg.sender)]] += 10 * msg.value / 10^16
            if not stor16[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor31 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor31 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                balanceOf[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor31
                stor20[stor16[address(msg.sender)]] += msg.value / 10^16
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply += 1250 * msg.value / 10^16
}

function sub_c4684a2d(?) payable {
    if msg.value <= 10^17:
        require stor6 == msg.sender
    require not uint8(stor7.field_160)
    balanceOf[address(msg.sender)] += 1000 * msg.value / 10^16
    balanceOf[address(stor7.field_0)] += 250 * msg.value / 10^16 / 1000 * stor28
    stor12[address(msg.sender)] += 250 * msg.value / 10^16 / 1000 * stor33
    if not stor14[address(msg.sender)]:
        if not stor15[address(msg.sender)]:
            if not stor16[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                balanceOf[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor31
                stor20[stor16[address(msg.sender)]] += msg.value / 10^16
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor30 * 250 * msg.value / 10^16 / 1000) + totalSupply
        else:
            balanceOf[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor30
            stor19[stor15[address(msg.sender)]] += 10 * msg.value / 10^16
            if not stor16[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                balanceOf[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor31
                stor20[stor16[address(msg.sender)]] += msg.value / 10^16
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor29 * 250 * msg.value / 10^16 / 1000) + totalSupply
    else:
        balanceOf[stor14[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor29 / 1000
        stor18[stor14[address(msg.sender)]] += 100 * msg.value / 10^16
        if not stor15[address(msg.sender)]:
            if not stor16[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor31 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                balanceOf[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor31
                stor20[stor16[address(msg.sender)]] += msg.value / 10^16
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor30 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor30 * 250 * msg.value / 10^16 / 1000) + totalSupply
        else:
            balanceOf[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor30
            stor19[stor15[address(msg.sender)]] += 10 * msg.value / 10^16
            if not stor16[address(msg.sender)]:
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor31 * 250 * msg.value / 10^16 / 1000) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply = (1250 * msg.value / 10^16) - (stor31 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                balanceOf[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor31
                stor20[stor16[address(msg.sender)]] += msg.value / 10^16
                if not stor17[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor32 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    balanceOf[stor17[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor32
                    totalSupply += 1250 * msg.value / 10^16
}

function sub_26dcf8e9(?) {
    require not stor24[address(msg.sender)]
    require eth.balance(this.address)
    if 10^16 * totalSupply / eth.balance(this.address) < 1000:
        stor12[stor6] += (eth.balance(this.address) / 10^12) - (10 * totalSupply) / 10
        totalSupply += (eth.balance(this.address) / 10^12) - (10 * totalSupply) / 10
        sub_8f41bb58 = 10 * 10^6
        emit 0x3b98ac72: 10 * 10^6
        if arg1:
            if not arg3:
                if balanceOf[address(msg.sender)] >= arg2:
                    balanceOf[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    call arg1 with:
                       value 10^16 * arg2 / 1000 wei
                         gas 2300 * is_zero(value) wei
                else:
                    balanceOf[address(msg.sender)] = 0
                    totalSupply -= balanceOf[address(msg.sender)]
                    call arg1 with:
                       value 10^16 * balanceOf[address(msg.sender)] / 1000 wei
                         gas 2300 * is_zero(value) wei
            else:
                if stor12[address(msg.sender)] >= arg2:
                    stor12[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    call arg1 with:
                       value 10^16 * arg2 / 1000 wei
                         gas 2300 * is_zero(value) wei
                else:
                    stor12[address(msg.sender)] = 0
                    totalSupply -= stor12[address(msg.sender)]
                    call arg1 with:
                       value 10^16 * stor12[address(msg.sender)] / 1000 wei
                         gas 2300 * is_zero(value) wei
        else:
            if not arg3:
                if balanceOf[address(msg.sender)] >= arg2:
                    balanceOf[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    call msg.sender with:
                       value 10^16 * arg2 / 1000 wei
                         gas 2300 * is_zero(value) wei
                else:
                    balanceOf[address(msg.sender)] = 0
                    totalSupply -= balanceOf[address(msg.sender)]
                    call msg.sender with:
                       value 10^16 * balanceOf[address(msg.sender)] / 1000 wei
                         gas 2300 * is_zero(value) wei
            else:
                if stor12[address(msg.sender)] >= arg2:
                    stor12[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    call msg.sender with:
                       value 10^16 * arg2 / 1000 wei
                         gas 2300 * is_zero(value) wei
                else:
                    stor12[address(msg.sender)] = 0
                    totalSupply -= stor12[address(msg.sender)]
                    call msg.sender with:
                       value 10^16 * stor12[address(msg.sender)] / 1000 wei
                         gas 2300 * is_zero(value) wei
        if ext_call.success:
    else:
        if 10^16 * totalSupply / eth.balance(this.address):
            sub_8f41bb58 = 10^10 / 10^16 * totalSupply / eth.balance(this.address)
            emit 0x3b98ac72: (10^10 / 10^16 * totalSupply / eth.balance(this.address))
            require 10^16 * totalSupply / eth.balance(this.address) <= 1250
            if arg1:
                if not arg3:
                    if balanceOf[address(msg.sender)] >= arg2:
                        balanceOf[address(msg.sender)] -= arg2
                        totalSupply -= arg2
                        if 10^16 * totalSupply / eth.balance(this.address):
                            call arg1 with:
                               value 10^16 * arg2 / 10^16 * totalSupply / eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                    else:
                        balanceOf[address(msg.sender)] = 0
                        totalSupply -= balanceOf[address(msg.sender)]
                        if 10^16 * totalSupply / eth.balance(this.address):
                            call arg1 with:
                               value 10^16 * balanceOf[address(msg.sender)] / 10^16 * totalSupply / eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                else:
                    if stor12[address(msg.sender)] >= arg2:
                        stor12[address(msg.sender)] -= arg2
                        totalSupply -= arg2
                        if 10^16 * totalSupply / eth.balance(this.address):
                            call arg1 with:
                               value 10^16 * arg2 / 10^16 * totalSupply / eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                    else:
                        stor12[address(msg.sender)] = 0
                        totalSupply -= stor12[address(msg.sender)]
                        if 10^16 * totalSupply / eth.balance(this.address):
                            call arg1 with:
                               value 10^16 * stor12[address(msg.sender)] / 10^16 * totalSupply / eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
            else:
                if not arg3:
                    if balanceOf[address(msg.sender)] >= arg2:
                        balanceOf[address(msg.sender)] -= arg2
                        totalSupply -= arg2
                        if 10^16 * totalSupply / eth.balance(this.address):
                            call msg.sender with:
                               value 10^16 * arg2 / 10^16 * totalSupply / eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                    else:
                        balanceOf[address(msg.sender)] = 0
                        totalSupply -= balanceOf[address(msg.sender)]
                        if 10^16 * totalSupply / eth.balance(this.address):
                            call msg.sender with:
                               value 10^16 * balanceOf[address(msg.sender)] / 10^16 * totalSupply / eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                else:
                    if stor12[address(msg.sender)] >= arg2:
                        stor12[address(msg.sender)] -= arg2
                        totalSupply -= arg2
                        if 10^16 * totalSupply / eth.balance(this.address):
                            call msg.sender with:
                               value 10^16 * arg2 / 10^16 * totalSupply / eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
                    else:
                        stor12[address(msg.sender)] = 0
                        totalSupply -= stor12[address(msg.sender)]
                        if 10^16 * totalSupply / eth.balance(this.address):
                            call msg.sender with:
                               value 10^16 * stor12[address(msg.sender)] / 10^16 * totalSupply / eth.balance(this.address) wei
                                 gas 2300 * is_zero(value) wei
                            if ext_call.success:
    revert
}



}
