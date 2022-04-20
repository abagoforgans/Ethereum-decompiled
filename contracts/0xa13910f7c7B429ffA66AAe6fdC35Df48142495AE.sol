contract main {


// =======================  Init code  ======================


address stor5;
address stor6;
mapping of uint8 stor18;

function _fallback() {
    stor6 = msg.sender
    stor5 = msg.sender
    stor18[address(msg.sender)] = 1
    return code.data[100 len 14539]
}



// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - sub_71453d0b(?)
#  - transfer(address arg1, uint256 arg2)
#  - sub_b020b7ae(?)
#  - sub_c95e90bc(?)
#
const decimals = 6


uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
array of uint256 message;
uint256 sub_f96d954e;
address stor5;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of address stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
mapping of uint256 stor12;
mapping of address stor13;
mapping of address stor14;
mapping of address stor15;
mapping of address stor16;
mapping of uint256 stor17;
mapping of uint8 stor18;
mapping of uint8 stor19;
mapping of uint8 stor20;
mapping of uint8 stor21;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 sub_b04a985b;
uint8 sub_0965183e;
mapping of address stor99;

function name() {
    return name[0 len name.length]
}

function sub_0965183e(?) {
    return bool(sub_0965183e)
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b04a985b(?) {
    return sub_b04a985b
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function message() {
    return message[0 len message.length]
}

function sub_f96d954e(?) {
    return sub_f96d954e
}

function sub_487c2879(?) {
    stor11[address(msg.sender)] = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function returnDeposit() {
    balanceOf[address(msg.sender)] += stor10[address(msg.sender)]
    stor10[address(msg.sender)] = 0
}

function sub_9d0398a1(?) {
    if stor9[address(arg1)] != msg.sender:
        require address(stor6.field_0) == msg.sender
    stor21[address(arg1)] = uint8(arg2)
}

function burnToken(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function sub_5853b936(?) payable {
    if msg.value < 10^12 * stor30:
        require address(stor6.field_0) == msg.sender
    require not stor21[address(msg.sender)]
    emit 0xfd758654: Array(len=arg1.length, data=arg1[all]), msg.sender
}

function sub_065630d1(?) payable {
    if msg.value < 10^12 * stor30 / 100:
        require address(stor6.field_0) == msg.sender
    if arg1 != stor11[stor9[address(msg.sender)]]:
        stor11[stor9[address(msg.sender)]]++
    else:
        stor21[address(msg.sender)] = 0
}

function sub_0383c3a4(?) payable {
    if arg1:
        require not stor18[address(arg1)]
        require msg.value >= 10^12 * stor30
        stor18[address(arg1)] = 1
    else:
        require not stor18[address(msg.sender)]
        require msg.value >= 10^12 * stor30
        stor18[address(msg.sender)] = 1
}

function burnTokenFrom(address arg1, uint256 arg2) {
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, msg.sender);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    require ext_code.size(arg1)
    call arg1.0x8f4ffcb1 with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function sub_18bb7614(?) {
    if arg1:
        sub_b04a985b = stor10[address(msg.sender)]
        return stor10[address(msg.sender)]
    if arg2:
        sub_b04a985b = stor12[address(msg.sender)]
        return stor12[address(msg.sender)]
    if not arg3:
        sub_b04a985b = 0
        return 0
    sub_b04a985b = stor17[address(msg.sender)]
    return stor17[address(msg.sender)]
}

function sub_90c3d63c(?) {
    require address(stor6.field_0) == msg.sender
    require arg7 + arg6 + arg5 + arg4 + arg3 <= 1000
    stor25 = arg3
    stor26 = arg4
    stor27 = arg5
    stor28 = arg6
    stor29 = arg7
    stor24 = -arg7 + -arg6 + -arg5 + -arg4 + -arg3 + 1000
    stor30 = arg1
    stor23 = arg2
    emit 0x999fda00: arg1, arg1, 10 * arg1, 100 * arg1, arg2, arg3 / 5, stor26 / 5, stor27 / 5, stor28 / 5, stor29 / 5
}

function sub_c762dc3f(?) {
    require stor5 == msg.sender
    if arg1.length:
        name[] = Array(len=arg1.length, data=arg1[all])
    if arg2.length:
        symbol[] = Array(len=arg2.length, data=arg2[all])
    if arg4:
        stor5 = arg4
        stor18[address(arg4)] = 1
    if arg5:
        address(stor6.field_0) = arg5
        stor18[address(arg5)] = 1
    if arg3.length:
        message[] = Array(len=arg3.length, data=arg3[all])
    Mask(96, 0, stor6.field_160) = Mask(96, 0, arg6)
}

function sub_4959638f(?) {
    require not stor21[address(msg.sender)]
    if stor9[address(msg.sender)] == arg1:
        uint256(stor20[address(msg.sender)]) = not uint8(stor20[address(msg.sender)]) or Mask(248, 8, uint256(stor20[address(msg.sender)]))
    else:
        if not arg1:
            uint8(stor20[address(msg.sender)]) = 0
        else:
            if arg1 == msg.sender:
                uint8(stor20[address(msg.sender)]) = 0
            else:
                uint8(stor20[address(msg.sender)]) = 1
                stor9[address(msg.sender)] = arg1
}

function sub_338c09dd(?) payable {
    if msg.value < 10^12 * stor30 / 10:
        require address(stor6.field_0) == msg.sender
    require arg1 == stor9[address(arg3)]
    require arg2 == stor11[address(arg1)]
    require arg4 == stor11[address(arg3)]
    require stor11[address(arg3)]
    require arg5 <= 1000
    balanceOf[address(arg1)] += arg5 * balanceOf[address(arg3)] / 1000
    balanceOf[arg3] -= arg5 * balanceOf[address(arg3)] / 1000
    stor21[address(arg3)] = 0
    stor9[address(arg3)] = 0
    stor11[address(arg3)] = 0
    emit Transfer((arg5 * balanceOf[address(arg3)] / 1000), arg3, arg1);
}

function sub_8706ae3e(?) {
    require not stor21[address(msg.sender)]
    uint8(stor20[address(msg.sender)]) = uint8(arg2)
    stor19[address(msg.sender)] = uint8(arg3)
    if arg4 <= 450:
        stor12[address(msg.sender)] = arg4
    else:
        stor12[address(msg.sender)] = 450
    if not arg1:
        if arg5:
            stor9[address(msg.sender)] = 0
            stor19[address(msg.sender)] = 0
            uint8(stor20[address(msg.sender)]) = 0
    else:
        if arg1 != msg.sender:
            stor9[address(msg.sender)] = arg1
        if arg5:
            stor9[address(msg.sender)] = 0
            stor19[address(msg.sender)] = 0
            uint8(stor20[address(msg.sender)]) = 0
}

function sub_e4036f44(?) {
    if arg1:
        sub_0965183e = uint8(bool(stor18[address(msg.sender)]))
        return bool(stor18[address(msg.sender)])
    if arg2:
        sub_0965183e = uint8(bool(uint8(stor20[address(msg.sender)])))
        return bool(uint8(stor20[address(msg.sender)]))
    if arg3:
        sub_0965183e = uint8(bool(stor19[address(msg.sender)]))
        return bool(stor19[address(msg.sender)])
    if stor9[address(msg.sender)] != arg4:
        if stor13[address(arg5)] != msg.sender:
            if stor14[address(arg5)] != msg.sender:
                if stor15[address(arg5)] != msg.sender:
                    if stor16[address(arg5)] != msg.sender:
                        sub_0965183e = 0
                        return 0
    sub_0965183e = 1
    return 1
}

function sub_fe2dacf2(?) payable {
    if msg.value < 10^12 * stor30 / 10:
        require address(stor6.field_0) == msg.sender
    require arg3 == stor11[address(arg1)]
    if msg.value < 10^12 * stor30 / 10:
        require address(stor6.field_0) == msg.sender
    require msg.sender == stor9[address(arg1)]
    require stor11[address(msg.sender)] == stor11[address(msg.sender)]
    require arg2 == stor11[address(arg1)]
    require stor11[address(arg1)]
    require arg3 <= 1000
    balanceOf[address(msg.sender)] += arg3 * balanceOf[address(arg1)] / 1000
    balanceOf[arg1] -= arg3 * balanceOf[address(arg1)] / 1000
    stor21[address(arg1)] = 0
    stor9[address(arg1)] = 0
    stor11[address(arg1)] = 0
    emit Transfer((arg3 * balanceOf[address(arg1)] / 1000), arg1, msg.sender);
}

function sub_2212142b(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = 22
    if not stor13[address(msg.sender)]:
        if stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]:
            stor13[address(msg.sender)] = stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]
            stor14[msg.sender] = stor14[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]]
            stor15[msg.sender] = stor15[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]]
            stor16[msg.sender] = stor16[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]]
            stor9[msg.sender] = stor9[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]]
            stor19[address(msg.sender)] = 0
            stor17[address(msg.sender)] += stor17[stor[mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]]] / 10
}

