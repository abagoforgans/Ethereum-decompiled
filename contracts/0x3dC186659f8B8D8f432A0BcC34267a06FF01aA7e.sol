contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
bool stor5; offset 256
uint8 stor5;
address stor5; offset 8
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
address stor16;
address stor17;
address stor18;
address stor19;
address stor20;
address stor21;
address stor22;
address stor23;

function _fallback() payable {
    stor6 = 1
    stor7 = 10^12
    stor8 = 10^15
    stor9 = 10^18
    stor10 = 20000
    stor11 = 91000000 * 10^18
    stor12 = 91000000 * 10^18
    stor13 = 91000000 * 10^18
    stor14 = 91000000 * 10^18
    stor15 = 91000000 * 10^18
    stor16 = 0xf835e26371f12aa5e6ee99fa4362cdd18e5503cc
    stor17 = 0xa9f126575dbec1ecc92d2877d4c3d95a92b5d683
    stor18 = 0x8bee31d204d3cb2c2c616e681bf72efd36ee07b9
    stor19 = 0x2d90ded68632064ad1bfd8490ea6918c1c321b5d
    stor20 = 0xb928c92ca0b2f16afe3ed9dc5b7f1c6db74985d0
    stor21 = 0xb0b7549b37061151ce8c6ab632bed85abd897cf1
    stor22 = 0x717b09bd3955dbe28d731aa311bd4e963db9fdb4
    stor23 = 0x2fc8c6dad2b94e174dee75cf589bb73b758c9a87
    require not msg.value
    bool(stor3.length) = 0
    stor3.length.field_1 = 6
    stor3.length.field_8 = 'TTCIII' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 1
    stor4.length.field_8 = 'T' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor5.field_0) = 18
    address(stor5.field_8) = msg.sender
    stor5.field_256 % 1 = 0
    stor1[address(msg.sender)] = stor15 + stor14 + stor13 + stor12 + stor11
    stor1[stor16] = 910000000 * 10^18
    stor1[stor17] = 568750 * 10^18 * 3600
    stor1[stor18] = 227500000 * 10^18
    stor1[stor19] = 910000000 * 10^18
    return code.data[870 len 4323]
}



// =====================  Runtime code  =====================


const sub_0f47d14c(?) = (426221 * 3600)

const sub_14bd9b99(?) = 910000000 * 10^18

const sub_31b4a152(?) = (423989 * 3600)

const sub_48b24559(?) = (397685 * 3600)

const sub_613a196b(?) = (428429 * 3600)

const sub_6f594c90(?) = (421853 * 3600)

const sub_9d78fbe9(?) = (17520 * 24 * 3600)

const sub_a54bb6f7(?) = (424013 * 3600)

const sub_a9bd7c8d(?) = (568750 * 10^18 * 3600)

const sub_b7fb2365(?) = 910000000 * 10^18

const sub_c521c8ba(?) = (428405 * 3600)

const sub_cc77ed7c(?) = (426197 * 3600)

const sub_e040a7be(?) = 227500000 * 10^18

const sub_ed4d6d97(?) = (421877 * 3600)

