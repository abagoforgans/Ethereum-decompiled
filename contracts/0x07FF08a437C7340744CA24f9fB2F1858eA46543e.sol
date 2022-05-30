contract main {




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
    return (Mask(192, 64, (stor7 * balanceOf[address(arg1)]) - stor5[address(arg1)]) >> 64)
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)])
    return (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64)
}

function withdraw() {
    require (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
    stor5[address(msg.sender)] += Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)])
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]), msg.sender);
}

function sellPrice() {
    if not totalSupply:
        return (25 * 10^6 * 3600)
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
        if 0 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
            return ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18)
    else:
        if (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
            if 4 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 4:
                if 4 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) - (4 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100))
    revert
}

function buyPrice() {
    if not totalSupply:
        return 11 * 10^10
    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
    if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
        if (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
            return ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18)
    else:
        if (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
            if 10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 10:
                if ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100))
    revert
}

function calculateEthereumReceived(uint256 arg1) {
    require arg1 <= totalSupply
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
    if not (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
        if 0 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
            return ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18)
    else:
        if (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
            if 4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 4:
                if 4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                    return (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100))
    revert
}

function calculateTokensReceived(uint256 arg1) {
    if not arg1:
        if 0 <= arg1:
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            if 100000000000 * 10^18 <= t:
                return ((t - 100000000000 * 10^18 / 10^10) - totalSupply)
    else:
        if arg1:
            if 10 * arg1 / arg1 == 10:
                if 10 * arg1 / 100 <= arg1:
                    s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 10 * arg1 / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
                    t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 10 * arg1 / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
                    while s < t:
                        require s
                        s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 10 * arg1 / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                        t = s
                        continue 
                    if 100000000000 * 10^18 <= t:
                        return ((t - 100000000000 * 10^18 / 10^10) - totalSupply)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0:
        require (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
        stor5[address(msg.sender)] += Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)])
        stor4[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]), msg.sender);
    require arg2
    require arg2
    require arg2 / arg2 == 1
    require arg2 / 100 <= arg2
    require 10^10 * ((arg2 / 100) + 10^18)^2 + -(arg2 / 100) - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg2 / 100) + (10^10 * totalSupply + 10^18 / 10^18 * arg2 / 100)
    require arg2 / 100 <= totalSupply
    totalSupply -= arg2 / 100
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 - (arg2 / 100) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100)
    stor5[address(msg.sender)] += -1 * stor7 * arg2
    stor5[address(arg1)] = stor5[address(arg1)] + (arg2 * stor7) - (arg2 / 100 * stor7)
    require totalSupply
    require stor7 + ((25 * 10^6 * 3600 * arg2 / 100) + (10^10 * totalSupply + 10^18 / 10^18 * arg2 / 100) - (10^10 * ((arg2 / 100) + 10^18)^2 + -(arg2 / 100) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply) >= stor7
    stor7 += (25 * 10^6 * 3600 * arg2 / 100) + (10^10 * totalSupply + 10^18 / 10^18 * arg2 / 100) - (10^10 * ((arg2 / 100) + 10^18)^2 + -(arg2 / 100) - 10^18 / 10^18 / 2) / 10^18 << 64 / totalSupply
    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
    if not (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
        require 0 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        stor5[address(msg.sender)] = stor5[address(msg.sender)] - (stor7 * arg1) - ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 << 64)
        if totalSupply > 0:
            require totalSupply
            require stor7 + (0 / totalSupply) >= stor7
            stor7 += 0 / totalSupply
        if not totalSupply:
            emit onTokenSell(arg1, (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, 11 * 10^10, msg.sender);
        else:
            require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
            if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                emit onTokenSell(arg1, (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
            else:
                require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                require 10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 10
                require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                emit onTokenSell(arg1, (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
    else:
        require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
        require 4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 4
        require 4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
        require arg1 <= totalSupply
        totalSupply -= arg1
        require arg1 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg1
        stor5[address(msg.sender)] = stor5[address(msg.sender)] - (stor7 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
        if totalSupply > 0:
            require totalSupply
            require stor7 + (4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor7
            stor7 += 4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
        if not totalSupply:
            emit onTokenSell(arg1, ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, 11 * 10^10, msg.sender);
        else:
            require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
            if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                emit onTokenSell(arg1, ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
            else:
                require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                require 10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 10
                require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                emit onTokenSell(arg1, ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (4 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
}

function _fallback() payable {
    if not msg.value:
        require 0 <= msg.value
        s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s
            s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
        require 100000000000 * 10^18 <= t
        require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
        require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
        require t - 100000000000 * 10^18 / 10^10 > totalSupply
        if totalSupply <= 0:
            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7)
        else:
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require totalSupply
            stor7 += 0 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
    else:
        require msg.value
        require 10 * msg.value / msg.value == 10
        if not 10 * msg.value / 100:
            require 0 <= 10 * msg.value / 100
            require 10 * msg.value / 100 <= msg.value
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000 * 10^18 <= t
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require t - 100000000000 * 10^18 / 10^10 > totalSupply
            require 10 * msg.value / 100 >= 10 * msg.value / 100
        else:
            require 10 * msg.value / 100
            require 33 * 10 * msg.value / 100 / 10 * msg.value / 100 == 33
            require 33 * 10 * msg.value / 100 / 100 <= 10 * msg.value / 100
            require 10 * msg.value / 100 <= msg.value
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000 * 10^18 <= t
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require t - 100000000000 * 10^18 / 10^10 > totalSupply
            require 10 * msg.value / 100 >= (10 * msg.value / 100) - (33 * 10 * msg.value / 100 / 100)
        if totalSupply <= 0:
            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (10 * msg.value / 100 << 64)
        else:
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require totalSupply
            stor7 += 10 * msg.value / 100 << 64 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
    if not totalSupply:
        emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, 11 * 10^10, msg.sender, 0);
    else:
        require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
        if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender, 0);
        else:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            require 10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 10
            require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender, 0);
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        require 10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)])
        if not (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18:
            require 0 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
            require balanceOf[address(msg.sender)] <= totalSupply
            totalSupply -= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = 0
            stor5[address(msg.sender)] = stor5[address(msg.sender)] - (stor7 * balanceOf[address(msg.sender)]) - ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 << 64)
            if totalSupply > 0:
                require totalSupply
                require stor7 + (0 / totalSupply) >= stor7
                stor7 += 0 / totalSupply
            if not totalSupply:
                emit onTokenSell(balanceOf[address(msg.sender)], (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, block.timestamp, 11 * 10^10, msg.sender);
            else:
                require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(balanceOf[address(msg.sender)], (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                else:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    require 10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 10
                    require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(balanceOf[address(msg.sender)], (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
        else:
            require (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
            require 4 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 == 4
            require 4 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
            require balanceOf[address(msg.sender)] <= totalSupply
            totalSupply -= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = 0
            stor5[address(msg.sender)] = stor5[address(msg.sender)] - (stor7 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (4 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor7 + (4 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor7
                stor7 += 4 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
            if not totalSupply:
                emit onTokenSell(balanceOf[address(msg.sender)], ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (4 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, 11 * 10^10, msg.sender);
            else:
                require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(balanceOf[address(msg.sender)], ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (4 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                else:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    require 10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 10
                    require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(balanceOf[address(msg.sender)], ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (4 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
    require (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
    stor5[address(msg.sender)] += Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)])
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]), msg.sender);
}

function reinvest() {
    require (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
    stor5[address(msg.sender)] += Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)])
    stor4[address(msg.sender)] = 0
    if not (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
        require 0 <= (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
        s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s
            s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
        require 100000000000 * 10^18 <= t
        require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
        require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
        require t - 100000000000 * 10^18 / 10^10 > totalSupply
        if totalSupply <= 0:
            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7)
        else:
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require totalSupply
            stor7 += 0 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
    else:
        require (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
        require (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 10
        if not (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100:
            require 0 <= (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100
            require (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000 * 10^18 <= t
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require t - 100000000000 * 10^18 / 10^10 > totalSupply
            require (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 >= (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100
        else:
            require (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100
            require 33 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 / (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 == 33
            require 33 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 / 100 <= (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100
            require (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000 * 10^18 <= t
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require t - 100000000000 * 10^18 / 10^10 > totalSupply
            require (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 >= ((10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100) - (33 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 / 100)
        if totalSupply <= 0:
            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - ((10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 << 64)
        else:
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require totalSupply
            stor7 += (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (10 * Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (10 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply)
    if not totalSupply:
        emit onTokenPurchase((Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, 11 * 10^10, msg.sender, 0);
    else:
        require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
        if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase((Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender, 0);
        else:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            require 10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 10
            require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase((Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender, 0);
    emit onReinvestment((Mask(192, 64, (stor7 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender);
}

function buy(address arg1) payable {
    if not msg.value:
        require 0 <= msg.value
        s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
        t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
        while s < t:
            require s
            s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
            t = s
            continue 
        require 100000000000 * 10^18 <= t
        require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
        require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
        require t - 100000000000 * 10^18 / 10^10 > totalSupply
        if arg1:
            if arg1 != msg.sender:
                if balanceOf[address(arg1)] >= stakingRequirement:
                    require stor4[address(arg1)] >= stor4[address(arg1)]
        if totalSupply <= 0:
            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7)
        else:
            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
            totalSupply = t - 100000000000 * 10^18 / 10^10
            require totalSupply
            stor7 += 0 / totalSupply
            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
    else:
        require msg.value
        require 10 * msg.value / msg.value == 10
        if not 10 * msg.value / 100:
            require 0 <= 10 * msg.value / 100
            require 10 * msg.value / 100 <= msg.value
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000 * 10^18 <= t
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require t - 100000000000 * 10^18 / 10^10 > totalSupply
            if not arg1:
                require 10 * msg.value / 100 >= 10 * msg.value / 100
            else:
                if arg1 == msg.sender:
                    require 10 * msg.value / 100 >= 10 * msg.value / 100
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        require 10 * msg.value / 100 >= 10 * msg.value / 100
                    else:
                        require stor4[address(arg1)] >= stor4[address(arg1)]
            if totalSupply <= 0:
                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (10 * msg.value / 100 << 64)
            else:
                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                totalSupply = t - 100000000000 * 10^18 / 10^10
                require totalSupply
                stor7 += 10 * msg.value / 100 << 64 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
        else:
            require 10 * msg.value / 100
            require 33 * 10 * msg.value / 100 / 10 * msg.value / 100 == 33
            require 33 * 10 * msg.value / 100 / 100 <= 10 * msg.value / 100
            require 10 * msg.value / 100 <= msg.value
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 10 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000 * 10^18 <= t
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require t - 100000000000 * 10^18 / 10^10 > totalSupply
            if not arg1:
                require 10 * msg.value / 100 >= (10 * msg.value / 100) - (33 * 10 * msg.value / 100 / 100)
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (10 * msg.value / 100 << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor7 += 10 * msg.value / 100 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
            else:
                if arg1 == msg.sender:
                    require 10 * msg.value / 100 >= (10 * msg.value / 100) - (33 * 10 * msg.value / 100 / 100)
                    if totalSupply <= 0:
                        totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                        stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (10 * msg.value / 100 << 64)
                    else:
                        require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                        totalSupply = t - 100000000000 * 10^18 / 10^10
                        require totalSupply
                        stor7 += 10 * msg.value / 100 << 64 / totalSupply
                        require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                        stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                else:
                    if balanceOf[address(arg1)] < stakingRequirement:
                        require 10 * msg.value / 100 >= (10 * msg.value / 100) - (33 * 10 * msg.value / 100 / 100)
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (10 * msg.value / 100 << 64)
                        else:
                            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 100000000000 * 10^18 / 10^10
                            require totalSupply
                            stor7 += 10 * msg.value / 100 << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * 10 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 10 * msg.value / 100 << 64 / totalSupply)
                    else:
                        require stor4[address(arg1)] + (33 * 10 * msg.value / 100 / 100) >= stor4[address(arg1)]
                        stor4[address(arg1)] += 33 * 10 * msg.value / 100 / 100
                        if totalSupply <= 0:
                            totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - ((10 * msg.value / 100) - (33 * 10 * msg.value / 100 / 100) << 64)
                        else:
                            require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                            totalSupply = t - 100000000000 * 10^18 / 10^10
                            require totalSupply
                            stor7 += (10 * msg.value / 100) - (33 * 10 * msg.value / 100 / 100) << 64 / totalSupply
                            require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                            stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor7) - (totalSupply * stor7) - (t - 100000000000 * 10^18 / 10^10 * (10 * msg.value / 100) - (33 * 10 * msg.value / 100 / 100) << 64 / totalSupply) + (totalSupply * (10 * msg.value / 100) - (33 * 10 * msg.value / 100 / 100) << 64 / totalSupply)
    if not totalSupply:
        emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, 11 * 10^10, msg.sender, arg1);
    else:
        require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
        if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender, arg1);
        else:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            require 10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 10
            require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (10 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender, arg1);
    return 0
}



}