function sub_366674ba(?) {
    if stor16[address(msg.sender)] != arg1:
        if stor14[address(msg.sender)] == arg1:
            if stor15[address(msg.sender)] == arg1:
                if stor16[address(msg.sender)] != arg1:
                    if stor17[address(msg.sender)] > 100 * stor30:
                        stor17[address(msg.sender)] += -100 * stor30
                        stor16[address(msg.sender)] = arg1
            else:
                if stor17[address(msg.sender)] > 10 * stor30:
                    stor17[address(msg.sender)] += -10 * stor30
                    stor15[address(msg.sender)] = arg1
                if stor16[address(msg.sender)] != arg1:
                    if stor17[address(msg.sender)] > 100 * stor30:
                        stor17[address(msg.sender)] += -100 * stor30
                        stor16[address(msg.sender)] = arg1
        else:
            if stor17[address(msg.sender)] > stor30:
                stor17[address(msg.sender)] -= stor30
                stor14[address(msg.sender)] = arg1
            if stor15[address(msg.sender)] == arg1:
                if stor16[address(msg.sender)] != arg1:
                    if stor17[address(msg.sender)] > 100 * stor30:
                        stor17[address(msg.sender)] += -100 * stor30
                        stor16[address(msg.sender)] = arg1
            else:
                if stor17[address(msg.sender)] > 10 * stor30:
                    stor17[address(msg.sender)] += -10 * stor30
                    stor15[address(msg.sender)] = arg1
                if stor16[address(msg.sender)] != arg1:
                    if stor17[address(msg.sender)] > 100 * stor30:
                        stor17[address(msg.sender)] += -100 * stor30
                        stor16[address(msg.sender)] = arg1
}

