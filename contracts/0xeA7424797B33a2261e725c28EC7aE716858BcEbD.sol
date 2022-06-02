contract main {




// =====================  Runtime code  =====================


#
#  - buy(address arg1)
#
const decimals = 18

const totalEthereumBalance = eth.balance(this.address)


array of uint256 name;
array of uint256 symbol;
uint256 stakingRequirement;
mapping of uint256 balanceOf;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of address parent;
uint256 totalSupply;
uint256 stor8;
address owner;

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

function owner() {
    return owner
}

function myTokens() {
    return balanceOf[address(msg.sender)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function getParent(address arg1) {
    return parent[address(arg1)]
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
    return 0
}

function dividendsOf(address arg1) {
    return (Mask(192, 64, (stor8 * balanceOf[address(arg1)]) - stor5[address(arg1)]) >> 64)
}

function myDividends(bool arg1) {
    if arg1:
        return ((Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)])
    return (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64)
}

function withdraw() {
    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
    stor5[address(msg.sender)] += Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)])
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]), msg.sender);
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
            if 3 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 3:
                if 3 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) - (3 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100))
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
            if 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14:
                if ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    return (((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100))
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
            if 3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 3:
                if 3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
                    return (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100))
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
            if 14 * arg1 / arg1 == 14:
                if 14 * arg1 / 100 <= arg1:
                    s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 14 * arg1 / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
                    t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 14 * arg1 / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
                    while s < t:
                        require s
                        s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * arg1) + (-20000000000000000000000000000 * 10^18 * 14 * arg1 / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                        t = s
                        continue 
                    if 100000000000 * 10^18 <= t:
                        return ((t - 100000000000 * 10^18 / 10^10) - totalSupply)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > 0
    require arg2 <= balanceOf[address(msg.sender)]
    if (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0:
        require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
        stor5[address(msg.sender)] += Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)])
        stor4[address(msg.sender)] = 0
        call msg.sender with:
           value (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]), msg.sender);
    if not arg2:
        require 0 <= arg2
        require balanceOf[stor9] >= balanceOf[stor9]
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += arg2
        stor5[address(msg.sender)] += -1 * stor8 * arg2
        stor5[address(arg1)] += stor8 * arg2
        emit Transfer(arg2, msg.sender, arg1);
    else:
        require arg2
        require arg2 / arg2 == 1
        require arg2 / 100 <= arg2
        require balanceOf[stor9] + (arg2 / 100) >= balanceOf[stor9]
        balanceOf[stor9] += arg2 / 100
        require arg2 <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] + arg2 - (arg2 / 100) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] + arg2 - (arg2 / 100)
        stor5[address(msg.sender)] += -1 * stor8 * arg2
        stor5[address(arg1)] = stor5[address(arg1)] + (arg2 * stor8) - (arg2 / 100 * stor8)
        emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
    return 1
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] > 0
    require arg1 <= balanceOf[address(msg.sender)]
    if msg.sender == owner:
        require 10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1)
        if not (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18:
            require 0 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            stor5[address(msg.sender)] = stor5[address(msg.sender)] - (stor8 * arg1) - ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 << 64)
            if totalSupply > 0:
                require totalSupply
                require stor8 + (0 / totalSupply) >= stor8
                stor8 += 0 / totalSupply
            if not totalSupply:
                emit onTokenSell(arg1, (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, 11 * 10^10, msg.sender);
            else:
                require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(arg1, (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                else:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
                    require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(arg1, (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
        else:
            require (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
            require 3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 == 3
            require 3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 <= (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            stor5[address(msg.sender)] = stor5[address(msg.sender)] - (stor8 * arg1) - (((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor8 + (3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor8
                stor8 += 3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
            if not totalSupply:
                emit onTokenSell(arg1, ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, 11 * 10^10, msg.sender);
            else:
                require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(arg1, ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                else:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
                    require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(arg1, ((25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * arg1) + (10^10 * totalSupply + 10^18 / 10^18 * arg1) - (10^10 * (arg1 + 10^18)^2 + -arg1 - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
    else:
        require balanceOf[stor9] + (arg1 / 100) >= balanceOf[stor9]
        balanceOf[stor9] += arg1 / 100
        require arg1 / 100 <= arg1
        require 10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18)
        if not (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18:
            require 0 <= (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18
            require arg1 - (arg1 / 100) <= totalSupply
            totalSupply = totalSupply - arg1 + (arg1 / 100)
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            stor5[address(msg.sender)] = stor5[address(msg.sender)] - (arg1 * stor8) + (arg1 / 100 * stor8) - ((25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 << 64)
            if totalSupply > 0:
                require totalSupply
                require stor8 + (0 / totalSupply) >= stor8
                stor8 += 0 / totalSupply
            if not totalSupply:
                emit onTokenSell(arg1 - (arg1 / 100), (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, 11 * 10^10, msg.sender);
            else:
                require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(arg1 - (arg1 / 100), (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                else:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
                    require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(arg1 - (arg1 / 100), (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
        else:
            require (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18
            require 3 * (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 / (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 == 3
            require 3 * (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 / 100 <= (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18
            require arg1 - (arg1 / 100) <= totalSupply
            totalSupply = totalSupply - arg1 + (arg1 / 100)
            require arg1 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg1
            stor5[address(msg.sender)] = stor5[address(msg.sender)] - (arg1 * stor8) + (arg1 / 100 * stor8) - (((25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
            if totalSupply > 0:
                require totalSupply
                require stor8 + (3 * (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor8
                stor8 += 3 * (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
            if not totalSupply:
                emit onTokenSell(arg1 - (arg1 / 100), ((25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, 11 * 10^10, msg.sender);
            else:
                require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(arg1 - (arg1 / 100), ((25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                else:
                    require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
                    require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                    emit onTokenSell(arg1 - (arg1 / 100), ((25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * arg1) - (25 * 10^6 * 3600 * arg1 / 100) + (10^10 * arg1 * totalSupply + 10^18 / 10^18) - (10^10 * arg1 / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (arg1 + -(arg1 / 100) + 10^18)^2 + -arg1 + (arg1 / 100) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
}

function _fallback() payable {
    if not msg.value:
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
            if msg.value:
                require msg.value
                require msg.value / msg.value == 1
                stor4[stor9] += msg.value / 100
            require stor4[stor9] >= stor4[stor9]
            if totalSupply <= 0:
                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8)
            else:
                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                totalSupply = t - 100000000000 * 10^18 / 10^10
                require totalSupply
                stor8 += 0 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
        else:
            require msg.value
            require 13 * msg.value / msg.value == 13
            require 0 <= 13 * msg.value / 100
            require 13 * msg.value / 100 <= msg.value
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 13 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 13 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 13 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000 * 10^18 <= t
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require t - 100000000000 * 10^18 / 10^10 > totalSupply
            if msg.value:
                require msg.value
                require msg.value / msg.value == 1
                stor4[stor9] += msg.value / 100
            require stor4[stor9] >= stor4[stor9]
            if totalSupply <= 0:
                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (13 * msg.value / 100 << 64)
            else:
                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                totalSupply = t - 100000000000 * 10^18 / 10^10
                require totalSupply
                stor8 += 13 * msg.value / 100 << 64 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * 13 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 13 * msg.value / 100 << 64 / totalSupply)
    else:
        require msg.value
        require 14 * msg.value / msg.value == 14
        if not 14 * msg.value / 100:
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
                if msg.value:
                    require msg.value
                    require msg.value / msg.value == 1
                    stor4[stor9] += msg.value / 100
                require stor4[stor9] >= stor4[stor9]
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor8 += 0 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
            else:
                require msg.value
                require 13 * msg.value / msg.value == 13
                require 0 <= 13 * msg.value / 100
                require 13 * msg.value / 100 <= msg.value
                s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 13 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
                t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 13 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
                while s < t:
                    require s
                    s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 13 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000 * 10^18 <= t
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
                require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require t - 100000000000 * 10^18 / 10^10 > totalSupply
                if msg.value:
                    require msg.value
                    require msg.value / msg.value == 1
                    stor4[stor9] += msg.value / 100
                require stor4[stor9] >= stor4[stor9]
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (13 * msg.value / 100 << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor8 += 13 * msg.value / 100 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * 13 * msg.value / 100 << 64 / totalSupply) + (totalSupply * 13 * msg.value / 100 << 64 / totalSupply)
        else:
            require 14 * msg.value / 100
            require 25 * 14 * msg.value / 100 / 14 * msg.value / 100 == 25
            if not msg.value:
                require 25 * 14 * msg.value / 100 / 100 <= 0
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
                if msg.value:
                    require msg.value
                    require msg.value / msg.value == 1
                    stor4[stor9] += msg.value / 100
                require stor4[stor9] + (25 * 14 * msg.value / 100 / 100) >= stor4[stor9]
                stor4[stor9] += 25 * 14 * msg.value / 100 / 100
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) + (25 * 14 * msg.value / 100 / 100 << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor8 += -25 * 14 * msg.value / 100 / 100 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * -25 * 14 * msg.value / 100 / 100 << 64 / totalSupply) + (totalSupply * -25 * 14 * msg.value / 100 / 100 << 64 / totalSupply)
            else:
                require msg.value
                require 13 * msg.value / msg.value == 13
                require 25 * 14 * msg.value / 100 / 100 <= 13 * msg.value / 100
                require 13 * msg.value / 100 <= msg.value
                s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 13 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
                t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 13 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
                while s < t:
                    require s
                    s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * msg.value) + (-20000000000000000000000000000 * 10^18 * 13 * msg.value / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000 * 10^18 <= t
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
                require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require t - 100000000000 * 10^18 / 10^10 > totalSupply
                if msg.value:
                    require msg.value
                    require msg.value / msg.value == 1
                    stor4[stor9] += msg.value / 100
                require stor4[stor9] + (25 * 14 * msg.value / 100 / 100) >= stor4[stor9]
                stor4[stor9] += 25 * 14 * msg.value / 100 / 100
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - ((13 * msg.value / 100) - (25 * 14 * msg.value / 100 / 100) << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor8 += (13 * msg.value / 100) - (25 * 14 * msg.value / 100 / 100) << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * (13 * msg.value / 100) - (25 * 14 * msg.value / 100 / 100) << 64 / totalSupply) + (totalSupply * (13 * msg.value / 100) - (25 * 14 * msg.value / 100 / 100) << 64 / totalSupply)
    if not totalSupply:
        emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, 11 * 10^10, msg.sender, 0);
    else:
        require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
        if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender, 0);
        else:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
            require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase(msg.value, (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender, 0);
}

function exit() {
    if balanceOf[address(msg.sender)] > 0:
        require balanceOf[address(msg.sender)] > 0
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        if msg.sender == owner:
            require 10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)])
            if not (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18:
                require 0 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
                require balanceOf[address(msg.sender)] <= totalSupply
                totalSupply -= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor5[address(msg.sender)] = stor5[address(msg.sender)] - (stor8 * balanceOf[address(msg.sender)]) - ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor8 + (0 / totalSupply) >= stor8
                    stor8 += 0 / totalSupply
                if not totalSupply:
                    emit onTokenSell(balanceOf[address(msg.sender)], (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, block.timestamp, 11 * 10^10, msg.sender);
                else:
                    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                    if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                        require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        emit onTokenSell(balanceOf[address(msg.sender)], (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                    else:
                        require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
                        require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        emit onTokenSell(balanceOf[address(msg.sender)], (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
            else:
                require (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
                require 3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 == 3
                require 3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18
                require balanceOf[address(msg.sender)] <= totalSupply
                totalSupply -= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor5[address(msg.sender)] = stor5[address(msg.sender)] - (stor8 * balanceOf[address(msg.sender)]) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor8 + (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor8
                    stor8 += 3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
                if not totalSupply:
                    emit onTokenSell(balanceOf[address(msg.sender)], ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, 11 * 10^10, msg.sender);
                else:
                    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                    if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                        require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        emit onTokenSell(balanceOf[address(msg.sender)], ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                    else:
                        require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
                        require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        emit onTokenSell(balanceOf[address(msg.sender)], ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) + (10^10 * totalSupply + 10^18 / 10^18 * balanceOf[address(msg.sender)]) - (10^10 * (balanceOf[address(msg.sender)] + 10^18)^2 + -balanceOf[address(msg.sender)] - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
        else:
            require balanceOf[stor9] + (balanceOf[address(msg.sender)] / 100) >= balanceOf[stor9]
            balanceOf[stor9] += balanceOf[address(msg.sender)] / 100
            require balanceOf[address(msg.sender)] / 100 <= balanceOf[address(msg.sender)]
            require 10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18)
            if not (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18:
                require 0 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18
                require balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100) <= totalSupply
                totalSupply = totalSupply - balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100)
                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor5[address(msg.sender)] = stor5[address(msg.sender)] - (balanceOf[address(msg.sender)] * stor8) + (balanceOf[address(msg.sender)] / 100 * stor8) - ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor8 + (0 / totalSupply) >= stor8
                    stor8 += 0 / totalSupply
                if not totalSupply:
                    emit onTokenSell(balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100), (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, 11 * 10^10, msg.sender);
                else:
                    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                    if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                        require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        emit onTokenSell(balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100), (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                    else:
                        require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
                        require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        emit onTokenSell(balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100), (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
            else:
                require (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18
                require 3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 / (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 == 3
                require 3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 / 100 <= (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18
                require balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100) <= totalSupply
                totalSupply = totalSupply - balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100)
                require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = 0
                stor5[address(msg.sender)] = stor5[address(msg.sender)] - (balanceOf[address(msg.sender)] * stor8) + (balanceOf[address(msg.sender)] / 100 * stor8) - (((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 / 100) << 64)
                if totalSupply > 0:
                    require totalSupply
                    require stor8 + (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply) >= stor8
                    stor8 += 3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 / 100 << 64 / totalSupply
                if not totalSupply:
                    emit onTokenSell(balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100), ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, 11 * 10^10, msg.sender);
                else:
                    require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
                    if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
                        require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        emit onTokenSell(balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100), ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender);
                    else:
                        require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
                        require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
                        emit onTokenSell(balanceOf[address(msg.sender)] - (balanceOf[address(msg.sender)] / 100), ((25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18) - (3 * (25 * 10^6 * 3600 * balanceOf[address(msg.sender)]) - (25 * 10^6 * 3600 * balanceOf[address(msg.sender)] / 100) + (10^10 * balanceOf[address(msg.sender)] * totalSupply + 10^18 / 10^18) - (10^10 * balanceOf[address(msg.sender)] / 100 * totalSupply + 10^18 / 10^18) - (10^10 * (balanceOf[address(msg.sender)] + -(balanceOf[address(msg.sender)] / 100) + 10^18)^2 + -balanceOf[address(msg.sender)] + (balanceOf[address(msg.sender)] / 100) - 10^18 / 10^18 / 2) / 10^18 / 100), block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender);
    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
    stor5[address(msg.sender)] += Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)])
    stor4[address(msg.sender)] = 0
    call msg.sender with:
       value (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit onWithdraw(((Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]), msg.sender);
}

function reinvest() {
    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] > 0
    stor5[address(msg.sender)] += Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)])
    stor4[address(msg.sender)] = 0
    if not (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
        if not (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
            require 0 <= (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000 * 10^18 <= t
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require t - 100000000000 * 10^18 / 10^10 > totalSupply
            if (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
                require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 1
                stor4[stor9] += (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / 100
            require stor4[stor9] >= stor4[stor9]
            if totalSupply <= 0:
                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8)
            else:
                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                totalSupply = t - 100000000000 * 10^18 / 10^10
                require totalSupply
                stor8 += 0 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
        else:
            require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
            require (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 13
            require 0 <= (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100
            require (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
            s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
            t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
            while s < t:
                require s
                s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                t = s
                continue 
            require 100000000000 * 10^18 <= t
            require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
            require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
            require t - 100000000000 * 10^18 / 10^10 > totalSupply
            if (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
                require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 1
                stor4[stor9] += (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / 100
            require stor4[stor9] >= stor4[stor9]
            if totalSupply <= 0:
                totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - ((13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 << 64)
            else:
                require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                totalSupply = t - 100000000000 * 10^18 / 10^10
                require totalSupply
                stor8 += (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply
                require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply)
    else:
        require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
        require (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 14
        if not (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100:
            if not (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
                require 0 <= (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
                t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
                while s < t:
                    require s
                    s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000 * 10^18 <= t
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
                require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require t - 100000000000 * 10^18 / 10^10 > totalSupply
                if (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
                    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 1
                    stor4[stor9] += (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / 100
                require stor4[stor9] >= stor4[stor9]
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor8 += 0 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * 0 / totalSupply) + (totalSupply * 0 / totalSupply)
            else:
                require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                require (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 13
                require 0 <= (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100
                require (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
                t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
                while s < t:
                    require s
                    s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000 * 10^18 <= t
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
                require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require t - 100000000000 * 10^18 / 10^10 > totalSupply
                if (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
                    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 1
                    stor4[stor9] += (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / 100
                require stor4[stor9] >= stor4[stor9]
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - ((13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor8 += (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply) + (totalSupply * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 << 64 / totalSupply)
        else:
            require (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100
            require 25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 == 25
            if not (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
                require 25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100 <= 0
                require 0 <= (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
                t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
                while s < t:
                    require s
                    s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000 * 10^18 <= t
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
                require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require t - 100000000000 * 10^18 / 10^10 > totalSupply
                if (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
                    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 1
                    stor4[stor9] += (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / 100
                require stor4[stor9] + (25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100) >= stor4[stor9]
                stor4[stor9] += 25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) + (25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100 << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor8 += -25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100 << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * -25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100 << 64 / totalSupply) + (totalSupply * -25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100 << 64 / totalSupply)
            else:
                require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                require (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 13
                require 25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100 <= (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100
                require (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100 <= (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                s = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000001 / 2
                t = (0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000
                while s < t:
                    require s
                    s = ((0x380d4bd8a8678c1bb542c80deb4800000000000 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (0x380d4bd8a8678c1bb542c80deb4800000000000 * stor4[address(msg.sender)]) + (-20000000000000000000000000000 * 10^18 * (13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) + (100 * 10^18 * totalSupply^2) + (2000000000000000000000 * 10^18 * totalSupply) + 0x197d4df19d605767337e9f14d3eec8920e400000000000000 / s) + s / 2
                    t = s
                    continue 
                require 100000000000 * 10^18 <= t
                require (t - 100000000000 * 10^18 / 10^10) - totalSupply > 0
                require t - 100000000000 * 10^18 / 10^10 >= (t - 100000000000 * 10^18 / 10^10) - totalSupply
                require t - 100000000000 * 10^18 / 10^10 > totalSupply
                if (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]:
                    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)]
                    require (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] == 1
                    stor4[stor9] += (Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)] / 100
                require stor4[stor9] + (25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100) >= stor4[stor9]
                stor4[stor9] += 25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100
                if totalSupply <= 0:
                    totalSupply = (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (((13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) - (25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100) << 64)
                else:
                    require t - 100000000000 * 10^18 / 10^10 >= totalSupply
                    totalSupply = t - 100000000000 * 10^18 / 10^10
                    require totalSupply
                    stor8 += ((13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) - (25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100) << 64 / totalSupply
                    require balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10) - totalSupply
                    stor5[address(msg.sender)] = stor5[address(msg.sender)] + (t - 100000000000 * 10^18 / 10^10 * stor8) - (totalSupply * stor8) - (t - 100000000000 * 10^18 / 10^10 * ((13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) - (25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100) << 64 / totalSupply) + (totalSupply * ((13 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (13 * stor4[address(msg.sender)]) / 100) - (25 * (14 * Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + (14 * stor4[address(msg.sender)]) / 100 / 100) << 64 / totalSupply)
    if not totalSupply:
        emit onTokenPurchase((Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, 11 * 10^10, msg.sender, 0);
    else:
        require 1999999999999999999 * 10^10 <= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + (25000000 * 10^18 * 3600)
        if not (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase((Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18, msg.sender, 0);
        else:
            require (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            require 14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 == 14
            require ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100) >= (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18
            emit onTokenPurchase((Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, block.timestamp, ((10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18) + (14 * (10000000000 * 10^18 * totalSupply + 10^18 / 10^18) + 7000000000000000001 * 10^10 / 10^18 / 100), msg.sender, 0);
    emit onReinvestment((Mask(192, 64, (stor8 * balanceOf[address(msg.sender)]) - stor5[address(msg.sender)]) >> 64) + stor4[address(msg.sender)], (t - 100000000000 * 10^18 / 10^10) - totalSupply, msg.sender);
}



}
