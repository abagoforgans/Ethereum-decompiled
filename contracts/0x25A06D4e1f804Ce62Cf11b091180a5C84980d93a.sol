contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint8 stor21;
uint8 stor4D65;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'Treasure' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'TRS' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 10^18
    stor9 = 0
    stor11 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    stor15 = 0
    stor16 = 0
    stor17 = 0
    stor18 = 0
    stor19 = 0
    stor21 = 0
    require not msg.value
    stor4D65 = 1
    return code.data[508 len 5889]
}



// =====================  Runtime code  =====================


const decimals = 18

const totalEthereumBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint256 stakingRequirement;
mapping of uint256 balanceOf;
mapping of uint256 stor4;
mapping of uint256 dividendsOf;
mapping of uint256 sub_eba9f92d;
array of address stor8;
uint256 totalSupply;
uint256 stor10;
uint256 soldTokens;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
mapping of uint8 stor20;
uint8 onlyAmbassadors;

function dividendsOf(address arg1) {
    return dividendsOf[address(arg1)]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function onlyAmbassadors() {
    return bool(onlyAmbassadors)
}

function administrators(bytes32 arg1) {
    return bool(stor20[arg1])
}

function stakingRequirement() {
    return stakingRequirement
}

function soldTokens() {
    return soldTokens
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function myTokens() {
    return balanceOf[address(msg.sender)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_eba9f92d(?) {
    return sub_eba9f92d[address(msg.sender)]
}

function disableInitialStage() {
    require stor20[msg.sender]
    onlyAmbassadors = 0
}

function setStakingRequirement(uint256 arg1) {
    require stor20[msg.sender]
    stakingRequirement = arg1
}

function setAdministrator(bytes32 arg1, bool arg2) {
    require stor20[msg.sender]
    stor20[arg1] = uint8(arg2)
}

function setName(string arg1) {
    require stor20[msg.sender]
    name[] = Array(len=arg1.length, data=arg1[all])
}

function setSymbol(string arg1) {
    require stor20[msg.sender]
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function myDividends(bool arg1) {
    if arg1:
        return (dividendsOf[address(msg.sender)] + stor4[address(msg.sender)])
    return dividendsOf[address(msg.sender)]
}

function buyPrice() {
    if 0 == totalSupply:
        return 10^9
    require 1999999999999999999 * 10^9 <= 1000000000 * 10^18 * totalSupply + 10^18 / 10^18
    return ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) - 1999999999999999999 * 10^9 / 10^18)
}

function sub_cb4f6758(?) {
    require sub_eba9f92d[address(msg.sender)] > 0
    sub_eba9f92d[address(msg.sender)] = 0
    call msg.sender with:
       value sub_eba9f92d[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xf3687a31: sub_eba9f92d[address(msg.sender)], msg.sender
}

function sellPrice() {
    if 0 == totalSupply:
        return 0
    require 1999999999999999999 * 10^9 <= 1000000000 * 10^18 * totalSupply + 10^18 / 10^18
    return (((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) - 1999999999999999999 * 10^9 / 10^18) - (15 * 10^16 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) - 1999999999999999999 * 10^9 / 10^18 / 10^18))
}

function calculateEthereumReceived(uint256 arg1) {
    require arg1 <= totalSupply
    require 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= 10^9 * arg1 * totalSupply + 10^18 / 10^18
    require 10^17 * (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10^18 <= (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
    return (((10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (10^17 * (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10^18))
}

function withdraw() {
    require dividendsOf[address(msg.sender)] + stor4[address(msg.sender)] > 0
    dividendsOf[address(msg.sender)] = 0
    stor4[address(msg.sender)] = 0
    call 0x9e4f01bf4d6aa5c583bcb84462e32e8a5ce6195f with:
       value (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0xb0e9ff0c19b7147bfdeb81f0e1d3089efec4fbcd with:
       value (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 wei
         gas 2300 * is_zero(value) wei
    call msg.sender with:
       value (8 * 10^17 * dividendsOf[address(msg.sender)]) + (8 * 10^17 * stor4[address(msg.sender)]) / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw((dividendsOf[address(msg.sender)] + stor4[address(msg.sender)]), msg.sender);
}

function calculateTokensReceived(uint256 arg1) {
    require 15 * 10^16 * arg1 / 10^18 <= arg1
    s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + (-2000000000000000000000000000 * 10^18 * 15 * 10^16 * arg1 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
    t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + (-2000000000000000000000000000 * 10^18 * 15 * 10^16 * arg1 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
    while s < t:
        require s
        s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + (-2000000000000000000000000000 * 10^18 * 15 * 10^16 * arg1 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
        t = s
        continue 
    if 1000000000 * 10^18 <= t:
        return ((t - 1000000000 * 10^18 / 10^9) - totalSupply)
    revert
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= 10^9 * arg1 * totalSupply + 10^18 / 10^18
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= soldTokens
    soldTokens -= arg1
    sub_eba9f92d[address(msg.sender)] += 25 * 10^13 * 3600 * (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10^18
    stor17 = 10^17 * (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10^18
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = address(stor8[idx])
        mem[32] = 3
        idx = idx + 1
        s = balanceOf[address(stor8[idx])] + s
        continue 
    idx = 0
    while idx < stor8.length:
        if stor[_11] * stor8.length <= 0:
            if not stor[_11] * stor8.length:
                require idx < stor8.length
                mem[0] = address(stor8[idx])
                mem[32] = 3
                if not balanceOf[address(stor8[idx])]:
                    stor16 = 2
                    stor15 = stor10
                    require idx < stor8.length
                    mem[0] = address(stor8[idx])
                    mem[32] = 5
                    dividendsOf[address(stor8[idx])] += 10^17 * (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10^18
        else:
            require idx < stor8.length
            mem[0] = address(stor8[idx])
            mem[32] = 3
            if balanceOf[address(stor8[idx])]:
                require idx < stor8.length
                require stor[_11] * stor8.length
                stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_11] * stor8.length) + 5 / 10 * 10^17 * (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10^18 / 10^18
                stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_11] * stor8.length) + 5 / 10 * 10^17 * (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10^18 / 10^18
                require idx < stor8.length
                mem[0] = address(stor8[idx])
                mem[32] = 5
                dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_11] * stor8.length) + 5 / 10 * 10^17 * (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10^18 / 10^18
                stor16 = 1
            else:
                if not stor[_11] * stor8.length:
                    require idx < stor8.length
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    if not balanceOf[address(stor8[idx])]:
                        stor16 = 2
                        stor15 = stor10
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 5
                        dividendsOf[address(stor8[idx])] += 10^17 * (10^9 * arg1 * totalSupply + 10^18 / 10^18) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 10^18
        idx = idx + 1
        continue 
    emit 0x545da484: arg1, msg.sender
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require not onlyAmbassadors
    require arg2 <= balanceOf[address(msg.sender)]
    require 5 * 10^16 * arg2 / 10^18 <= totalSupply
    totalSupply -= 5 * 10^16 * arg2 / 10^18
    require 5 * 10^16 * arg2 / 10^18 <= soldTokens
    soldTokens -= 5 * 10^16 * arg2 / 10^18
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require (95 * 10^16 * arg2 / 10^18) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (95 * 10^16 * arg2 / 10^18) + balanceOf[arg1]
    require 10^9 * ((5 * 10^16 * arg2 / 10^18) + 10^18)^2 + -(5 * 10^16 * arg2 / 10^18) - 10^18 / 10^18 / 2 <= 10^9 * 5 * 10^16 * arg2 / 10^18 * totalSupply + 10^18 / 10^18
    stor17 = (10^9 * 5 * 10^16 * arg2 / 10^18 * totalSupply + 10^18 / 10^18) - (10^9 * ((5 * 10^16 * arg2 / 10^18) + 10^18)^2 + -(5 * 10^16 * arg2 / 10^18) - 10^18 / 10^18 / 2) / 10^18
    idx = 0
    s = 0
    while idx < stor8.length:
        mem[0] = address(stor8[idx])
        mem[32] = 3
        idx = idx + 1
        s = balanceOf[address(stor8[idx])] + s
        continue 
    idx = 0
    while idx < stor8.length:
        if stor[_14] * stor8.length <= 0:
            if not stor[_14] * stor8.length:
                require idx < stor8.length
                mem[0] = address(stor8[idx])
                mem[32] = 3
                if not balanceOf[address(stor8[idx])]:
                    stor16 = 2
                    stor15 = stor10
                    require idx < stor8.length
                    mem[0] = address(stor8[idx])
                    mem[32] = 5
                    dividendsOf[address(stor8[idx])] += (10^9 * 5 * 10^16 * arg2 / 10^18 * totalSupply + 10^18 / 10^18) - (10^9 * ((5 * 10^16 * arg2 / 10^18) + 10^18)^2 + -(5 * 10^16 * arg2 / 10^18) - 10^18 / 10^18 / 2) / 10^18
        else:
            require idx < stor8.length
            mem[0] = address(stor8[idx])
            mem[32] = 3
            if balanceOf[address(stor8[idx])]:
                require idx < stor8.length
                require stor[_14] * stor8.length
                stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_14] * stor8.length) + 5 / 10 * (10^9 * 5 * 10^16 * arg2 / 10^18 * totalSupply + 10^18 / 10^18) - (10^9 * ((5 * 10^16 * arg2 / 10^18) + 10^18)^2 + -(5 * 10^16 * arg2 / 10^18) - 10^18 / 10^18 / 2) / 10^18 / 10^18
                stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_14] * stor8.length) + 5 / 10 * (10^9 * 5 * 10^16 * arg2 / 10^18 * totalSupply + 10^18 / 10^18) - (10^9 * ((5 * 10^16 * arg2 / 10^18) + 10^18)^2 + -(5 * 10^16 * arg2 / 10^18) - 10^18 / 10^18 / 2) / 10^18 / 10^18
                require idx < stor8.length
                mem[0] = address(stor8[idx])
                mem[32] = 5
                dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_14] * stor8.length) + 5 / 10 * (10^9 * 5 * 10^16 * arg2 / 10^18 * totalSupply + 10^18 / 10^18) - (10^9 * ((5 * 10^16 * arg2 / 10^18) + 10^18)^2 + -(5 * 10^16 * arg2 / 10^18) - 10^18 / 10^18 / 2) / 10^18 / 10^18
                stor16 = 1
            else:
                if not stor[_14] * stor8.length:
                    require idx < stor8.length
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    if not balanceOf[address(stor8[idx])]:
                        stor16 = 2
                        stor15 = stor10
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 5
                        dividendsOf[address(stor8[idx])] += (10^9 * 5 * 10^16 * arg2 / 10^18 * totalSupply + 10^18 / 10^18) - (10^9 * ((5 * 10^16 * arg2 / 10^18) + 10^18)^2 + -(5 * 10^16 * arg2 / 10^18) - 10^18 / 10^18 / 2) / 10^18
        idx = idx + 1
        continue 
    emit Transfer((95 * 10^16 * arg2 / 10^18), msg.sender, arg1);
    return 1
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2 <= 10^9 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18
        require balanceOf[address(msg.sender)] <= totalSupply
        totalSupply -= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        require balanceOf[address(msg.sender)] <= soldTokens
        soldTokens -= balanceOf[address(msg.sender)]
        sub_eba9f92d[address(msg.sender)] += 25 * 10^13 * 3600 * (10^9 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10^18
        stor17 = 10^17 * (10^9 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10^18
        idx = 0
        s = 0
        while idx < stor8.length:
            mem[0] = address(stor8[idx])
            mem[32] = 3
            idx = idx + 1
            s = balanceOf[address(stor8[idx])] + s
            continue 
        idx = 0
        while idx < stor8.length:
            if stor[_40] * stor8.length <= 0:
                if not stor[_40] * stor8.length:
                    require idx < stor8.length
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    if not balanceOf[address(stor8[idx])]:
                        stor16 = 2
                        stor15 = stor10
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 5
                        dividendsOf[address(stor8[idx])] += 10^17 * (10^9 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10^18
            else:
                require idx < stor8.length
                mem[0] = address(stor8[idx])
                mem[32] = 3
                if balanceOf[address(stor8[idx])]:
                    require idx < stor8.length
                    require stor[_40] * stor8.length
                    stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_40] * stor8.length) + 5 / 10 * 10^17 * (10^9 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10^18 / 10^18
                    stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_40] * stor8.length) + 5 / 10 * 10^17 * (10^9 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10^18 / 10^18
                    require idx < stor8.length
                    mem[0] = address(stor8[idx])
                    mem[32] = 5
                    dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_40] * stor8.length) + 5 / 10 * 10^17 * (10^9 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10^18 / 10^18
                    stor16 = 1
                else:
                    if not stor[_40] * stor8.length:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if not balanceOf[address(stor8[idx])]:
                            stor16 = 2
                            stor15 = stor10
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += 10^17 * (10^9 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 10^18
            idx = idx + 1
            continue 
        emit 0x545da484: balanceOf[address(msg.sender)], msg.sender
    require dividendsOf[address(msg.sender)] + stor4[address(msg.sender)] > 0
    dividendsOf[address(msg.sender)] = 0
    stor4[address(msg.sender)] = 0
    call 0x9e4f01bf4d6aa5c583bcb84462e32e8a5ce6195f with:
       value (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call 0xb0e9ff0c19b7147bfdeb81f0e1d3089efec4fbcd with:
       value (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 wei
         gas 2300 * is_zero(value) wei
    call msg.sender with:
       value (8 * 10^17 * dividendsOf[address(msg.sender)]) + (8 * 10^17 * stor4[address(msg.sender)]) / 10^18 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw((dividendsOf[address(msg.sender)] + stor4[address(msg.sender)]), msg.sender);
}

function _fallback() payable {
    stor13 = msg.value
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if address(stor8[idx]) != msg.sender:
            idx = idx + 1
            continue 
        stor14 = 85 * 10^16 * msg.value / 10^18
        s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
        t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
        while s < t:
            require s
            s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
            t = s
            continue 
        require 1000000000 * 10^18 <= t
        if totalSupply <= 0:
            totalSupply = (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 > 0:
                stor17 = 15 * 10^16 * msg.value / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_159] * stor8.length <= 0:
                        if not stor[_159] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_159] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_159] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_159] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_159] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_159] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    idx = idx + 1
                    continue 
        else:
            require t - 1000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 1000000000 * 10^18 / 10^9
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 > 0:
                stor17 = 15 * 10^16 * msg.value / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_161] * stor8.length <= 0:
                        if not stor[_161] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_161] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_161] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_161] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_161] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_161] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    idx = idx + 1
                    continue 
        emit onTokenPurchase(msg.value, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
        soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
    stor12++
    stor8.length++
    if not stor8.length > stor8.length + 1:
        address(stor8[stor8.length]) = msg.sender
        stor14 = 85 * 10^16 * msg.value / 10^18
        s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
        t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
        while s < t:
            require s
            s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
            t = s
            continue 
        require 1000000000 * 10^18 <= t
        if totalSupply <= 0:
            totalSupply = (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 > 0:
                stor17 = 15 * 10^16 * msg.value / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_155] * stor8.length <= 0:
                        if not stor[_155] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_155] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_155] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_155] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_155] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_155] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    idx = idx + 1
                    continue 
        else:
            require t - 1000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 1000000000 * 10^18 / 10^9
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 > 0:
                stor17 = 15 * 10^16 * msg.value / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_157] * stor8.length <= 0:
                        if not stor[_157] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_157] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_157] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_157] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_157] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_157] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    idx = idx + 1
                    continue 
    else:
        idx = stor8.length + 1
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
        address(stor8[stor8.length]) = msg.sender
        stor14 = 85 * 10^16 * msg.value / 10^18
        s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
        t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
        while s < t:
            require s
            s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
            t = s
            continue 
        require 1000000000 * 10^18 <= t
        if totalSupply <= 0:
            totalSupply = (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 > 0:
                stor17 = 15 * 10^16 * msg.value / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _247 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_247] * stor8.length <= 0:
                        if not stor[_247] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_247] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_247] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_247] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_247] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_247] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    idx = idx + 1
                    continue 
        else:
            require t - 1000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 1000000000 * 10^18 / 10^9
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 > 0:
                stor17 = 15 * 10^16 * msg.value / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _249 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_249] * stor8.length <= 0:
                        if not stor[_249] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_249] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_249] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_249] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_249] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_249] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                    idx = idx + 1
                    continue 
    emit onTokenPurchase(msg.value, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
    soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
}