function sub_b851f31e(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = 0
    require address(stor6.field_0) == msg.sender
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160] = 22
    require not stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]
    mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 160] = 22
    if stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]:
        stor18[address(arg1)] = 1
        stor16[address(arg1)] = arg1
        stor15[address(arg1)] = arg1
        stor14[address(arg1)] = arg1
        stor13[address(arg1)] = arg1
        if not arg3:
            stor16[address(arg1)] = stor5
            stor13[address(arg1)] = stor5
    else:
        if arg2.length:
            mem[ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
            mem[arg2.length + ceil32(arg2.length) + 160] = 22
            stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = arg1
        stor18[address(arg1)] = 1
        stor16[address(arg1)] = arg1
        stor15[address(arg1)] = arg1
        stor14[address(arg1)] = arg1
        stor13[address(arg1)] = arg1
        if not arg3:
            stor16[address(arg1)] = stor5
            stor13[address(arg1)] = stor5
    stor17[address(arg1)] = arg3 * stor30
}

function sub_8eeb8a73(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
    require stor18[address(msg.sender)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 22
    require not stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 22
    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 192 len (arg1.length % 32) + 32]][call.data[arg1 + 36 len floor32(arg1.length)]] == msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 224 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 22
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 22
    if not stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]:
        if arg2.length:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
            mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 192] = 22
            stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 192 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] = msg.sender
}

