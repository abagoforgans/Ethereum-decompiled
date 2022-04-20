contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor14;
address stor15;
address stor16;
address stor17;
address stor18;
address stor19;
address stor20;
address stor21;

function _fallback() payable {
    stor4 = 1
    stor5 = 10^12
    stor6 = 10^15
    stor7 = 10^18
    stor8 = 20000
    stor9 = 91000000 * 10^18
    stor10 = 91000000 * 10^18
    stor11 = 91000000 * 10^18
    stor12 = 91000000 * 10^18
    stor13 = 91000000 * 10^18
    stor14 = 0xc08c87be4e0770afbe10688dba199dea07635d62
    stor15 = 0xccc5c41897f04bc9daa9e3f0039bd4002f5f870e
    stor16 = 0x896948ddc63dae231d6fd003469e9829b19d7c11
    stor17 = 0x964ed3447927a1a00ab37d4684fa8f1c0df71105
    stor18 = 0x9d62b50180188df85f5b4c3fcf3e5ffa5be7118b
    stor19 = 0x5012b93eb43083dcacb54bd17fc506d00bca74c2
    stor20 = 0xc3d1fadf8cf37afcfa137fc4e81b5052bd9739fc
    stor21 = 0x22fa2a52c7d3c07206bdb9a45b04ace5462f95c5
    require not msg.value
    stor3 = msg.sender
    stor0 = stor9 + stor10 + stor11 + stor12 + stor13
    stor1[address(msg.sender)] = stor9 + stor10 + stor11 + stor12 + stor13
    stor1[stor14] = 910000000 * 10^18
    stor1[stor15] = 568750 * 10^18 * 3600
    stor1[stor16] = 227500000 * 10^18
    stor1[stor17] = 910000000 * 10^18
    return code.data[523 len 4833]
}



// =====================  Runtime code  =====================


const name = 'Time Treaty Coin'

const sub_0f47d14c(?) = (417469 * 3600)

const sub_14bd9b99(?) = 910000000 * 10^18

const decimals = 18

const sub_31b4a152(?) = (415237 * 3600)

const sub_48b24559(?) = (419485 * 3600)

const sub_613a196b(?) = (419677 * 3600)

const sub_6f594c90(?) = (413101 * 3600)

const symbol = 'TTC'

const sub_9d78fbe9(?) = (17520 * 24 * 3600)

const sub_a54bb6f7(?) = (415261 * 3600)

const sub_a9bd7c8d(?) = (568750 * 10^18 * 3600)

const sub_b7fb2365(?) = 910000000 * 10^18

const sub_c521c8ba(?) = (419653 * 3600)

const sub_cc77ed7c(?) = (417445 * 3600)

const sub_e040a7be(?) = 227500000 * 10^18

const sub_ed4d6d97(?) = (413125 * 3600)