function reinvest() {
    require dividendsOf[address(msg.sender)] + stor4[address(msg.sender)] > 0
    stor13 = (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if address(stor8[idx]) != msg.sender:
            idx = idx + 1
            continue 
        stor14 = 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
        s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
        t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
        while s < t:
            require s
            s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
            t = s
            continue 
        require 1000000000 * 10^18 <= t
        if totalSupply <= 0:
            totalSupply = (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 <= 0:
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_347] * stor8.length <= 0:
                        if not stor[_347] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_347] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_347] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_347] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_347] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_347] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
            else:
                stor17 = 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_349] * stor8.length <= 0:
                        if not stor[_349] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_349] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_349] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_349] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_349] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_349] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    idx = idx + 1
                    continue 
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _779 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_779] * stor8.length <= 0:
                        if not stor[_779] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_779] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_779] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_779] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_779] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_779] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
        else:
            require t - 1000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 1000000000 * 10^18 / 10^9
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 <= 0:
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_351] * stor8.length <= 0:
                        if not stor[_351] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_351] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_351] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_351] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_351] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_351] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
            else:
                stor17 = 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_353] * stor8.length <= 0:
                        if not stor[_353] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_353] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_353] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_353] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_353] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_353] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    idx = idx + 1
                    continue 
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _781 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_781] * stor8.length <= 0:
                        if not stor[_781] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_781] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_781] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_781] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_781] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_781] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
        emit onReinvestment(dividendsOf[address(msg.sender)] + stor4[address(msg.sender)], (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender);
    stor12++
    stor8.length++
    if not stor8.length > stor8.length + 1:
        address(stor8[stor8.length]) = msg.sender
        stor14 = 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
        s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
        t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
        while s < t:
            require s
            s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
            t = s
            continue 
        require 1000000000 * 10^18 <= t
        if totalSupply <= 0:
            totalSupply = (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 <= 0:
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_339] * stor8.length <= 0:
                        if not stor[_339] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_339] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_339] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_339] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_339] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_339] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
            else:
                stor17 = 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_341] * stor8.length <= 0:
                        if not stor[_341] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_341] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_341] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_341] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_341] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_341] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    idx = idx + 1
                    continue 
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _767 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_767] * stor8.length <= 0:
                        if not stor[_767] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_767] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_767] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_767] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_767] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_767] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
        else:
            require t - 1000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 1000000000 * 10^18 / 10^9
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 <= 0:
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_343] * stor8.length <= 0:
                        if not stor[_343] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_343] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_343] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_343] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_343] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_343] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
            else:
                stor17 = 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_345] * stor8.length <= 0:
                        if not stor[_345] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_345] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_345] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_345] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_345] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_345] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    idx = idx + 1
                    continue 
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _769 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_769] * stor8.length <= 0:
                        if not stor[_769] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_769] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_769] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_769] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_769] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_769] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
    else:
        idx = stor8.length + 1
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
        address(stor8[stor8.length]) = msg.sender
        stor14 = 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
        s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
        t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
        while s < t:
            require s
            s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
            t = s
            continue 
        require 1000000000 * 10^18 <= t
        if totalSupply <= 0:
            totalSupply = (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 <= 0:
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _543 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_543] * stor8.length <= 0:
                        if not stor[_543] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_543] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_543] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_543] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_543] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_543] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
            else:
                stor17 = 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _545 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_545] * stor8.length <= 0:
                        if not stor[_545] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_545] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_545] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_545] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_545] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_545] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    idx = idx + 1
                    continue 
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _919 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_919] * stor8.length <= 0:
                        if not stor[_919] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_919] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_919] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_919] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_919] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_919] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
        else:
            require t - 1000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 1000000000 * 10^18 / 10^9
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if stor12 <= 0:
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _547 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_547] * stor8.length <= 0:
                        if not stor[_547] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_547] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_547] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_547] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_547] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_547] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
            else:
                stor17 = 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _549 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_549] * stor8.length <= 0:
                        if not stor[_549] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_549] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_549] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_549] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_549] * stor8.length) + 5 / 10 * 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_549] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * (25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18 / 10^18
                    idx = idx + 1
                    continue 
                emit onTokenPurchase((25 * 10^13 * 3600 * dividendsOf[address(msg.sender)]) + (25 * 10^13 * 3600 * stor4[address(msg.sender)]) / 10^18, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, 0);
                soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
                dividendsOf[address(msg.sender)] = 0
                stor4[address(msg.sender)] = 0
                stor17 = (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = address(stor8[idx])
                    mem[32] = 3
                    _921 = sha3(address(stor8[idx]), 3)
                    idx = idx + 1
                    s = balanceOf[address(stor8[idx])] + s
                    continue 
                idx = 0
                while idx < stor8.length:
                    if stor[_921] * stor8.length <= 0:
                        if not stor[_921] * stor8.length:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if not balanceOf[address(stor8[idx])]:
                                stor16 = 2
                                stor15 = stor10
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    else:
                        require idx < stor8.length
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        if balanceOf[address(stor8[idx])]:
                            require idx < stor8.length
                            require stor[_921] * stor8.length
                            stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_921] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_921] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 5
                            dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_921] * stor8.length) + 5 / 10 * (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18 / 10^18
                            stor16 = 1
                        else:
                            if not stor[_921] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10^17 * dividendsOf[address(msg.sender)]) + (10^17 * stor4[address(msg.sender)]) / 10^18
                    idx = idx + 1
                    continue 
    emit onReinvestment(dividendsOf[address(msg.sender)] + stor4[address(msg.sender)], (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender);
}