const sub_fa818bf4(?) = (421853 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor5;
address creatorAddress; offset 8
uint256 sub_c48f4616;
uint256 sub_8bdf52ae;
uint256 sub_073418d6;
uint256 sub_3b751de6;
uint256 sub_7ef351a8;
uint256 sub_1251ca40;
address stor17;
address stor19;
address stor20;
address stor21;
address stor22;
address stor23;

function creator() {
    return creatorAddress
}

function name() {
    return name[0 len name.length]
}

function sub_073418d6(?) {
    return sub_073418d6
}

function sub_1251ca40(?) {
    return sub_1251ca40
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_3b751de6(?) {
    return sub_3b751de6
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7ef351a8(?) {
    return sub_7ef351a8
}

function sub_8bdf52ae(?) {
    return sub_8bdf52ae
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c48f4616(?) {
    return sub_c48f4616
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_8573c47a(?) {
    require creatorAddress == msg.sender
    sub_c48f4616 = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if stor19 == msg.sender:
        if block.timestamp < 415205 * 3600:
            return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_890cf7a7(?) {
    require creatorAddress == msg.sender
    if block.timestamp > 421853 * 3600:
        balanceOf[stor17] += sub_8bdf52ae
        sub_8bdf52ae = 0
        if block.timestamp > 421877 * 3600:
            balanceOf[stor17] += sub_073418d6
            sub_073418d6 = 0
            if block.timestamp > 424013 * 3600:
                balanceOf[stor17] += sub_3b751de6
                sub_3b751de6 = 0
                if block.timestamp > 426221 * 3600:
                    balanceOf[stor17] += sub_7ef351a8
                    sub_7ef351a8 = 0
                    if block.timestamp > 428429 * 3600:
                        balanceOf[stor17] += sub_1251ca40
                        sub_1251ca40 = 0
}

function _fallback() payable {
    if block.timestamp > 421853 * 3600:
        if block.timestamp > 421877 * 3600:
            if block.timestamp > 424013 * 3600:
                if block.timestamp > 426221 * 3600:
                    require block.timestamp <= 428429 * 3600
                    require block.timestamp >= 428405 * 3600
                    require sub_1251ca40 >= msg.value * sub_c48f4616
                    sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 426197 * 3600:
                        require sub_7ef351a8 >= msg.value * sub_c48f4616
                        sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                    else:
                        require block.timestamp <= 428429 * 3600
                        require block.timestamp >= 428405 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp >= 423989 * 3600:
                    require sub_3b751de6 >= msg.value * sub_c48f4616
                    sub_3b751de6 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp > 426221 * 3600:
                        require block.timestamp <= 428429 * 3600
                        require block.timestamp >= 428405 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 426197 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
        else:
            if block.timestamp >= 421853 * 3600:
                require sub_073418d6 >= msg.value * sub_c48f4616
                sub_073418d6 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp > 424013 * 3600:
                    if block.timestamp > 426221 * 3600:
                        require block.timestamp <= 428429 * 3600
                        require block.timestamp >= 428405 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 426197 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 423989 * 3600:
                        require sub_3b751de6 >= msg.value * sub_c48f4616
                        sub_3b751de6 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp > 426221 * 3600:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 426197 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 428429 * 3600
                                require block.timestamp >= 428405 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
    else:
        if block.timestamp >= 397685 * 3600:
            require sub_8bdf52ae >= msg.value * sub_c48f4616
            sub_8bdf52ae += -1 * msg.value * sub_c48f4616
        else:
            if block.timestamp > 421877 * 3600:
                if block.timestamp > 424013 * 3600:
                    if block.timestamp > 426221 * 3600:
                        require block.timestamp <= 428429 * 3600
                        require block.timestamp >= 428405 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 426197 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 423989 * 3600:
                        require sub_3b751de6 >= msg.value * sub_c48f4616
                        sub_3b751de6 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp > 426221 * 3600:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 426197 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 428429 * 3600
                                require block.timestamp >= 428405 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp >= 421853 * 3600:
                    require sub_073418d6 >= msg.value * sub_c48f4616
                    sub_073418d6 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp > 424013 * 3600:
                        if block.timestamp > 426221 * 3600:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 426197 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 428429 * 3600
                                require block.timestamp >= 428405 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 423989 * 3600:
                            require sub_3b751de6 >= msg.value * sub_c48f4616
                            sub_3b751de6 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp > 426221 * 3600:
                                require block.timestamp <= 428429 * 3600
                                require block.timestamp >= 428405 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
                            else:
                                if block.timestamp >= 426197 * 3600:
                                    require sub_7ef351a8 >= msg.value * sub_c48f4616
                                    sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                                else:
                                    require block.timestamp <= 428429 * 3600
                                    require block.timestamp >= 428405 * 3600
                                    require sub_1251ca40 >= msg.value * sub_c48f4616
                                    sub_1251ca40 += -1 * msg.value * sub_c48f4616
    balanceOf[address(msg.sender)] += msg.value * sub_c48f4616
    balanceOf[stor5] += -1 * msg.value * sub_c48f4616
    call stor20 with:
       value 15 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor21 with:
       value 40 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call stor22 with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call stor23 with:
       value 35 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
}

function createTokens() payable {
    if block.timestamp > 421853 * 3600:
        if block.timestamp > 421877 * 3600:
            if block.timestamp > 424013 * 3600:
                if block.timestamp > 426221 * 3600:
                    require block.timestamp <= 428429 * 3600
                    require block.timestamp >= 428405 * 3600
                    require sub_1251ca40 >= msg.value * sub_c48f4616
                    sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 426197 * 3600:
                        require sub_7ef351a8 >= msg.value * sub_c48f4616
                        sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                    else:
                        require block.timestamp <= 428429 * 3600
                        require block.timestamp >= 428405 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp >= 423989 * 3600:
                    require sub_3b751de6 >= msg.value * sub_c48f4616
                    sub_3b751de6 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp > 426221 * 3600:
                        require block.timestamp <= 428429 * 3600
                        require block.timestamp >= 428405 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 426197 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
        else:
            if block.timestamp >= 421853 * 3600:
                require sub_073418d6 >= msg.value * sub_c48f4616
                sub_073418d6 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp > 424013 * 3600:
                    if block.timestamp > 426221 * 3600:
                        require block.timestamp <= 428429 * 3600
                        require block.timestamp >= 428405 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 426197 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 423989 * 3600:
                        require sub_3b751de6 >= msg.value * sub_c48f4616
                        sub_3b751de6 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp > 426221 * 3600:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 426197 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 428429 * 3600
                                require block.timestamp >= 428405 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
    else:
        if block.timestamp >= 397685 * 3600:
            require sub_8bdf52ae >= msg.value * sub_c48f4616
            sub_8bdf52ae += -1 * msg.value * sub_c48f4616
        else:
            if block.timestamp > 421877 * 3600:
                if block.timestamp > 424013 * 3600:
                    if block.timestamp > 426221 * 3600:
                        require block.timestamp <= 428429 * 3600
                        require block.timestamp >= 428405 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 426197 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 423989 * 3600:
                        require sub_3b751de6 >= msg.value * sub_c48f4616
                        sub_3b751de6 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp > 426221 * 3600:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 426197 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 428429 * 3600
                                require block.timestamp >= 428405 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp >= 421853 * 3600:
                    require sub_073418d6 >= msg.value * sub_c48f4616
                    sub_073418d6 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp > 424013 * 3600:
                        if block.timestamp > 426221 * 3600:
                            require block.timestamp <= 428429 * 3600
                            require block.timestamp >= 428405 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 426197 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 428429 * 3600
                                require block.timestamp >= 428405 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 423989 * 3600:
                            require sub_3b751de6 >= msg.value * sub_c48f4616
                            sub_3b751de6 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp > 426221 * 3600:
                                require block.timestamp <= 428429 * 3600
                                require block.timestamp >= 428405 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
                            else:
                                if block.timestamp >= 426197 * 3600:
                                    require sub_7ef351a8 >= msg.value * sub_c48f4616
                                    sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                                else:
                                    require block.timestamp <= 428429 * 3600
                                    require block.timestamp >= 428405 * 3600
                                    require sub_1251ca40 >= msg.value * sub_c48f4616
                                    sub_1251ca40 += -1 * msg.value * sub_c48f4616
    balanceOf[address(msg.sender)] += msg.value * sub_c48f4616
    balanceOf[stor5] += -1 * msg.value * sub_c48f4616
    call stor20 with:
       value 15 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor21 with:
       value 40 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call stor22 with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call stor23 with:
       value 35 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
}



}