function _fallback() payable {
    if msg.value < 10^15:
        require address(stor6.field_0) == msg.sender
    require not uint8(stor6.field_160)
    balanceOf[address(msg.sender)] += 1000 * msg.value / 10^16
    stor10[address(stor6.field_0)] += 250 * msg.value / 10^16 / 1000 * stor24
    stor10[msg.sender] += 250 * msg.value / 10^16 / 1000 * stor29
    if not stor13[address(msg.sender)]:
        if not stor14[address(msg.sender)]:
            if not stor15[address(msg.sender)]:
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                stor10[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor27
                stor17[stor15[address(msg.sender)]] += msg.value / 10^16
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor26 * 250 * msg.value / 10^16 / 1000) + totalSupply
        else:
            stor10[stor14[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor26
            stor17[stor14[address(msg.sender)]] += msg.value / 10^16
            if not stor15[address(msg.sender)]:
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                stor10[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor27
                stor17[stor15[address(msg.sender)]] += msg.value / 10^16
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) + totalSupply
    else:
        stor10[stor13[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor25 / 1000
        stor17[stor13[address(msg.sender)]] += msg.value / 10^16
        if not stor14[address(msg.sender)]:
            if not stor15[address(msg.sender)]:
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                stor10[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor27
                stor17[stor15[address(msg.sender)]] += msg.value / 10^16
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor26 * 250 * msg.value / 10^16 / 1000) + totalSupply
        else:
            stor10[stor14[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor26
            stor17[stor14[address(msg.sender)]] += msg.value / 10^16
            if not stor15[address(msg.sender)]:
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor27 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor27 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                stor10[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor27
                stor17[stor15[address(msg.sender)]] += msg.value / 10^16
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply += 1250 * msg.value / 10^16
}

function sub_5ab76f35(?) payable {
    if msg.value < 10^15:
        require address(stor6.field_0) == msg.sender
    require not uint8(stor6.field_160)
    balanceOf[address(msg.sender)] += 1000 * msg.value / 10^16
    stor10[address(stor6.field_0)] += 250 * msg.value / 10^16 / 1000 * stor24
    stor10[msg.sender] += 250 * msg.value / 10^16 / 1000 * stor29
    if not stor13[address(msg.sender)]:
        if not stor14[address(msg.sender)]:
            if not stor15[address(msg.sender)]:
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                stor10[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor27
                stor17[stor15[address(msg.sender)]] += msg.value / 10^16
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor26 * 250 * msg.value / 10^16 / 1000) + totalSupply
        else:
            stor10[stor14[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor26
            stor17[stor14[address(msg.sender)]] += msg.value / 10^16
            if not stor15[address(msg.sender)]:
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                stor10[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor27
                stor17[stor15[address(msg.sender)]] += msg.value / 10^16
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor25 * 250 * msg.value / 10^16 / 1000) + totalSupply
    else:
        stor10[stor13[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor25 / 1000
        stor17[stor13[address(msg.sender)]] += msg.value / 10^16
        if not stor14[address(msg.sender)]:
            if not stor15[address(msg.sender)]:
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor27 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                stor10[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor27
                stor17[stor15[address(msg.sender)]] += msg.value / 10^16
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor26 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor26 * 250 * msg.value / 10^16 / 1000) + totalSupply
        else:
            stor10[stor14[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor26
            stor17[stor14[address(msg.sender)]] += msg.value / 10^16
            if not stor15[address(msg.sender)]:
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor27 * 250 * msg.value / 10^16 / 1000) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply = (1250 * msg.value / 10^16) - (stor27 * 250 * msg.value / 10^16 / 1000) + totalSupply
            else:
                stor10[stor15[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor27
                stor17[stor15[address(msg.sender)]] += msg.value / 10^16
                if not stor16[address(msg.sender)]:
                    totalSupply = (1250 * msg.value / 10^16) - (stor28 * 250 * msg.value / 10^16 / 1000) + totalSupply
                else:
                    stor10[stor16[address(msg.sender)]] += 250 * msg.value / 10^16 / 1000 * stor28
                    totalSupply += 1250 * msg.value / 10^16
}

function sub_25801b1f(?) {
    require not stor21[address(msg.sender)]
    require eth.balance(this.address)
    if 10^16 * totalSupply / eth.balance(this.address) < 1000:
        stor10[address(stor6.field_0)] += (eth.balance(this.address) / 10^12) - (10 * totalSupply) / 10
        totalSupply += (eth.balance(this.address) / 10^12) - (10 * totalSupply) / 10
        sub_f96d954e = 10 * 10^6
        emit 0xef3d485b: 10 * 10^6
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
                if stor10[address(msg.sender)] >= arg2:
                    stor10[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    call arg1 with:
                       value 10^16 * arg2 / 1000 wei
                         gas 2300 * is_zero(value) wei
                else:
                    stor10[address(msg.sender)] = 0
                    totalSupply -= stor10[address(msg.sender)]
                    call arg1 with:
                       value 10^16 * stor10[address(msg.sender)] / 1000 wei
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
                if stor10[address(msg.sender)] >= arg2:
                    stor10[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    call msg.sender with:
                       value 10^16 * arg2 / 1000 wei
                         gas 2300 * is_zero(value) wei
                else:
                    stor10[address(msg.sender)] = 0
                    totalSupply -= stor10[address(msg.sender)]
                    call msg.sender with:
                       value 10^16 * stor10[address(msg.sender)] / 1000 wei
                         gas 2300 * is_zero(value) wei
    else:
        require 10^16 * totalSupply / eth.balance(this.address)
        sub_f96d954e = 10^10 / 10^16 * totalSupply / eth.balance(this.address)
        emit 0xef3d485b: (10^10 / 10^16 * totalSupply / eth.balance(this.address))
        require 10^16 * totalSupply / eth.balance(this.address) <= 1250
        if arg1:
            if not arg3:
                if balanceOf[address(msg.sender)] >= arg2:
                    balanceOf[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    require 10^16 * totalSupply / eth.balance(this.address)
                    call arg1 with:
                       value 10^16 * arg2 / 10^16 * totalSupply / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    balanceOf[address(msg.sender)] = 0
                    totalSupply -= balanceOf[address(msg.sender)]
                    require 10^16 * totalSupply / eth.balance(this.address)
                    call arg1 with:
                       value 10^16 * balanceOf[address(msg.sender)] / 10^16 * totalSupply / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            else:
                if stor10[address(msg.sender)] >= arg2:
                    stor10[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    require 10^16 * totalSupply / eth.balance(this.address)
                    call arg1 with:
                       value 10^16 * arg2 / 10^16 * totalSupply / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    stor10[address(msg.sender)] = 0
                    totalSupply -= stor10[address(msg.sender)]
                    require 10^16 * totalSupply / eth.balance(this.address)
                    call arg1 with:
                       value 10^16 * stor10[address(msg.sender)] / 10^16 * totalSupply / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
        else:
            if not arg3:
                if balanceOf[address(msg.sender)] >= arg2:
                    balanceOf[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    require 10^16 * totalSupply / eth.balance(this.address)
                    call msg.sender with:
                       value 10^16 * arg2 / 10^16 * totalSupply / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    balanceOf[address(msg.sender)] = 0
                    totalSupply -= balanceOf[address(msg.sender)]
                    require 10^16 * totalSupply / eth.balance(this.address)
                    call msg.sender with:
                       value 10^16 * balanceOf[address(msg.sender)] / 10^16 * totalSupply / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
            else:
                if stor10[address(msg.sender)] >= arg2:
                    stor10[address(msg.sender)] -= arg2
                    totalSupply -= arg2
                    require 10^16 * totalSupply / eth.balance(this.address)
                    call msg.sender with:
                       value 10^16 * arg2 / 10^16 * totalSupply / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
                else:
                    stor10[address(msg.sender)] = 0
                    totalSupply -= stor10[address(msg.sender)]
                    require 10^16 * totalSupply / eth.balance(this.address)
                    call msg.sender with:
                       value 10^16 * stor10[address(msg.sender)] / 10^16 * totalSupply / eth.balance(this.address) wei
                         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_f6ef0e95(?) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if msg.value >= 10^15:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 22
        _1360 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 22
        if not stor[_1360]:
            if not stor9[address(stor6.field_0)]:
                if not stor9[address(stor6.field_0)]:
                    stor17[address(msg.sender)] += msg.value / 10^12
                    stor15[address(msg.sender)] = address(stor6.field_0)
                    stor14[address(msg.sender)] = address(stor6.field_0)
                    stor13[address(msg.sender)] = address(stor6.field_0)
                    stor16[address(msg.sender)] = address(stor6.field_0)
                else:
                    if stor[_1360] != stor9[address(stor6.field_0)]:
                        stor17[address(msg.sender)] += msg.value / 10^12
                        stor15[address(msg.sender)] = address(stor6.field_0)
                        stor14[address(msg.sender)] = address(stor6.field_0)
                        stor13[address(msg.sender)] = address(stor6.field_0)
                        stor16[address(msg.sender)] = address(stor6.field_0)
                    else:
                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                stor15[address(msg.sender)] = msg.sender
                                stor14[address(msg.sender)] = msg.sender
                                stor13[address(msg.sender)] = msg.sender
                                stor16[address(msg.sender)] = address(stor6.field_0)
                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
            else:
                if stor[_1360] != stor9[address(stor6.field_0)]:
                    if not stor9[address(stor6.field_0)]:
                        stor17[address(msg.sender)] += msg.value / 10^12
                        stor15[address(msg.sender)] = address(stor6.field_0)
                        stor14[address(msg.sender)] = address(stor6.field_0)
                        stor13[address(msg.sender)] = address(stor6.field_0)
                        stor16[address(msg.sender)] = address(stor6.field_0)
                    else:
                        if stor[_1360] != stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    stor15[address(msg.sender)] = msg.sender
                                    stor14[address(msg.sender)] = msg.sender
                                    stor13[address(msg.sender)] = msg.sender
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                else:
                    if stor[_1360] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                        if not stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[_1360] != stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        stor15[address(msg.sender)] = msg.sender
                                        stor14[address(msg.sender)] = msg.sender
                                        stor13[address(msg.sender)] = msg.sender
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                    else:
                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                            balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                            totalSupply += 125 * msg.value / 10^12 / 1000
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if not stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[_1360] != stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            stor15[address(msg.sender)] = msg.sender
                                            stor14[address(msg.sender)] = msg.sender
                                            stor13[address(msg.sender)] = msg.sender
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
        else:
            if not stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]:
                if not stor9[address(stor6.field_0)]:
                    if not stor9[address(stor6.field_0)]:
                        stor17[address(msg.sender)] += msg.value / 10^12
                        stor15[address(msg.sender)] = address(stor6.field_0)
                        stor14[address(msg.sender)] = address(stor6.field_0)
                        stor13[address(msg.sender)] = address(stor6.field_0)
                        stor16[address(msg.sender)] = address(stor6.field_0)
                    else:
                        if stor[_1360] != stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    stor15[address(msg.sender)] = msg.sender
                                    stor14[address(msg.sender)] = msg.sender
                                    stor13[address(msg.sender)] = msg.sender
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                else:
                    if stor[_1360] != stor9[address(stor6.field_0)]:
                        if not stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[_1360] != stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        stor15[address(msg.sender)] = msg.sender
                                        stor14[address(msg.sender)] = msg.sender
                                        stor13[address(msg.sender)] = msg.sender
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                    else:
                        if stor[_1360] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                            if not stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[_1360] != stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            stor15[address(msg.sender)] = msg.sender
                                            stor14[address(msg.sender)] = msg.sender
                                            stor13[address(msg.sender)] = msg.sender
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                        else:
                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                                balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                                totalSupply += 125 * msg.value / 10^12 / 1000
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if not stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[_1360] != stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                stor15[address(msg.sender)] = msg.sender
                                                stor14[address(msg.sender)] = msg.sender
                                                stor13[address(msg.sender)] = msg.sender
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
            else:
                if stor[_1360] == stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]:
                    if not stor9[address(stor6.field_0)]:
                        if not stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[_1360] != stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        stor15[address(msg.sender)] = msg.sender
                                        stor14[address(msg.sender)] = msg.sender
                                        stor13[address(msg.sender)] = msg.sender
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                    else:
                        if stor[_1360] != stor9[address(stor6.field_0)]:
                            if not stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[_1360] != stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            stor15[address(msg.sender)] = msg.sender
                                            stor14[address(msg.sender)] = msg.sender
                                            stor13[address(msg.sender)] = msg.sender
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                        else:
                            if stor[_1360] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                                if not stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[_1360] != stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                stor15[address(msg.sender)] = msg.sender
                                                stor14[address(msg.sender)] = msg.sender
                                                stor13[address(msg.sender)] = msg.sender
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                            else:
                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                                    balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                                    totalSupply += 125 * msg.value / 10^12 / 1000
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if not stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[_1360] != stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    stor15[address(msg.sender)] = msg.sender
                                                    stor14[address(msg.sender)] = msg.sender
                                                    stor13[address(msg.sender)] = msg.sender
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                else:
                    if stor9[stor[_1360]] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                        if not stor9[address(stor6.field_0)]:
                            if not stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[_1360] != stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            stor15[address(msg.sender)] = msg.sender
                                            stor14[address(msg.sender)] = msg.sender
                                            stor13[address(msg.sender)] = msg.sender
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                        else:
                            if stor[_1360] != stor9[address(stor6.field_0)]:
                                if not stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[_1360] != stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                stor15[address(msg.sender)] = msg.sender
                                                stor14[address(msg.sender)] = msg.sender
                                                stor13[address(msg.sender)] = msg.sender
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                            else:
                                if stor[_1360] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                                    if not stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[_1360] != stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    stor15[address(msg.sender)] = msg.sender
                                                    stor14[address(msg.sender)] = msg.sender
                                                    stor13[address(msg.sender)] = msg.sender
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                                else:
                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                                        balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                                        totalSupply += 125 * msg.value / 10^12 / 1000
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if not stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[_1360] != stor9[address(stor6.field_0)]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                        stor17[address(msg.sender)] += msg.value / 10^12
                                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                    else:
                                                        stor15[address(msg.sender)] = msg.sender
                                                        stor14[address(msg.sender)] = msg.sender
                                                        stor13[address(msg.sender)] = msg.sender
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                    else:
                        if msg.value / 10^12 == stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                            stor10[msg.sender] += stor10[stor[_1360]]
                            stor10[stor[_1360]] = 0
                            stor10[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] = 0
                            emit 0x3ca43ad4: Array(len=arg1.length, data=arg1[all])
                        else:
                            if not stor9[address(stor6.field_0)]:
                                if not stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[_1360] != stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                stor15[address(msg.sender)] = msg.sender
                                                stor14[address(msg.sender)] = msg.sender
                                                stor13[address(msg.sender)] = msg.sender
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                            else:
                                if stor[_1360] != stor9[address(stor6.field_0)]:
                                    if not stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[_1360] != stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    stor15[address(msg.sender)] = msg.sender
                                                    stor14[address(msg.sender)] = msg.sender
                                                    stor13[address(msg.sender)] = msg.sender
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                                else:
                                    if stor[_1360] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                                        if not stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[_1360] != stor9[address(stor6.field_0)]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                        stor17[address(msg.sender)] += msg.value / 10^12
                                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                    else:
                                                        stor15[address(msg.sender)] = msg.sender
                                                        stor14[address(msg.sender)] = msg.sender
                                                        stor13[address(msg.sender)] = msg.sender
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                                            balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                                            totalSupply += 125 * msg.value / 10^12 / 1000
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if not stor9[address(stor6.field_0)]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor[_1360] != stor9[address(stor6.field_0)]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1360]]:
                                                        stor17[address(msg.sender)] += msg.value / 10^12
                                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                    else:
                                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1360]]:
                                                            stor17[address(msg.sender)] += msg.value / 10^12
                                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                                        else:
                                                            stor15[address(msg.sender)] = msg.sender
                                                            stor14[address(msg.sender)] = msg.sender
                                                            stor13[address(msg.sender)] = msg.sender
                                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
    else:
        require address(stor6.field_0) == msg.sender
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 22
        _1367 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len (arg1.length % 32) + 32])
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
        mem[arg2.length + ceil32(arg1.length) + ceil32(arg2.length) + 160] = 22
        if not stor[_1367]:
            if not stor9[address(stor6.field_0)]:
                if not stor9[address(stor6.field_0)]:
                    stor17[address(msg.sender)] += msg.value / 10^12
                    stor15[address(msg.sender)] = address(stor6.field_0)
                    stor14[address(msg.sender)] = address(stor6.field_0)
                    stor13[address(msg.sender)] = address(stor6.field_0)
                    stor16[address(msg.sender)] = address(stor6.field_0)
                else:
                    if stor[_1367] != stor9[address(stor6.field_0)]:
                        stor17[address(msg.sender)] += msg.value / 10^12
                        stor15[address(msg.sender)] = address(stor6.field_0)
                        stor14[address(msg.sender)] = address(stor6.field_0)
                        stor13[address(msg.sender)] = address(stor6.field_0)
                        stor16[address(msg.sender)] = address(stor6.field_0)
                    else:
                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                stor15[address(msg.sender)] = msg.sender
                                stor14[address(msg.sender)] = msg.sender
                                stor13[address(msg.sender)] = msg.sender
                                stor16[address(msg.sender)] = address(stor6.field_0)
                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
            else:
                if stor[_1367] != stor9[address(stor6.field_0)]:
                    if not stor9[address(stor6.field_0)]:
                        stor17[address(msg.sender)] += msg.value / 10^12
                        stor15[address(msg.sender)] = address(stor6.field_0)
                        stor14[address(msg.sender)] = address(stor6.field_0)
                        stor13[address(msg.sender)] = address(stor6.field_0)
                        stor16[address(msg.sender)] = address(stor6.field_0)
                    else:
                        if stor[_1367] != stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    stor15[address(msg.sender)] = msg.sender
                                    stor14[address(msg.sender)] = msg.sender
                                    stor13[address(msg.sender)] = msg.sender
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                else:
                    if stor[_1367] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                        if not stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[_1367] != stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        stor15[address(msg.sender)] = msg.sender
                                        stor14[address(msg.sender)] = msg.sender
                                        stor13[address(msg.sender)] = msg.sender
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                    else:
                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                            balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                            totalSupply += 125 * msg.value / 10^12 / 1000
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if not stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[_1367] != stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            stor15[address(msg.sender)] = msg.sender
                                            stor14[address(msg.sender)] = msg.sender
                                            stor13[address(msg.sender)] = msg.sender
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
        else:
            if not stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]:
                if not stor9[address(stor6.field_0)]:
                    if not stor9[address(stor6.field_0)]:
                        stor17[address(msg.sender)] += msg.value / 10^12
                        stor15[address(msg.sender)] = address(stor6.field_0)
                        stor14[address(msg.sender)] = address(stor6.field_0)
                        stor13[address(msg.sender)] = address(stor6.field_0)
                        stor16[address(msg.sender)] = address(stor6.field_0)
                    else:
                        if stor[_1367] != stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    stor15[address(msg.sender)] = msg.sender
                                    stor14[address(msg.sender)] = msg.sender
                                    stor13[address(msg.sender)] = msg.sender
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                else:
                    if stor[_1367] != stor9[address(stor6.field_0)]:
                        if not stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[_1367] != stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        stor15[address(msg.sender)] = msg.sender
                                        stor14[address(msg.sender)] = msg.sender
                                        stor13[address(msg.sender)] = msg.sender
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                    else:
                        if stor[_1367] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                            if not stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[_1367] != stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            stor15[address(msg.sender)] = msg.sender
                                            stor14[address(msg.sender)] = msg.sender
                                            stor13[address(msg.sender)] = msg.sender
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                        else:
                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                                balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                                totalSupply += 125 * msg.value / 10^12 / 1000
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if not stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[_1367] != stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                stor15[address(msg.sender)] = msg.sender
                                                stor14[address(msg.sender)] = msg.sender
                                                stor13[address(msg.sender)] = msg.sender
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
            else:
                if stor[_1367] == stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]:
                    if not stor9[address(stor6.field_0)]:
                        if not stor9[address(stor6.field_0)]:
                            stor17[address(msg.sender)] += msg.value / 10^12
                            stor15[address(msg.sender)] = address(stor6.field_0)
                            stor14[address(msg.sender)] = address(stor6.field_0)
                            stor13[address(msg.sender)] = address(stor6.field_0)
                            stor16[address(msg.sender)] = address(stor6.field_0)
                        else:
                            if stor[_1367] != stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        stor15[address(msg.sender)] = msg.sender
                                        stor14[address(msg.sender)] = msg.sender
                                        stor13[address(msg.sender)] = msg.sender
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                    else:
                        if stor[_1367] != stor9[address(stor6.field_0)]:
                            if not stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[_1367] != stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            stor15[address(msg.sender)] = msg.sender
                                            stor14[address(msg.sender)] = msg.sender
                                            stor13[address(msg.sender)] = msg.sender
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                        else:
                            if stor[_1367] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                                if not stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[_1367] != stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                stor15[address(msg.sender)] = msg.sender
                                                stor14[address(msg.sender)] = msg.sender
                                                stor13[address(msg.sender)] = msg.sender
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                            else:
                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                                    balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                                    totalSupply += 125 * msg.value / 10^12 / 1000
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if not stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[_1367] != stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    stor15[address(msg.sender)] = msg.sender
                                                    stor14[address(msg.sender)] = msg.sender
                                                    stor13[address(msg.sender)] = msg.sender
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                else:
                    if stor9[stor[_1367]] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                        if not stor9[address(stor6.field_0)]:
                            if not stor9[address(stor6.field_0)]:
                                stor17[address(msg.sender)] += msg.value / 10^12
                                stor15[address(msg.sender)] = address(stor6.field_0)
                                stor14[address(msg.sender)] = address(stor6.field_0)
                                stor13[address(msg.sender)] = address(stor6.field_0)
                                stor16[address(msg.sender)] = address(stor6.field_0)
                            else:
                                if stor[_1367] != stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            stor15[address(msg.sender)] = msg.sender
                                            stor14[address(msg.sender)] = msg.sender
                                            stor13[address(msg.sender)] = msg.sender
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                        else:
                            if stor[_1367] != stor9[address(stor6.field_0)]:
                                if not stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[_1367] != stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                stor15[address(msg.sender)] = msg.sender
                                                stor14[address(msg.sender)] = msg.sender
                                                stor13[address(msg.sender)] = msg.sender
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                            else:
                                if stor[_1367] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                                    if not stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[_1367] != stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    stor15[address(msg.sender)] = msg.sender
                                                    stor14[address(msg.sender)] = msg.sender
                                                    stor13[address(msg.sender)] = msg.sender
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                                else:
                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                                        balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                                        totalSupply += 125 * msg.value / 10^12 / 1000
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if not stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[_1367] != stor9[address(stor6.field_0)]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                        stor17[address(msg.sender)] += msg.value / 10^12
                                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                    else:
                                                        stor15[address(msg.sender)] = msg.sender
                                                        stor14[address(msg.sender)] = msg.sender
                                                        stor13[address(msg.sender)] = msg.sender
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                    else:
                        if msg.value / 10^12 == stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                            stor10[msg.sender] += stor10[stor[_1367]]
                            stor10[stor[_1367]] = 0
                            stor10[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] = 0
                            emit 0x3ca43ad4: Array(len=arg1.length, data=arg1[all])
                        else:
                            if not stor9[address(stor6.field_0)]:
                                if not stor9[address(stor6.field_0)]:
                                    stor17[address(msg.sender)] += msg.value / 10^12
                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                else:
                                    if stor[_1367] != stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                stor15[address(msg.sender)] = msg.sender
                                                stor14[address(msg.sender)] = msg.sender
                                                stor13[address(msg.sender)] = msg.sender
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                                stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                            else:
                                if stor[_1367] != stor9[address(stor6.field_0)]:
                                    if not stor9[address(stor6.field_0)]:
                                        stor17[address(msg.sender)] += msg.value / 10^12
                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                    else:
                                        if stor[_1367] != stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    stor15[address(msg.sender)] = msg.sender
                                                    stor14[address(msg.sender)] = msg.sender
                                                    stor13[address(msg.sender)] = msg.sender
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                    stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                                else:
                                    if stor[_1367] != stor9[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]]:
                                        if not stor9[address(stor6.field_0)]:
                                            stor17[address(msg.sender)] += msg.value / 10^12
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if stor[_1367] != stor9[address(stor6.field_0)]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                        stor17[address(msg.sender)] += msg.value / 10^12
                                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                    else:
                                                        stor15[address(msg.sender)] = msg.sender
                                                        stor14[address(msg.sender)] = msg.sender
                                                        stor13[address(msg.sender)] = msg.sender
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                        stor17[address(msg.sender)] += 1000 * msg.value / 10^12
                                    else:
                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] <= 1250:
                                            balanceOf[address(msg.sender)] += msg.value / 10^12 * stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] / 10000
                                            totalSupply += 125 * msg.value / 10^12 / 1000
                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                        else:
                                            if not stor9[address(stor6.field_0)]:
                                                stor17[address(msg.sender)] += msg.value / 10^12
                                                stor15[address(msg.sender)] = address(stor6.field_0)
                                                stor14[address(msg.sender)] = address(stor6.field_0)
                                                stor13[address(msg.sender)] = address(stor6.field_0)
                                                stor16[address(msg.sender)] = address(stor6.field_0)
                                            else:
                                                if stor[_1367] != stor9[address(stor6.field_0)]:
                                                    stor17[address(msg.sender)] += msg.value / 10^12
                                                    stor15[address(msg.sender)] = address(stor6.field_0)
                                                    stor14[address(msg.sender)] = address(stor6.field_0)
                                                    stor13[address(msg.sender)] = address(stor6.field_0)
                                                    stor16[address(msg.sender)] = address(stor6.field_0)
                                                else:
                                                    if stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]] != stor9[stor[_1367]]:
                                                        stor17[address(msg.sender)] += msg.value / 10^12
                                                        stor15[address(msg.sender)] = address(stor6.field_0)
                                                        stor14[address(msg.sender)] = address(stor6.field_0)
                                                        stor13[address(msg.sender)] = address(stor6.field_0)
                                                        stor16[address(msg.sender)] = address(stor6.field_0)
                                                    else:
                                                        if stor11[stor[mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]] != stor11[stor[_1367]]:
                                                            stor17[address(msg.sender)] += msg.value / 10^12
                                                            stor15[address(msg.sender)] = address(stor6.field_0)
                                                            stor14[address(msg.sender)] = address(stor6.field_0)
                                                            stor13[address(msg.sender)] = address(stor6.field_0)
                                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                                        else:
                                                            stor15[address(msg.sender)] = msg.sender
                                                            stor14[address(msg.sender)] = msg.sender
                                                            stor13[address(msg.sender)] = msg.sender
                                                            stor16[address(msg.sender)] = address(stor6.field_0)
                                                            stor17[address(msg.sender)] += 1000 * msg.value / 10^12
}



}