function buy(address arg1) payable {
    stor13 = msg.value
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if address(stor8[idx]) != msg.sender:
            idx = idx + 1
            continue 
        stor14 = 85 * 10^16 * msg.value / 10^18
        s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
        t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
        while s < t:
            require s
            s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
            t = s
            continue 
        require 1000000000 * 10^18 <= t
        if totalSupply <= 0:
            totalSupply = (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if not arg1:
                if stor12 > 0:
                    stor17 = 15 * 10^16 * msg.value / 10^18
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        idx = idx + 1
                        s = balanceOf[address(stor8[idx])] + s
                        continue 
                    idx = 0
                    while idx < stor8.length:
                        if stor[_819] * stor8.length <= 0:
                            if not stor[_819] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        else:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if balanceOf[address(stor8[idx])]:
                                require idx < stor8.length
                                require stor[_819] * stor8.length
                                stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_819] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_819] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_819] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor16 = 1
                            else:
                                if not stor[_819] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        idx = idx + 1
                        continue 
            else:
                if arg1 == msg.sender:
                    if stor12 > 0:
                        stor17 = 15 * 10^16 * msg.value / 10^18
                        idx = 0
                        s = 0
                        while idx < stor8.length:
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            idx = idx + 1
                            s = balanceOf[address(stor8[idx])] + s
                            continue 
                        idx = 0
                        while idx < stor8.length:
                            if stor[_821] * stor8.length <= 0:
                                if not stor[_821] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            else:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if balanceOf[address(stor8[idx])]:
                                    require idx < stor8.length
                                    require stor[_821] * stor8.length
                                    stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_821] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_821] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_821] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor16 = 1
                                else:
                                    if not stor[_821] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            idx = idx + 1
                            continue 
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        if stor12 > 0:
                            stor17 = 15 * 10^16 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_823] * stor8.length <= 0:
                                    if not stor[_823] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_823] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_823] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_823] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_823] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_823] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                idx = idx + 1
                                continue 
                    else:
                        stor4[address(arg1)] += 5 * 10^16 * msg.value / 10^18
                        stor18 += 5 * 10^16 * msg.value / 10^18
                        if stor12 > 0:
                            stor17 = 10^17 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_825] * stor8.length <= 0:
                                    if not stor[_825] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_825] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_825] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_825] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_825] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_825] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                idx = idx + 1
                                continue 
        else:
            require t - 1000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 1000000000 * 10^18 / 10^9
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if not arg1:
                if stor12 > 0:
                    stor17 = 15 * 10^16 * msg.value / 10^18
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        idx = idx + 1
                        s = balanceOf[address(stor8[idx])] + s
                        continue 
                    idx = 0
                    while idx < stor8.length:
                        if stor[_827] * stor8.length <= 0:
                            if not stor[_827] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        else:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if balanceOf[address(stor8[idx])]:
                                require idx < stor8.length
                                require stor[_827] * stor8.length
                                stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_827] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_827] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_827] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor16 = 1
                            else:
                                if not stor[_827] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        idx = idx + 1
                        continue 
            else:
                if arg1 == msg.sender:
                    if stor12 > 0:
                        stor17 = 15 * 10^16 * msg.value / 10^18
                        idx = 0
                        s = 0
                        while idx < stor8.length:
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            idx = idx + 1
                            s = balanceOf[address(stor8[idx])] + s
                            continue 
                        idx = 0
                        while idx < stor8.length:
                            if stor[_829] * stor8.length <= 0:
                                if not stor[_829] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            else:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if balanceOf[address(stor8[idx])]:
                                    require idx < stor8.length
                                    require stor[_829] * stor8.length
                                    stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_829] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_829] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_829] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor16 = 1
                                else:
                                    if not stor[_829] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            idx = idx + 1
                            continue 
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        if stor12 > 0:
                            stor17 = 15 * 10^16 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_831] * stor8.length <= 0:
                                    if not stor[_831] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_831] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_831] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_831] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_831] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_831] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                idx = idx + 1
                                continue 
                    else:
                        stor4[address(arg1)] += 5 * 10^16 * msg.value / 10^18
                        stor18 += 5 * 10^16 * msg.value / 10^18
                        if stor12 > 0:
                            stor17 = 10^17 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_833] * stor8.length <= 0:
                                    if not stor[_833] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_833] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_833] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_833] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_833] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_833] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                idx = idx + 1
                                continue 
        emit onTokenPurchase(msg.value, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, arg1);
        soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
        return 0
    stor12++
    stor8.length++
    if not stor8.length > stor8.length + 1:
        address(stor8[stor8.length]) = msg.sender
        stor14 = 85 * 10^16 * msg.value / 10^18
        s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
        t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
        while s < t:
            require s
            s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
            t = s
            continue 
        require 1000000000 * 10^18 <= t
        if totalSupply <= 0:
            totalSupply = (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if not arg1:
                if stor12 > 0:
                    stor17 = 15 * 10^16 * msg.value / 10^18
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        idx = idx + 1
                        s = balanceOf[address(stor8[idx])] + s
                        continue 
                    idx = 0
                    while idx < stor8.length:
                        if stor[_803] * stor8.length <= 0:
                            if not stor[_803] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        else:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if balanceOf[address(stor8[idx])]:
                                require idx < stor8.length
                                require stor[_803] * stor8.length
                                stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_803] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_803] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_803] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor16 = 1
                            else:
                                if not stor[_803] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        idx = idx + 1
                        continue 
            else:
                if arg1 == msg.sender:
                    if stor12 > 0:
                        stor17 = 15 * 10^16 * msg.value / 10^18
                        idx = 0
                        s = 0
                        while idx < stor8.length:
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            idx = idx + 1
                            s = balanceOf[address(stor8[idx])] + s
                            continue 
                        idx = 0
                        while idx < stor8.length:
                            if stor[_805] * stor8.length <= 0:
                                if not stor[_805] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            else:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if balanceOf[address(stor8[idx])]:
                                    require idx < stor8.length
                                    require stor[_805] * stor8.length
                                    stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_805] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_805] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_805] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor16 = 1
                                else:
                                    if not stor[_805] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            idx = idx + 1
                            continue 
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        if stor12 > 0:
                            stor17 = 15 * 10^16 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_807] * stor8.length <= 0:
                                    if not stor[_807] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_807] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_807] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_807] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_807] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_807] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                idx = idx + 1
                                continue 
                    else:
                        stor4[address(arg1)] += 5 * 10^16 * msg.value / 10^18
                        stor18 += 5 * 10^16 * msg.value / 10^18
                        if stor12 > 0:
                            stor17 = 10^17 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_809] * stor8.length <= 0:
                                    if not stor[_809] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_809] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_809] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_809] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_809] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_809] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                idx = idx + 1
                                continue 
        else:
            require t - 1000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 1000000000 * 10^18 / 10^9
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if not arg1:
                if stor12 > 0:
                    stor17 = 15 * 10^16 * msg.value / 10^18
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        idx = idx + 1
                        s = balanceOf[address(stor8[idx])] + s
                        continue 
                    idx = 0
                    while idx < stor8.length:
                        if stor[_811] * stor8.length <= 0:
                            if not stor[_811] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        else:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if balanceOf[address(stor8[idx])]:
                                require idx < stor8.length
                                require stor[_811] * stor8.length
                                stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_811] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_811] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_811] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor16 = 1
                            else:
                                if not stor[_811] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        idx = idx + 1
                        continue 
            else:
                if arg1 == msg.sender:
                    if stor12 > 0:
                        stor17 = 15 * 10^16 * msg.value / 10^18
                        idx = 0
                        s = 0
                        while idx < stor8.length:
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            idx = idx + 1
                            s = balanceOf[address(stor8[idx])] + s
                            continue 
                        idx = 0
                        while idx < stor8.length:
                            if stor[_813] * stor8.length <= 0:
                                if not stor[_813] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            else:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if balanceOf[address(stor8[idx])]:
                                    require idx < stor8.length
                                    require stor[_813] * stor8.length
                                    stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_813] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_813] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_813] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor16 = 1
                                else:
                                    if not stor[_813] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            idx = idx + 1
                            continue 
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        if stor12 > 0:
                            stor17 = 15 * 10^16 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_815] * stor8.length <= 0:
                                    if not stor[_815] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_815] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_815] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_815] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_815] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_815] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                idx = idx + 1
                                continue 
                    else:
                        stor4[address(arg1)] += 5 * 10^16 * msg.value / 10^18
                        stor18 += 5 * 10^16 * msg.value / 10^18
                        if stor12 > 0:
                            stor17 = 10^17 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_817] * stor8.length <= 0:
                                    if not stor[_817] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_817] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_817] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_817] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_817] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_817] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                idx = idx + 1
                                continue 
    else:
        idx = stor8.length + 1
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
        address(stor8[stor8.length]) = msg.sender
        stor14 = 85 * 10^16 * msg.value / 10^18
        s = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000001 / 2
        t = (2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000
        while s < t:
            require s
            s = ((2000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * 85 * 10^16 * msg.value / 10^18) + 0xa70c3c40a64e6c51999090b65f67d9240000000000000 / s) + s / 2
            t = s
            continue 
        require 1000000000 * 10^18 <= t
        if totalSupply <= 0:
            totalSupply = (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if not arg1:
                if stor12 > 0:
                    stor17 = 15 * 10^16 * msg.value / 10^18
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        _1223 = sha3(address(stor8[idx]), 3)
                        idx = idx + 1
                        s = balanceOf[address(stor8[idx])] + s
                        continue 
                    idx = 0
                    while idx < stor8.length:
                        if stor[_1223] * stor8.length <= 0:
                            if not stor[_1223] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        else:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if balanceOf[address(stor8[idx])]:
                                require idx < stor8.length
                                require stor[_1223] * stor8.length
                                stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1223] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1223] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1223] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor16 = 1
                            else:
                                if not stor[_1223] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        idx = idx + 1
                        continue 
            else:
                if arg1 == msg.sender:
                    if stor12 > 0:
                        stor17 = 15 * 10^16 * msg.value / 10^18
                        idx = 0
                        s = 0
                        while idx < stor8.length:
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            _1225 = sha3(address(stor8[idx]), 3)
                            idx = idx + 1
                            s = balanceOf[address(stor8[idx])] + s
                            continue 
                        idx = 0
                        while idx < stor8.length:
                            if stor[_1225] * stor8.length <= 0:
                                if not stor[_1225] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            else:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if balanceOf[address(stor8[idx])]:
                                    require idx < stor8.length
                                    require stor[_1225] * stor8.length
                                    stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1225] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1225] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1225] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor16 = 1
                                else:
                                    if not stor[_1225] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            idx = idx + 1
                            continue 
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        if stor12 > 0:
                            stor17 = 15 * 10^16 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                _1227 = sha3(address(stor8[idx]), 3)
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_1227] * stor8.length <= 0:
                                    if not stor[_1227] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_1227] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1227] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1227] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1227] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_1227] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                idx = idx + 1
                                continue 
                    else:
                        stor4[address(arg1)] += 5 * 10^16 * msg.value / 10^18
                        stor18 += 5 * 10^16 * msg.value / 10^18
                        if stor12 > 0:
                            stor17 = 10^17 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                _1229 = sha3(address(stor8[idx]), 3)
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_1229] * stor8.length <= 0:
                                    if not stor[_1229] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_1229] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1229] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1229] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1229] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_1229] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                idx = idx + 1
                                continue 
        else:
            require t - 1000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 1000000000 * 10^18 / 10^9
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 1000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            require (t - 1000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 1000000000 * 10^18 / 10^9 >= (t - 1000000000 * 10^18 / 10^9) - totalSupply
            require t - 1000000000 * 10^18 / 10^9 > totalSupply
            if not arg1:
                if stor12 > 0:
                    stor17 = 15 * 10^16 * msg.value / 10^18
                    idx = 0
                    s = 0
                    while idx < stor8.length:
                        mem[0] = address(stor8[idx])
                        mem[32] = 3
                        _1231 = sha3(address(stor8[idx]), 3)
                        idx = idx + 1
                        s = balanceOf[address(stor8[idx])] + s
                        continue 
                    idx = 0
                    while idx < stor8.length:
                        if stor[_1231] * stor8.length <= 0:
                            if not stor[_1231] * stor8.length:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if not balanceOf[address(stor8[idx])]:
                                    stor16 = 2
                                    stor15 = stor10
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        else:
                            require idx < stor8.length
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            if balanceOf[address(stor8[idx])]:
                                require idx < stor8.length
                                require stor[_1231] * stor8.length
                                stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1231] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1231] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 5
                                dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1231] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                stor16 = 1
                            else:
                                if not stor[_1231] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                        idx = idx + 1
                        continue 
            else:
                if arg1 == msg.sender:
                    if stor12 > 0:
                        stor17 = 15 * 10^16 * msg.value / 10^18
                        idx = 0
                        s = 0
                        while idx < stor8.length:
                            mem[0] = address(stor8[idx])
                            mem[32] = 3
                            _1233 = sha3(address(stor8[idx]), 3)
                            idx = idx + 1
                            s = balanceOf[address(stor8[idx])] + s
                            continue 
                        idx = 0
                        while idx < stor8.length:
                            if stor[_1233] * stor8.length <= 0:
                                if not stor[_1233] * stor8.length:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if not balanceOf[address(stor8[idx])]:
                                        stor16 = 2
                                        stor15 = stor10
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            else:
                                require idx < stor8.length
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                if balanceOf[address(stor8[idx])]:
                                    require idx < stor8.length
                                    require stor[_1233] * stor8.length
                                    stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1233] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1233] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 5
                                    dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1233] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                    stor16 = 1
                                else:
                                    if not stor[_1233] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                            idx = idx + 1
                            continue 
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        if stor12 > 0:
                            stor17 = 15 * 10^16 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                _1235 = sha3(address(stor8[idx]), 3)
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_1235] * stor8.length <= 0:
                                    if not stor[_1235] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_1235] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1235] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1235] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1235] * stor8.length) + 5 / 10 * 15 * 10^16 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_1235] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 15 * 10^16 * msg.value / 10^18
                                idx = idx + 1
                                continue 
                    else:
                        stor4[address(arg1)] += 5 * 10^16 * msg.value / 10^18
                        stor18 += 5 * 10^16 * msg.value / 10^18
                        if stor12 > 0:
                            stor17 = 10^17 * msg.value / 10^18
                            idx = 0
                            s = 0
                            while idx < stor8.length:
                                mem[0] = address(stor8[idx])
                                mem[32] = 3
                                _1237 = sha3(address(stor8[idx]), 3)
                                idx = idx + 1
                                s = balanceOf[address(stor8[idx])] + s
                                continue 
                            idx = 0
                            while idx < stor8.length:
                                if stor[_1237] * stor8.length <= 0:
                                    if not stor[_1237] * stor8.length:
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 3
                                        if not balanceOf[address(stor8[idx])]:
                                            stor16 = 2
                                            stor15 = stor10
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 5
                                            dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                else:
                                    require idx < stor8.length
                                    mem[0] = address(stor8[idx])
                                    mem[32] = 3
                                    if balanceOf[address(stor8[idx])]:
                                        require idx < stor8.length
                                        require stor[_1237] * stor8.length
                                        stor10 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1237] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor15 = (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1237] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        require idx < stor8.length
                                        mem[0] = address(stor8[idx])
                                        mem[32] = 5
                                        dividendsOf[address(stor8[idx])] += (10 * 10^18 * balanceOf[address(stor8[idx])] / stor[_1237] * stor8.length) + 5 / 10 * 10^17 * msg.value / 10^18 / 10^18
                                        stor16 = 1
                                    else:
                                        if not stor[_1237] * stor8.length:
                                            require idx < stor8.length
                                            mem[0] = address(stor8[idx])
                                            mem[32] = 3
                                            if not balanceOf[address(stor8[idx])]:
                                                stor16 = 2
                                                stor15 = stor10
                                                require idx < stor8.length
                                                mem[0] = address(stor8[idx])
                                                mem[32] = 5
                                                dividendsOf[address(stor8[idx])] += 10^17 * msg.value / 10^18
                                idx = idx + 1
                                continue 
    emit onTokenPurchase(msg.value, (t - 1000000000 * 10^18 / 10^9) - totalSupply, msg.sender, arg1);
    soldTokens = (t - 1000000000 * 10^18 / 10^9) - totalSupply + soldTokens
    return 0
}



}