const sub_fa818bf4(?) = (419509 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address creatorAddress;
uint256 sub_c48f4616;
uint256 sub_8bdf52ae;
uint256 sub_073418d6;
uint256 sub_3b751de6;
uint256 sub_7ef351a8;
uint256 sub_1251ca40;
address stor15;
address stor17;
address stor18;
address stor19;
address stor20;
address stor21;

function creator() {
    return creatorAddress
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

function sub_890cf7a7(?) {
    require creatorAddress == msg.sender
    if block.timestamp > 419509 * 3600:
        balanceOf[stor15] += sub_8bdf52ae
        sub_8bdf52ae = 0
        emit Transfer(0, creatorAddress, stor15);
        if block.timestamp > 413125 * 3600:
            balanceOf[stor15] += sub_073418d6
            sub_073418d6 = 0
            emit Transfer(0, creatorAddress, stor15);
            if block.timestamp > 415261 * 3600:
                balanceOf[stor15] += sub_3b751de6
                sub_3b751de6 = 0
                emit Transfer(0, creatorAddress, stor15);
                if block.timestamp > 417469 * 3600:
                    balanceOf[stor15] += sub_7ef351a8
                    sub_7ef351a8 = 0
                    emit Transfer(0, creatorAddress, stor15);
                    if block.timestamp > 419677 * 3600:
                        balanceOf[stor15] += sub_1251ca40
                        sub_1251ca40 = 0
                        emit Transfer(0, creatorAddress, stor15);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if stor17 == msg.sender:
        if block.timestamp < 437005 * 3600:
            return 0
    if creatorAddress == msg.sender:
        totalSupply -= arg2
        if block.timestamp > 419509 * 3600:
            if block.timestamp > 413125 * 3600:
                if block.timestamp > 415261 * 3600:
                    if block.timestamp > 417469 * 3600:
                        require block.timestamp <= 419677 * 3600
                        require block.timestamp >= 419653 * 3600
                        require sub_1251ca40 >= arg2
                        sub_1251ca40 -= arg2
                    else:
                        if block.timestamp >= 417445 * 3600:
                            require sub_7ef351a8 >= arg2
                            sub_7ef351a8 -= arg2
                        else:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= arg2
                            sub_1251ca40 -= arg2
                else:
                    if block.timestamp >= 415237 * 3600:
                        require sub_3b751de6 >= arg2
                        sub_3b751de6 -= arg2
                    else:
                        if block.timestamp > 417469 * 3600:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= arg2
                            sub_1251ca40 -= arg2
                        else:
                            if block.timestamp >= 417445 * 3600:
                                require sub_7ef351a8 >= arg2
                                sub_7ef351a8 -= arg2
                            else:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= arg2
                                sub_1251ca40 -= arg2
            else:
                if block.timestamp >= 413101 * 3600:
                    require sub_073418d6 >= arg2
                    sub_073418d6 -= arg2
                else:
                    if block.timestamp > 415261 * 3600:
                        if block.timestamp > 417469 * 3600:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= arg2
                            sub_1251ca40 -= arg2
                        else:
                            if block.timestamp >= 417445 * 3600:
                                require sub_7ef351a8 >= arg2
                                sub_7ef351a8 -= arg2
                            else:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= arg2
                                sub_1251ca40 -= arg2
                    else:
                        if block.timestamp >= 415237 * 3600:
                            require sub_3b751de6 >= arg2
                            sub_3b751de6 -= arg2
                        else:
                            if block.timestamp > 417469 * 3600:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= arg2
                                sub_1251ca40 -= arg2
                            else:
                                if block.timestamp >= 417445 * 3600:
                                    require sub_7ef351a8 >= arg2
                                    sub_7ef351a8 -= arg2
                                else:
                                    require block.timestamp <= 419677 * 3600
                                    require block.timestamp >= 419653 * 3600
                                    require sub_1251ca40 >= arg2
                                    sub_1251ca40 -= arg2
        else:
            if block.timestamp >= 419485 * 3600:
                require sub_8bdf52ae >= arg2
                sub_8bdf52ae -= arg2
            else:
                if block.timestamp > 413125 * 3600:
                    if block.timestamp > 415261 * 3600:
                        if block.timestamp > 417469 * 3600:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= arg2
                            sub_1251ca40 -= arg2
                        else:
                            if block.timestamp >= 417445 * 3600:
                                require sub_7ef351a8 >= arg2
                                sub_7ef351a8 -= arg2
                            else:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= arg2
                                sub_1251ca40 -= arg2
                    else:
                        if block.timestamp >= 415237 * 3600:
                            require sub_3b751de6 >= arg2
                            sub_3b751de6 -= arg2
                        else:
                            if block.timestamp > 417469 * 3600:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= arg2
                                sub_1251ca40 -= arg2
                            else:
                                if block.timestamp >= 417445 * 3600:
                                    require sub_7ef351a8 >= arg2
                                    sub_7ef351a8 -= arg2
                                else:
                                    require block.timestamp <= 419677 * 3600
                                    require block.timestamp >= 419653 * 3600
                                    require sub_1251ca40 >= arg2
                                    sub_1251ca40 -= arg2
                else:
                    if block.timestamp >= 413101 * 3600:
                        require sub_073418d6 >= arg2
                        sub_073418d6 -= arg2
                    else:
                        if block.timestamp > 415261 * 3600:
                            if block.timestamp > 417469 * 3600:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= arg2
                                sub_1251ca40 -= arg2
                            else:
                                if block.timestamp >= 417445 * 3600:
                                    require sub_7ef351a8 >= arg2
                                    sub_7ef351a8 -= arg2
                                else:
                                    require block.timestamp <= 419677 * 3600
                                    require block.timestamp >= 419653 * 3600
                                    require sub_1251ca40 >= arg2
                                    sub_1251ca40 -= arg2
                        else:
                            if block.timestamp >= 415237 * 3600:
                                require sub_3b751de6 >= arg2
                                sub_3b751de6 -= arg2
                            else:
                                if block.timestamp > 417469 * 3600:
                                    require block.timestamp <= 419677 * 3600
                                    require block.timestamp >= 419653 * 3600
                                    require sub_1251ca40 >= arg2
                                    sub_1251ca40 -= arg2
                                else:
                                    if block.timestamp >= 417445 * 3600:
                                        require sub_7ef351a8 >= arg2
                                        sub_7ef351a8 -= arg2
                                    else:
                                        require block.timestamp <= 419677 * 3600
                                        require block.timestamp >= 419653 * 3600
                                        require sub_1251ca40 >= arg2
                                        sub_1251ca40 -= arg2
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if block.timestamp > 419509 * 3600:
        if block.timestamp > 413125 * 3600:
            if block.timestamp > 415261 * 3600:
                if block.timestamp > 417469 * 3600:
                    require block.timestamp <= 419677 * 3600
                    require block.timestamp >= 419653 * 3600
                    require sub_1251ca40 >= msg.value * sub_c48f4616
                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                    sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 417445 * 3600:
                        require sub_7ef351a8 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                    else:
                        require block.timestamp <= 419677 * 3600
                        require block.timestamp >= 419653 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp >= 415237 * 3600:
                    require sub_3b751de6 >= msg.value * sub_c48f4616
                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                    sub_3b751de6 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp > 417469 * 3600:
                        require block.timestamp <= 419677 * 3600
                        require block.timestamp >= 419653 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 417445 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
        else:
            if block.timestamp >= 413101 * 3600:
                require sub_073418d6 >= msg.value * sub_c48f4616
                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                sub_073418d6 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp > 415261 * 3600:
                    if block.timestamp > 417469 * 3600:
                        require block.timestamp <= 419677 * 3600
                        require block.timestamp >= 419653 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 417445 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 415237 * 3600:
                        require sub_3b751de6 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_3b751de6 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp > 417469 * 3600:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 417445 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
    else:
        if block.timestamp >= 419485 * 3600:
            require sub_8bdf52ae >= msg.value * sub_c48f4616
            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
            sub_8bdf52ae += -1 * msg.value * sub_c48f4616
        else:
            if block.timestamp > 413125 * 3600:
                if block.timestamp > 415261 * 3600:
                    if block.timestamp > 417469 * 3600:
                        require block.timestamp <= 419677 * 3600
                        require block.timestamp >= 419653 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 417445 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 415237 * 3600:
                        require sub_3b751de6 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_3b751de6 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp > 417469 * 3600:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 417445 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp >= 413101 * 3600:
                    require sub_073418d6 >= msg.value * sub_c48f4616
                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                    sub_073418d6 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp > 415261 * 3600:
                        if block.timestamp > 417469 * 3600:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 417445 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 415237 * 3600:
                            require sub_3b751de6 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_3b751de6 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp > 417469 * 3600:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
                            else:
                                if block.timestamp >= 417445 * 3600:
                                    require sub_7ef351a8 >= msg.value * sub_c48f4616
                                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                    sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                                else:
                                    require block.timestamp <= 419677 * 3600
                                    require block.timestamp >= 419653 * 3600
                                    require sub_1251ca40 >= msg.value * sub_c48f4616
                                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                    sub_1251ca40 += -1 * msg.value * sub_c48f4616
    totalSupply += -1 * msg.value * sub_c48f4616
    balanceOf[msg.sender] += msg.value * sub_c48f4616
    emit Transfer((msg.value * sub_c48f4616), creatorAddress, msg.sender);
    call stor18 with:
       value 15 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor19 with:
       value 40 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call stor20 with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call stor21 with:
       value 35 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
}

function createTokens() payable {
    if block.timestamp > 419509 * 3600:
        if block.timestamp > 413125 * 3600:
            if block.timestamp > 415261 * 3600:
                if block.timestamp > 417469 * 3600:
                    require block.timestamp <= 419677 * 3600
                    require block.timestamp >= 419653 * 3600
                    require sub_1251ca40 >= msg.value * sub_c48f4616
                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                    sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 417445 * 3600:
                        require sub_7ef351a8 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                    else:
                        require block.timestamp <= 419677 * 3600
                        require block.timestamp >= 419653 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp >= 415237 * 3600:
                    require sub_3b751de6 >= msg.value * sub_c48f4616
                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                    sub_3b751de6 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp > 417469 * 3600:
                        require block.timestamp <= 419677 * 3600
                        require block.timestamp >= 419653 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 417445 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
        else:
            if block.timestamp >= 413101 * 3600:
                require sub_073418d6 >= msg.value * sub_c48f4616
                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                sub_073418d6 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp > 415261 * 3600:
                    if block.timestamp > 417469 * 3600:
                        require block.timestamp <= 419677 * 3600
                        require block.timestamp >= 419653 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 417445 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 415237 * 3600:
                        require sub_3b751de6 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_3b751de6 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp > 417469 * 3600:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 417445 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
    else:
        if block.timestamp >= 419485 * 3600:
            require sub_8bdf52ae >= msg.value * sub_c48f4616
            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
            sub_8bdf52ae += -1 * msg.value * sub_c48f4616
        else:
            if block.timestamp > 413125 * 3600:
                if block.timestamp > 415261 * 3600:
                    if block.timestamp > 417469 * 3600:
                        require block.timestamp <= 419677 * 3600
                        require block.timestamp >= 419653 * 3600
                        require sub_1251ca40 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 417445 * 3600:
                            require sub_7ef351a8 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                        else:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp >= 415237 * 3600:
                        require sub_3b751de6 >= msg.value * sub_c48f4616
                        balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                        sub_3b751de6 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp > 417469 * 3600:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 417445 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
            else:
                if block.timestamp >= 413101 * 3600:
                    require sub_073418d6 >= msg.value * sub_c48f4616
                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                    sub_073418d6 += -1 * msg.value * sub_c48f4616
                else:
                    if block.timestamp > 415261 * 3600:
                        if block.timestamp > 417469 * 3600:
                            require block.timestamp <= 419677 * 3600
                            require block.timestamp >= 419653 * 3600
                            require sub_1251ca40 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_1251ca40 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp >= 417445 * 3600:
                                require sub_7ef351a8 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                            else:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
                    else:
                        if block.timestamp >= 415237 * 3600:
                            require sub_3b751de6 >= msg.value * sub_c48f4616
                            balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                            sub_3b751de6 += -1 * msg.value * sub_c48f4616
                        else:
                            if block.timestamp > 417469 * 3600:
                                require block.timestamp <= 419677 * 3600
                                require block.timestamp >= 419653 * 3600
                                require sub_1251ca40 >= msg.value * sub_c48f4616
                                balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                sub_1251ca40 += -1 * msg.value * sub_c48f4616
                            else:
                                if block.timestamp >= 417445 * 3600:
                                    require sub_7ef351a8 >= msg.value * sub_c48f4616
                                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                    sub_7ef351a8 += -1 * msg.value * sub_c48f4616
                                else:
                                    require block.timestamp <= 419677 * 3600
                                    require block.timestamp >= 419653 * 3600
                                    require sub_1251ca40 >= msg.value * sub_c48f4616
                                    balanceOf[stor3] += -1 * msg.value * sub_c48f4616
                                    sub_1251ca40 += -1 * msg.value * sub_c48f4616
    totalSupply += -1 * msg.value * sub_c48f4616
    balanceOf[msg.sender] += msg.value * sub_c48f4616
    emit Transfer((msg.value * sub_c48f4616), creatorAddress, msg.sender);
    call stor18 with:
       value 15 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor19 with:
       value 40 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call stor20 with:
       value 10 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    call stor21 with:
       value 35 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
}



}
