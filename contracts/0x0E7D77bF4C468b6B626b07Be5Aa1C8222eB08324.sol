contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 9
    stor0.length.field_8 = 'One Proof' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = 'Proof' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 10^18
    require not msg.value
    return code.data[363 len 3981]
}



// =====================  Runtime code  =====================


const decimals = 18

const totalEthereumBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint256 stakingRequirement;
mapping of uint256 balanceOf;
mapping of uint256 stor4;
mapping of uint256 stor5;
uint256 totalSupply;
uint256 stor7;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function stakingRequirement() {
    return stakingRequirement
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

function dividendsOf(address arg1) {
    return (Mask(192, 64, (balanceOf[address(arg1)] * stor7) - stor5[address(arg1)]) >> 64)
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)])
    return (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64)
}

function withdraw() {
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
    stor5[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)])
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]), msg.sender);
}

function sellPrice() {
    if 0 == totalSupply:
        return (2500000 * 3600)
    require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
    if not (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
        if 0 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
            return ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18)
    else:
        if 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 == 5:
            if 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
                return (((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) - (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100))
    revert
}

function buyPrice() {
    if 0 == totalSupply:
        return 11 * 10^9
    require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
    if not (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
        if (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
            return ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18)
    else:
        if 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 == 5:
            if (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
                return ((5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18))
    revert
}

function calculateEthereumReceived(uint256 arg1) {
    require arg1 <= totalSupply
    require 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1)
    if not (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
        if 0 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
            return ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
    else:
        if 5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 5:
            if 5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                return (((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100))
    revert
}

function calculateTokensReceived(uint256 arg1) {
    if not arg1:
        if 0 <= arg1:
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
            if 10000000000 * 10^18 <= t:
                return ((t - 10000000000 * 10^18 / 10^9) - totalSupply)
    else:
        if 5 * arg1 / arg1 == 5:
            if 5 * arg1 / 100 <= arg1:
                s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + (-2000000000000000000000000000 * 10^18 * 5 * arg1 / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
                t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + (-2000000000000000000000000000 * 10^18 * 5 * arg1 / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
                while s < t:
                    require s
                    s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * arg1) + (-2000000000000000000000000000 * 10^18 * 5 * arg1 / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                    t = s
                    continue 
                if 10000000000 * 10^18 <= t:
                    return ((t - 10000000000 * 10^18 / 10^9) - totalSupply)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0:
        require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
        stor5[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)])
        stor4[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]), msg.sender);
    require arg2
    require 5 * arg2 / arg2 == 5
    require 5 * arg2 / 100 <= arg2
    require 10^9 * ((5 * arg2 / 100) + 10^18)^2 + -(5 * arg2 / 100) - 10^18 / 10^18 / 2 <= (2500000 * 3600 * 5 * arg2 / 100) + (10^9 * totalSupply + 10^18 / 10^18 * 5 * arg2 / 100)
    require 5 * arg2 / 100 <= totalSupply
    totalSupply -= 5 * arg2 / 100
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 - (5 * arg2 / 100) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 - (5 * arg2 / 100) + balanceOf[arg1]
    stor5[address(msg.sender)] += -1 * arg2 * stor7
    stor5[arg1] = stor5[arg1] + (arg2 * stor7) - (5 * arg2 / 100 * stor7)
    require totalSupply
    require ((2500000 * 3600 * 5 * arg2 / 100) + (10^9 * totalSupply + 10^18 / 10^18 * 5 * arg2 / 100) - (10^9 * ((5 * arg2 / 100) + 10^18)^2 + -(5 * arg2 / 100) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply) + stor7 >= stor7
    stor7 += (2500000 * 3600 * 5 * arg2 / 100) + (10^9 * totalSupply + 10^18 / 10^18 * 5 * arg2 / 100) - (10^9 * ((5 * arg2 / 100) + 10^18)^2 + -(5 * arg2 / 100) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply
    emit Transfer((arg2 - (5 * arg2 / 100)), msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require 10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1)
    if not (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
        require 0 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        stor5[address(msg.sender)] = stor5[address(msg.sender)] - ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 << 64) - (arg1 * stor7)
        if totalSupply > 0:
            require totalSupply
            require (0 / totalSupply) + stor7 >= stor7
            stor7 += 0 / totalSupply
        if 0 == totalSupply:
            emit onTokenSell(arg1, (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, 11 * 10^9, msg.sender);
        else:
            require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
            if not (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
                require (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
                emit onTokenSell(arg1, (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18, msg.sender);
            else:
                require 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 == 5
                require (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
                emit onTokenSell(arg1, (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18), msg.sender);
    else:
        require 5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 5
        require 5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        stor5[address(msg.sender)] = stor5[address(msg.sender)] - (((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) << 64) - (arg1 * stor7)
        if totalSupply > 0:
            require totalSupply
            require (5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) + stor7 >= stor7
            stor7 += 5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
        if 0 == totalSupply:
            emit onTokenSell(arg1, ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, 11 * 10^9, msg.sender);
        else:
            require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
            if not (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
                require (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
                emit onTokenSell(arg1, ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18, msg.sender);
            else:
                require 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 == 5
                require (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
                emit onTokenSell(arg1, ((2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (5 * (2500000 * 3600 * arg1) + (10^9 * totalSupply + 10^18 / 10^18 * arg1) - (10^9 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18), msg.sender);
}

function _fallback() payable {
    if not msg.value:
        require 0 <= msg.value
        s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
        t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
        while s < t:
            require s
            s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
            t = s
            continue 
        require 10000000000 * 10^18 <= t
        require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
        require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
        require t - 10000000000 * 10^18 / 10^9 > totalSupply
        if totalSupply <= 0:
            totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) + stor5[address(msg.sender)]
        else:
            require t - 10000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 10000000000 * 10^18 / 10^9
            require t - 10000000000 * 10^18 / 10^9
            stor7 += 0 / t - 10000000000 * 10^18 / 10^9
            require totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * 0 / totalSupply) + (totalSupply * 0 / totalSupply) + stor5[address(msg.sender)]
    else:
        require 5 * msg.value / msg.value == 5
        if not 5 * msg.value / 100:
            require 0 <= 5 * msg.value / 100
            require 5 * msg.value / 100 <= msg.value
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
            require 10000000000 * 10^18 <= t
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require t - 10000000000 * 10^18 / 10^9 > totalSupply
            require 5 * msg.value / 100 >= 5 * msg.value / 100
        else:
            require 60 * 5 * msg.value / 100 / 5 * msg.value / 100 == 60
            require 60 * 5 * msg.value / 100 / 100 <= 5 * msg.value / 100
            require 5 * msg.value / 100 <= msg.value
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
            require 10000000000 * 10^18 <= t
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require t - 10000000000 * 10^18 / 10^9 > totalSupply
            require 5 * msg.value / 100 >= (5 * msg.value / 100) - (60 * 5 * msg.value / 100 / 100)
        if totalSupply <= 0:
            totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (5 * msg.value / 100 << 64) + stor5[address(msg.sender)]
        else:
            require t - 10000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 10000000000 * 10^18 / 10^9
            require t - 10000000000 * 10^18 / 10^9
            stor7 += 5 * msg.value / 100 << 64 / t - 10000000000 * 10^18 / 10^9
            require totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * 5 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 5 * msg.value / 100 << 64 / totalSupply) + stor5[address(msg.sender)]
    if 0 == totalSupply:
        emit onTokenPurchase(msg.value, (t - 10000000000 * 10^18 / 10^9) - totalSupply, block.timestamp, 11 * 10^9, msg.sender, 0);
    else:
        require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
        if not (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
            require (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
            emit onTokenPurchase(msg.value, (t - 10000000000 * 10^18 / 10^9) - totalSupply, block.timestamp, (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18, msg.sender, 0);
        else:
            require 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 == 5
            require (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
            emit onTokenPurchase(msg.value, (t - 10000000000 * 10^18 / 10^9) - totalSupply, block.timestamp, (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18), msg.sender, 0);
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require 10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2 <= (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)])
        if not (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18:
            require 0 <= (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
            require balanceOf[address(msg.sender)] <= totalSupply
            totalSupply -= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = 0
            stor5[address(msg.sender)] = stor5[address(msg.sender)] - ((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 << 64) - (balanceOf[address(msg.sender)] * stor7)
            if totalSupply > 0:
                require totalSupply
                require (0 / totalSupply) + stor7 >= stor7
                stor7 += 0 / totalSupply
            if 0 == totalSupply:
                emit onTokenSell(balanceOf[address(msg.sender)], (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, block.timestamp, 11 * 10^9, msg.sender);
            else:
                require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
                if not (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
                    require (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
                    emit onTokenSell(balanceOf[address(msg.sender)], (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18, msg.sender);
                else:
                    require 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 == 5
                    require (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
                    emit onTokenSell(balanceOf[address(msg.sender)], (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18), msg.sender);
        else:
            require 5 * (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 == 5
            require 5 * (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 <= (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
            require balanceOf[address(msg.sender)] <= totalSupply
            totalSupply -= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = 0
            stor5[address(msg.sender)] = stor5[address(msg.sender)] - (((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (5 * (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) << 64) - (balanceOf[address(msg.sender)] * stor7)
            if totalSupply > 0:
                require totalSupply
                require (5 * (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) + stor7 >= stor7
                stor7 += 5 * (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
            if 0 == totalSupply:
                emit onTokenSell(balanceOf[address(msg.sender)], ((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (5 * (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, 11 * 10^9, msg.sender);
            else:
                require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
                if not (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
                    require (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
                    emit onTokenSell(balanceOf[address(msg.sender)], ((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (5 * (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18, msg.sender);
                else:
                    require 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 == 5
                    require (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
                    emit onTokenSell(balanceOf[address(msg.sender)], ((2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (5 * (2500000 * 3600 * balanceOf[address(msg.sender)]) + (10^9 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^9 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18), msg.sender);
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
    stor5[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)])
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit onWithdraw(((Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]), msg.sender);
}

function reinvest() {
    require (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
    stor5[address(msg.sender)] += Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)])
    stor4[address(msg.sender)] = 0
    if not (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
        require 0 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
        s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor4[address(msg.sender)]) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
        t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor4[address(msg.sender)]) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
        while s < t:
            require s
            s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor4[address(msg.sender)]) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
            t = s
            continue 
        require 10000000000 * 10^18 <= t
        require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
        require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
        require t - 10000000000 * 10^18 / 10^9 > totalSupply
        if totalSupply <= 0:
            totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) + stor5[address(msg.sender)]
        else:
            require t - 10000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 10000000000 * 10^18 / 10^9
            require t - 10000000000 * 10^18 / 10^9
            stor7 += 0 / t - 10000000000 * 10^18 / 10^9
            require totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * 0 / totalSupply) + (totalSupply * 0 / totalSupply) + stor5[address(msg.sender)]
    else:
        require (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 5
        if not (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100:
            require 0 <= (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100
            require (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor4[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor4[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor4[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
            require 10000000000 * 10^18 <= t
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require t - 10000000000 * 10^18 / 10^9 > totalSupply
            require (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 >= (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100
        else:
            require 60 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 / (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 == 60
            require 60 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 / 100 <= (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100
            require (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 <= (Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor4[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor4[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (0x59aedfc10d7279c5eed1401645400000000000 * stor4[address(msg.sender)]) + (-2000000000000000000000000000 * 10^18 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
            require 10000000000 * 10^18 <= t
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require t - 10000000000 * 10^18 / 10^9 > totalSupply
            require (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 >= ((5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100) - (60 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 / 100)
        if totalSupply <= 0:
            totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - ((5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 << 64) + stor5[address(msg.sender)]
        else:
            require t - 10000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 10000000000 * 10^18 / 10^9
            require t - 10000000000 * 10^18 / 10^9
            stor7 += (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 << 64 / t - 10000000000 * 10^18 / 10^9
            require totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (5 * Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + (5 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply) + stor5[address(msg.sender)]
    if 0 == totalSupply:
        emit onTokenPurchase((Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 10000000000 * 10^18 / 10^9) - totalSupply, block.timestamp, 11 * 10^9, msg.sender, 0);
    else:
        require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
        if not (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
            require (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
            emit onTokenPurchase((Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 10000000000 * 10^18 / 10^9) - totalSupply, block.timestamp, (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18, msg.sender, 0);
        else:
            require 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 == 5
            require (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
            emit onTokenPurchase((Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 10000000000 * 10^18 / 10^9) - totalSupply, block.timestamp, (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18), msg.sender, 0);
    emit onReinvestment((Mask(192, 64, (balanceOf[address(msg.sender)] * stor7) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 10000000000 * 10^18 / 10^9) - totalSupply, msg.sender);
}

function buy(address arg1) payable {
    if not msg.value:
        require 0 <= msg.value
        s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
        t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
        while s < t:
            require s
            s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
            t = s
            continue 
        require 10000000000 * 10^18 <= t
        require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
        require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
        require t - 10000000000 * 10^18 / 10^9 > totalSupply
        if arg1:
            if arg1 != msg.sender:
                if balanceOf[address(arg1)] >= stakingRequirement:
                    require stor4[address(arg1)] >= stor4[address(arg1)]
        if totalSupply <= 0:
            totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) + stor5[address(msg.sender)]
        else:
            require t - 10000000000 * 10^18 / 10^9 >= totalSupply
            totalSupply = t - 10000000000 * 10^18 / 10^9
            require t - 10000000000 * 10^18 / 10^9
            stor7 += 0 / t - 10000000000 * 10^18 / 10^9
            require totalSupply
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * 0 / totalSupply) + (totalSupply * 0 / totalSupply) + stor5[address(msg.sender)]
    else:
        require 5 * msg.value / msg.value == 5
        if not 5 * msg.value / 100:
            require 0 <= 5 * msg.value / 100
            require 5 * msg.value / 100 <= msg.value
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
            require 10000000000 * 10^18 <= t
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require t - 10000000000 * 10^18 / 10^9 > totalSupply
            if not arg1:
                require 5 * msg.value / 100 >= 5 * msg.value / 100
            else:
                if arg1 == msg.sender:
                    require 5 * msg.value / 100 >= 5 * msg.value / 100
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        require 5 * msg.value / 100 >= 5 * msg.value / 100
                    else:
                        require stor4[address(arg1)] >= stor4[address(arg1)]
            if totalSupply <= 0:
                totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
                require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (5 * msg.value / 100 << 64) + stor5[address(msg.sender)]
            else:
                require t - 10000000000 * 10^18 / 10^9 >= totalSupply
                totalSupply = t - 10000000000 * 10^18 / 10^9
                require t - 10000000000 * 10^18 / 10^9
                stor7 += 5 * msg.value / 100 << 64 / t - 10000000000 * 10^18 / 10^9
                require totalSupply
                require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * 5 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 5 * msg.value / 100 << 64 / totalSupply) + stor5[address(msg.sender)]
        else:
            require 60 * 5 * msg.value / 100 / 5 * msg.value / 100 == 60
            require 60 * 5 * msg.value / 100 / 100 <= 5 * msg.value / 100
            require 5 * msg.value / 100 <= msg.value
            s = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000001 / 2
            t = (20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000
            while s < t:
                require s
                s = ((20000000000000000000 * 10^18 * totalSupply) + (10^18 * totalSupply^2) + (0x59aedfc10d7279c5eed1401645400000000000 * msg.value) + (-2000000000000000000000000000 * 10^18 * 5 * msg.value / 100) + 0x4140c78940f6a24fdffc78873d4490d2100000000000000 / s) + s / 2
                t = s
                continue 
            require 10000000000 * 10^18 <= t
            require (t - 10000000000 * 10^18 / 10^9) - totalSupply > 0
            require t - 10000000000 * 10^18 / 10^9 >= (t - 10000000000 * 10^18 / 10^9) - totalSupply
            require t - 10000000000 * 10^18 / 10^9 > totalSupply
            if not arg1:
                require 5 * msg.value / 100 >= (5 * msg.value / 100) - (60 * 5 * msg.value / 100 / 100)
                if totalSupply <= 0:
                    totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
                    require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                    stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (5 * msg.value / 100 << 64) + stor5[address(msg.sender)]
                else:
                    require t - 10000000000 * 10^18 / 10^9 >= totalSupply
                    totalSupply = t - 10000000000 * 10^18 / 10^9
                    require t - 10000000000 * 10^18 / 10^9
                    stor7 += 5 * msg.value / 100 << 64 / t - 10000000000 * 10^18 / 10^9
                    require totalSupply
                    require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                    stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * 5 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 5 * msg.value / 100 << 64 / totalSupply) + stor5[address(msg.sender)]
            else:
                if arg1 == msg.sender:
                    require 5 * msg.value / 100 >= (5 * msg.value / 100) - (60 * 5 * msg.value / 100 / 100)
                    if totalSupply <= 0:
                        totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
                        require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                        stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (5 * msg.value / 100 << 64) + stor5[address(msg.sender)]
                    else:
                        require t - 10000000000 * 10^18 / 10^9 >= totalSupply
                        totalSupply = t - 10000000000 * 10^18 / 10^9
                        require t - 10000000000 * 10^18 / 10^9
                        stor7 += 5 * msg.value / 100 << 64 / t - 10000000000 * 10^18 / 10^9
                        require totalSupply
                        require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                        stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * 5 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 5 * msg.value / 100 << 64 / totalSupply) + stor5[address(msg.sender)]
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        require 5 * msg.value / 100 >= (5 * msg.value / 100) - (60 * 5 * msg.value / 100 / 100)
                        if totalSupply <= 0:
                            totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
                            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (5 * msg.value / 100 << 64) + stor5[address(msg.sender)]
                        else:
                            require t - 10000000000 * 10^18 / 10^9 >= totalSupply
                            totalSupply = t - 10000000000 * 10^18 / 10^9
                            require t - 10000000000 * 10^18 / 10^9
                            stor7 += 5 * msg.value / 100 << 64 / t - 10000000000 * 10^18 / 10^9
                            require totalSupply
                            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * 5 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 5 * msg.value / 100 << 64 / totalSupply) + stor5[address(msg.sender)]
                    else:
                        require (60 * 5 * msg.value / 100 / 100) + stor4[address(arg1)] >= stor4[address(arg1)]
                        stor4[address(arg1)] += 60 * 5 * msg.value / 100 / 100
                        if totalSupply <= 0:
                            totalSupply = (t - 10000000000 * 10^18 / 10^9) - totalSupply
                            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - ((5 * msg.value / 100) - (60 * 5 * msg.value / 100 / 100) << 64) + stor5[address(msg.sender)]
                        else:
                            require t - 10000000000 * 10^18 / 10^9 >= totalSupply
                            totalSupply = t - 10000000000 * 10^18 / 10^9
                            require t - 10000000000 * 10^18 / 10^9
                            stor7 += (5 * msg.value / 100) - (60 * 5 * msg.value / 100 / 100) << 64 / t - 10000000000 * 10^18 / 10^9
                            require totalSupply
                            require (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9) - totalSupply + balanceOf[address(msg.sender)]
                            stor5[address(msg.sender)] = (t - 10000000000 * 10^18 / 10^9 * stor7) - (totalSupply * stor7) - (t - 10000000000 * 10^18 / 10^9 * (5 * msg.value / 100) - (60 * 5 * msg.value / 100 / 100) << 64 / totalSupply) + (totalSupply * (5 * msg.value / 100) - (60 * 5 * msg.value / 100 / 100) << 64 / totalSupply) + stor5[address(msg.sender)]
    if 0 == totalSupply:
        emit onTokenPurchase(msg.value, (t - 10000000000 * 10^18 / 10^9) - totalSupply, block.timestamp, 11 * 10^9, msg.sender, arg1);
    else:
        require 1999999999999999999 * 10^9 <= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (2500000 * 10^18 * 3600)
        if not (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18:
            require (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
            emit onTokenPurchase(msg.value, (t - 10000000000 * 10^18 / 10^9) - totalSupply, block.timestamp, (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18, msg.sender, arg1);
        else:
            require 5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 == 5
            require (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18) >= (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18
            emit onTokenPurchase(msg.value, (t - 10000000000 * 10^18 / 10^9) - totalSupply, block.timestamp, (5 * (1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18 / 100) + ((1000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^9 / 10^18), msg.sender, arg1);
    return 0
}



}
