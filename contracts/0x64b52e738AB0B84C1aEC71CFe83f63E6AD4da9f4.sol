contract main {




// =====================  Runtime code  =====================


#
#  - buy(address arg1)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 sub_0680fa03;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
address marketingAddress;
uint256 stor16;
uint256 stor17;
mapping of uint256 stor19;
mapping of uint256 stor20;
mapping of address stor21;
uint256 sub_b17decdf;
uint256 sub_4b0d2bd1;

function sub_0680fa03(?) {
    return sub_0680fa03[address(msg.sender)]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1fc7e487(?) {
    return sub_b17decdf
}

function decimals() {
    return decimals
}

function sub_4b0d2bd1(?) {
    return sub_4b0d2bd1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return sub_0680fa03[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function marketingAddress() {
    return marketingAddress
}

function sub_b17decdf(?) {
    return sub_b17decdf
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    marketingAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= sub_0680fa03[address(msg.sender)]
    sub_0680fa03[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function dividendsOf(address arg1) {
    require calldata.size - 4 >= 32
    if not stor16:
        require stor17 > 0
        if stor17:
            return ((0 / stor17) - stor19[address(arg1)])
    else:
        if stor16:
            require stor16 * sub_0680fa03[address(arg1)] / stor16 == sub_0680fa03[address(arg1)]
            require stor17 > 0
            if stor17:
                return ((stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)])
    revert
}

function burnFrom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= sub_0680fa03[address(arg1)]
    sub_0680fa03[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg2
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg2), arg1, msg.sender);
}

function sub_dad1de6a(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        if not stor16:
            require stor17 > 0
            if stor17:
                return ((0 / stor17) - stor19[address(msg.sender)])
        else:
            if stor16:
                require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                if stor17:
                    return ((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)])
        revert
    if not stor16:
        require stor17 > 0
        require stor17
        require stor20[address(msg.sender)] >= 0
        return ((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)])
    require stor16
    require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
    require stor17 > 0
    require stor17
    require stor20[address(msg.sender)] >= 0
    return ((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)])
}

function withdraw() {
    if not stor16:
        require stor17 > 0
        require stor17
        require stor20[address(msg.sender)] >= 0
        require (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0
    else:
        require stor16
        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
        require stor17 > 0
        require stor17
        require stor20[address(msg.sender)] >= 0
        require (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0
    if not stor16:
        require stor17 > 0
        require stor17
        stor19[address(msg.sender)] = 0 / stor17
        require stor20[address(msg.sender)] >= 0
        stor20[address(msg.sender)] = 0
        call msg.sender with:
           value (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]), msg.sender);
    else:
        require stor16
        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
        require stor17 > 0
        require stor17
        stor19[address(msg.sender)] = stor16 * sub_0680fa03[address(msg.sender)] / stor17
        require stor20[address(msg.sender)] >= 0
        stor20[address(msg.sender)] = 0
        call msg.sender with:
           value (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]), msg.sender);
}

function sub_186737a5(?) {
    require calldata.size - 4 >= 32
    require sub_b17decdf
    require sub_b17decdf
    require 2 * sub_b17decdf / sub_b17decdf == 2
    require 10^12 <= 2 * sub_b17decdf
    if not arg1:
        require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
        s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
        t = ((2 * sub_b17decdf) - 10^12)^2
        while s < t:
            require s
            s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
            t = s
            continue 
    else:
        require arg1
        require 2 * arg1 / arg1 == 2
        require 4 * 10^12 * 2 * arg1 / 4 * 10^12 == 2 * arg1
        require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * arg1) >= ((2 * sub_b17decdf) - 10^12)^2
        s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * arg1) + 1 / 2
        t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * arg1)
        while s < t:
            require s
            s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * arg1) / s) + s / 2
            t = s
            continue 
    require (2 * sub_b17decdf) - 10^12 <= t
    if not t + -(2 * sub_b17decdf) + 10^12:
        require stor17 > 0
        require stor17
        require sub_b17decdf + (0 / stor17) >= sub_b17decdf
        return 0, sub_b17decdf + (0 / stor17)
    require t + -(2 * sub_b17decdf) + 10^12
    require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
    require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
    require stor17 > 0
    require stor17
    require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
    return (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, 
           sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17)
}

function sub_ba20e3c5(?) {
    require calldata.size - 4 >= 32
    if not sub_b17decdf:
        require 10^18 <= arg1
        require (10^12 * arg1) - 1000000000000 * 10^18 / 10^12 == arg1 - 10^18
        require stor17 > 0
        require stor17
        require (10^12 * arg1) - 1000000000000 * 10^18 / stor17 <= 0
        if not Mask(255, 1, -(10^12 * arg1) - 1000000000000 * 10^18 / stor17):
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / 10^12 == arg1
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / stor17 <= sub_b17decdf
            return 0 / stor17, sub_b17decdf - (10^12 * arg1 / stor17)
        require -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2
        require -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 == arg1
        require stor17 > 0
        require stor17
        require 10^12 * arg1 / 10^12 == arg1
        require stor17 > 0
        require stor17
        require 10^12 * arg1 / stor17 <= sub_b17decdf
        return -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17, sub_b17decdf - (10^12 * arg1 / stor17)
    require sub_b17decdf
    require 2 * sub_b17decdf / sub_b17decdf == 2
    require 10^18 <= arg1
    require (10^12 * arg1) - 1000000000000 * 10^18 / 10^12 == arg1 - 10^18
    require stor17 > 0
    require stor17
    require (10^12 * arg1) - 1000000000000 * 10^18 / stor17 <= 2 * sub_b17decdf
    if not Mask(255, 1, (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17)):
        require stor17 > 0
        require stor17
        require 10^12 * arg1 / 10^12 == arg1
        require stor17 > 0
        require stor17
        require 10^12 * arg1 / stor17 <= sub_b17decdf
        return 0 / stor17, sub_b17decdf - (10^12 * arg1 / stor17)
    require (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2
    require (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 == arg1
    require stor17 > 0
    require stor17
    require 10^12 * arg1 / 10^12 == arg1
    require stor17 > 0
    require stor17
    require 10^12 * arg1 / stor17 <= sub_b17decdf
    return (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17, 
           sub_b17decdf - (10^12 * arg1 / stor17)
}

function sell(uint256 arg1) {
    require calldata.size - 4 >= 32
    require sub_0680fa03[address(msg.sender)] > 0
    require arg1 <= sub_0680fa03[address(msg.sender)]
    if not sub_b17decdf:
        require 10^18 <= arg1
        require (10^12 * arg1) - 1000000000000 * 10^18 / 10^12 == arg1 - 10^18
        require stor17 > 0
        require stor17
        require (10^12 * arg1) - 1000000000000 * 10^18 / stor17 <= 0
        if not Mask(255, 1, -(10^12 * arg1) - 1000000000000 * 10^18 / stor17):
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / 10^12 == arg1
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg1 / stor17
            require msg.sender
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if not 0 / stor17:
                require 0 <= 0 / stor17
                if not stor16:
                    require stor17 > 0
                    require stor17
                    require 2 * 0 / stor17 >= 0 / stor17
                    stor19[address(msg.sender)] -= 2 * 0 / stor17
                else:
                    require stor16
                    require stor16 * arg1 / stor16 == arg1
                    require stor17 > 0
                    require stor17
                    require (0 / stor17) + (stor16 * arg1 / stor17) >= 0 / stor17
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (0 / stor17) - (stor16 * arg1 / stor17)
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require stor10
                require 0 / stor17 * stor9 / stor10 <= 0 / stor17
                if not stor16:
                    require stor17 > 0
                    require stor17
                    require 2 * 0 / stor17 >= 0 / stor17
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (2 * 0 / stor17) + (0 / stor17 * stor9 / stor10)
                else:
                    require stor16
                    require stor16 * arg1 / stor16 == arg1
                    require stor17 > 0
                    require stor17
                    require stor16 * arg1 / stor17 >= 0
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (0 / stor17) + (0 / stor17 * stor9 / stor10) - (stor16 * arg1 / stor17)
                if not 0 / stor17 * stor9 / stor10:
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require 0 / stor17 * stor9 / stor10
                    require 0 / stor17 * stor9 / stor10 * stor17 / 0 / stor17 * stor9 / stor10 == stor17
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / stor17 * stor9 / stor10 * stor17 / totalSupply) >= stor16
                    stor16 += 0 / stor17 * stor9 / stor10 * stor17 / totalSupply
            emit onTokenSell(arg1, 0 / stor17, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender);
        else:
            require -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2
            require -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 == arg1
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / 10^12 == arg1
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg1 / stor17
            require msg.sender
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if not -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17:
                require 0 <= -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17
                if not stor16:
                    require stor17 > 0
                    require stor17
                    require (-(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17) + (0 / stor17) >= -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (-(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17) - (0 / stor17)
                else:
                    require stor16
                    require stor16 * arg1 / stor16 == arg1
                    require stor17 > 0
                    require stor17
                    require (-(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17) + (stor16 * arg1 / stor17) >= -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (-(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17) - (stor16 * arg1 / stor17)
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require stor10
                require -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17 * stor9 / stor10 <= -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17
                if not stor16:
                    require stor17 > 0
                    require stor17
                    require 0 / stor17 >= 0
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (-(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17) + (-(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17 * stor9 / stor10) - (0 / stor17)
                else:
                    require stor16
                    require stor16 * arg1 / stor16 == arg1
                    require stor17 > 0
                    require stor17
                    require stor16 * arg1 / stor17 >= 0
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (-(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17) + (-(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17 * stor9 / stor10) - (stor16 * arg1 / stor17)
                if not -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17 * stor9 / stor10:
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17 * stor9 / stor10
                    require -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17 * stor9 / stor10 * stor17 / -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17 * stor9 / stor10 == stor17
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (-(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17 * stor9 / stor10 * stor17 / totalSupply) >= stor16
                    stor16 += -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17 * stor9 / stor10 * stor17 / totalSupply
            emit onTokenSell(arg1, -(10^12 * arg1) - 1000000000000 * 10^18 / stor17 / 2 * arg1 / stor17, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender);
    else:
        require sub_b17decdf
        require 2 * sub_b17decdf / sub_b17decdf == 2
        require 10^18 <= arg1
        require (10^12 * arg1) - 1000000000000 * 10^18 / 10^12 == arg1 - 10^18
        require stor17 > 0
        require stor17
        require (10^12 * arg1) - 1000000000000 * 10^18 / stor17 <= 2 * sub_b17decdf
        if not Mask(255, 1, (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17)):
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / 10^12 == arg1
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg1 / stor17
            require msg.sender
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if not 0 / stor17:
                require 0 <= 0 / stor17
                if not stor16:
                    require stor17 > 0
                    require stor17
                    require 2 * 0 / stor17 >= 0 / stor17
                    stor19[address(msg.sender)] -= 2 * 0 / stor17
                else:
                    require stor16
                    require stor16 * arg1 / stor16 == arg1
                    require stor17 > 0
                    require stor17
                    require (0 / stor17) + (stor16 * arg1 / stor17) >= 0 / stor17
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (0 / stor17) - (stor16 * arg1 / stor17)
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require stor10
                require 0 / stor17 * stor9 / stor10 <= 0 / stor17
                if not stor16:
                    require stor17 > 0
                    require stor17
                    require 2 * 0 / stor17 >= 0 / stor17
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (2 * 0 / stor17) + (0 / stor17 * stor9 / stor10)
                else:
                    require stor16
                    require stor16 * arg1 / stor16 == arg1
                    require stor17 > 0
                    require stor17
                    require stor16 * arg1 / stor17 >= 0
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - (0 / stor17) + (0 / stor17 * stor9 / stor10) - (stor16 * arg1 / stor17)
                if not 0 / stor17 * stor9 / stor10:
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require 0 / stor17 * stor9 / stor10
                    require 0 / stor17 * stor9 / stor10 * stor17 / 0 / stor17 * stor9 / stor10 == stor17
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / stor17 * stor9 / stor10 * stor17 / totalSupply) >= stor16
                    stor16 += 0 / stor17 * stor9 / stor10 * stor17 / totalSupply
            emit onTokenSell(arg1, 0 / stor17, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender);
        else:
            require (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2
            require (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 == arg1
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / 10^12 == arg1
            require stor17 > 0
            require stor17
            require 10^12 * arg1 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg1 / stor17
            require msg.sender
            require arg1 <= totalSupply
            totalSupply -= arg1
            require arg1 <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] -= arg1
            emit Transfer(arg1, msg.sender, 0);
            if not (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17:
                require 0 <= (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17
                if not stor16:
                    require stor17 > 0
                    require stor17
                    require ((2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17) + (0 / stor17) >= (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - ((2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17) - (0 / stor17)
                else:
                    require stor16
                    require stor16 * arg1 / stor16 == arg1
                    require stor17 > 0
                    require stor17
                    require ((2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17) + (stor16 * arg1 / stor17) >= (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - ((2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17) - (stor16 * arg1 / stor17)
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require stor10
                require (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17 * stor9 / stor10 <= (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17
                if not stor16:
                    require stor17 > 0
                    require stor17
                    require 0 / stor17 >= 0
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - ((2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17) + ((2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17 * stor9 / stor10) - (0 / stor17)
                else:
                    require stor16
                    require stor16 * arg1 / stor16 == arg1
                    require stor17 > 0
                    require stor17
                    require stor16 * arg1 / stor17 >= 0
                    stor19[address(msg.sender)] = stor19[address(msg.sender)] - ((2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17) + ((2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17 * stor9 / stor10) - (stor16 * arg1 / stor17)
                if not (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17 * stor9 / stor10:
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17 * stor9 / stor10
                    require (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17 * stor9 / stor10 * stor17 / (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17 * stor9 / stor10 == stor17
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + ((2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17 * stor9 / stor10 * stor17 / totalSupply) >= stor16
                    stor16 += (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17 * stor9 / stor10 * stor17 / totalSupply
            emit onTokenSell(arg1, (2 * sub_b17decdf) - ((10^12 * arg1) - 1000000000000 * 10^18 / stor17) / 2 * arg1 / stor17, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= sub_0680fa03[address(msg.sender)]
    require arg1
    if not stor16:
        require stor17 > 0
        require stor17
        require stor20[address(msg.sender)] >= 0
        if (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0:
            if not stor16:
                require stor17 > 0
                require stor17
                require stor20[address(msg.sender)] >= 0
                require (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0
            else:
                require stor16
                require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                require stor20[address(msg.sender)] >= 0
                require (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] = 0 / stor17
                require stor20[address(msg.sender)] >= 0
                stor20[address(msg.sender)] = 0
                call msg.sender with:
                   value (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit onWithdraw(((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]), msg.sender);
            else:
                require stor16
                require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] = stor16 * sub_0680fa03[address(msg.sender)] / stor17
                require stor20[address(msg.sender)] >= 0
                stor20[address(msg.sender)] = 0
                call msg.sender with:
                   value (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit onWithdraw(((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]), msg.sender);
    else:
        require stor16
        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
        require stor17 > 0
        require stor17
        require stor20[address(msg.sender)] >= 0
        if (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0:
            if not stor16:
                require stor17 > 0
                require stor17
                require stor20[address(msg.sender)] >= 0
                require (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0
            else:
                require stor16
                require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                require stor20[address(msg.sender)] >= 0
                require (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] = 0 / stor17
                require stor20[address(msg.sender)] >= 0
                stor20[address(msg.sender)] = 0
                call msg.sender with:
                   value (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit onWithdraw(((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]), msg.sender);
            else:
                require stor16
                require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] = stor16 * sub_0680fa03[address(msg.sender)] / stor17
                require stor20[address(msg.sender)] >= 0
                stor20[address(msg.sender)] = 0
                call msg.sender with:
                   value (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit onWithdraw(((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]), msg.sender);
    if not arg2:
        require 0 <= arg2
        require sub_b17decdf
        require not sub_b17decdf
        revert
    require stor14
    require arg2 * stor13 / stor14 <= arg2
    if not sub_b17decdf:
        require 10^18 <= arg2 * stor13 / stor14
        require (10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / 10^12 == (arg2 * stor13 / stor14) - 10^18
        require stor17 > 0
        require stor17
        require (10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 <= 0
        if not Mask(255, 1, -(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17):
            require stor17 > 0
            require stor17
            require 10^12 * arg2 * stor13 / stor14 / 10^12 == arg2 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg2 * stor13 / stor14 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg2 * stor13 / stor14 / stor17
            require arg1
            require arg2 - (arg2 * stor13 / stor14) <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] = sub_0680fa03[address(msg.sender)] - arg2 + (arg2 * stor13 / stor14)
            require sub_0680fa03[address(arg1)] + arg2 - (arg2 * stor13 / stor14) >= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] = sub_0680fa03[address(arg1)] + arg2 - (arg2 * stor13 / stor14)
            emit Transfer((arg2 - (arg2 * stor13 / stor14)), msg.sender, arg1);
            require msg.sender
            require arg2 * stor13 / stor14 <= totalSupply
            totalSupply -= arg2 * stor13 / stor14
            require arg2 * stor13 / stor14 <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] -= arg2 * stor13 / stor14
            emit Transfer((arg2 * stor13 / stor14), msg.sender, 0);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] -= 0 / stor17
            else:
                require stor16
                require stor16 * arg2 / stor16 == arg2
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] -= stor16 * arg2 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] += 0 / stor17
            else:
                require stor16
                require (arg2 * stor16) - (arg2 * stor13 / stor14 * stor16) / stor16 == arg2 - (arg2 * stor13 / stor14)
                require stor17 > 0
                require stor17
                stor19[address(arg1)] += (arg2 * stor16) - (arg2 * stor13 / stor14 * stor16) / stor17
            if not 0 / stor17:
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require 0 / stor17
                require 0 / stor17 * stor17 / 0 / stor17 == stor17
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / stor17 * stor17 / totalSupply) >= stor16
                stor16 += 0 / stor17 * stor17 / totalSupply
        else:
            require -(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2
            require -(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg2 * stor13 / stor14 / -(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 == arg2 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg2 * stor13 / stor14 / 10^12 == arg2 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg2 * stor13 / stor14 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg2 * stor13 / stor14 / stor17
            require arg1
            require arg2 - (arg2 * stor13 / stor14) <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] = sub_0680fa03[address(msg.sender)] - arg2 + (arg2 * stor13 / stor14)
            require sub_0680fa03[address(arg1)] + arg2 - (arg2 * stor13 / stor14) >= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] = sub_0680fa03[address(arg1)] + arg2 - (arg2 * stor13 / stor14)
            emit Transfer((arg2 - (arg2 * stor13 / stor14)), msg.sender, arg1);
            require msg.sender
            require arg2 * stor13 / stor14 <= totalSupply
            totalSupply -= arg2 * stor13 / stor14
            require arg2 * stor13 / stor14 <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] -= arg2 * stor13 / stor14
            emit Transfer((arg2 * stor13 / stor14), msg.sender, 0);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] -= 0 / stor17
            else:
                require stor16
                require stor16 * arg2 / stor16 == arg2
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] -= stor16 * arg2 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] += 0 / stor17
            else:
                require stor16
                require (arg2 * stor16) - (arg2 * stor13 / stor14 * stor16) / stor16 == arg2 - (arg2 * stor13 / stor14)
                require stor17 > 0
                require stor17
                stor19[address(arg1)] += (arg2 * stor16) - (arg2 * stor13 / stor14 * stor16) / stor17
            if not -(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg2 * stor13 / stor14 / stor17:
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require -(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg2 * stor13 / stor14 / stor17
                require -(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg2 * stor13 / stor14 / stor17 * stor17 / -(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg2 * stor13 / stor14 / stor17 == stor17
                require totalSupply > 0
                require totalSupply
                require stor16 + (-(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg2 * stor13 / stor14 / stor17 * stor17 / totalSupply) >= stor16
                stor16 += -(10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg2 * stor13 / stor14 / stor17 * stor17 / totalSupply
    else:
        require sub_b17decdf
        require 2 * sub_b17decdf / sub_b17decdf == 2
        require 10^18 <= arg2 * stor13 / stor14
        require (10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / 10^12 == (arg2 * stor13 / stor14) - 10^18
        require stor17 > 0
        require stor17
        require (10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 <= 2 * sub_b17decdf
        if not Mask(255, 1, (2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17)):
            require stor17 > 0
            require stor17
            require 10^12 * arg2 * stor13 / stor14 / 10^12 == arg2 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg2 * stor13 / stor14 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg2 * stor13 / stor14 / stor17
            require arg1
            require arg2 - (arg2 * stor13 / stor14) <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] = sub_0680fa03[address(msg.sender)] - arg2 + (arg2 * stor13 / stor14)
            require sub_0680fa03[address(arg1)] + arg2 - (arg2 * stor13 / stor14) >= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] = sub_0680fa03[address(arg1)] + arg2 - (arg2 * stor13 / stor14)
            emit Transfer((arg2 - (arg2 * stor13 / stor14)), msg.sender, arg1);
            require msg.sender
            require arg2 * stor13 / stor14 <= totalSupply
            totalSupply -= arg2 * stor13 / stor14
            require arg2 * stor13 / stor14 <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] -= arg2 * stor13 / stor14
            emit Transfer((arg2 * stor13 / stor14), msg.sender, 0);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] -= 0 / stor17
            else:
                require stor16
                require stor16 * arg2 / stor16 == arg2
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] -= stor16 * arg2 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] += 0 / stor17
            else:
                require stor16
                require (arg2 * stor16) - (arg2 * stor13 / stor14 * stor16) / stor16 == arg2 - (arg2 * stor13 / stor14)
                require stor17 > 0
                require stor17
                stor19[address(arg1)] += (arg2 * stor16) - (arg2 * stor13 / stor14 * stor16) / stor17
            if not 0 / stor17:
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require 0 / stor17
                require 0 / stor17 * stor17 / 0 / stor17 == stor17
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / stor17 * stor17 / totalSupply) >= stor16
                stor16 += 0 / stor17 * stor17 / totalSupply
        else:
            require (2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2
            require (2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg2 * stor13 / stor14 / (2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 == arg2 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg2 * stor13 / stor14 / 10^12 == arg2 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg2 * stor13 / stor14 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg2 * stor13 / stor14 / stor17
            require arg1
            require arg2 - (arg2 * stor13 / stor14) <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] = sub_0680fa03[address(msg.sender)] - arg2 + (arg2 * stor13 / stor14)
            require sub_0680fa03[address(arg1)] + arg2 - (arg2 * stor13 / stor14) >= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] = sub_0680fa03[address(arg1)] + arg2 - (arg2 * stor13 / stor14)
            emit Transfer((arg2 - (arg2 * stor13 / stor14)), msg.sender, arg1);
            require msg.sender
            require arg2 * stor13 / stor14 <= totalSupply
            totalSupply -= arg2 * stor13 / stor14
            require arg2 * stor13 / stor14 <= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] -= arg2 * stor13 / stor14
            emit Transfer((arg2 * stor13 / stor14), msg.sender, 0);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] -= 0 / stor17
            else:
                require stor16
                require stor16 * arg2 / stor16 == arg2
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] -= stor16 * arg2 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] += 0 / stor17
            else:
                require stor16
                require (arg2 * stor16) - (arg2 * stor13 / stor14 * stor16) / stor16 == arg2 - (arg2 * stor13 / stor14)
                require stor17 > 0
                require stor17
                stor19[address(arg1)] += (arg2 * stor16) - (arg2 * stor13 / stor14 * stor16) / stor17
            if not (2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg2 * stor13 / stor14 / stor17:
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require (2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg2 * stor13 / stor14 / stor17
                require (2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg2 * stor13 / stor14 / stor17 * stor17 / (2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg2 * stor13 / stor14 / stor17 == stor17
                require totalSupply > 0
                require totalSupply
                require stor16 + ((2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg2 * stor13 / stor14 / stor17 * stor17 / totalSupply) >= stor16
                stor16 += (2 * sub_b17decdf) - ((10^12 * arg2 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg2 * stor13 / stor14 / stor17 * stor17 / totalSupply
    emit TransferSuccessful(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not arg3:
        require 0 <= arg3
        require sub_b17decdf
        require not sub_b17decdf
        revert
    require stor14
    require arg3 * stor13 / stor14 <= arg3
    if not sub_b17decdf:
        require 10^18 <= arg3 * stor13 / stor14
        require (10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / 10^12 == (arg3 * stor13 / stor14) - 10^18
        require stor17 > 0
        require stor17
        require (10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 <= 0
        if not Mask(255, 1, -(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17):
            require stor17 > 0
            require stor17
            require 10^12 * arg3 * stor13 / stor14 / 10^12 == arg3 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg3 * stor13 / stor14 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg3 * stor13 / stor14 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] = 0 / stor17
                require stor20[address(arg1)] >= 0
                stor20[address(arg1)] = 0
                if (0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)] > 0:
                    call arg1 with:
                       value (0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onWithdraw(((0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)]), arg1);
            else:
                require stor16
                require stor16 * sub_0680fa03[address(arg1)] / stor16 == sub_0680fa03[address(arg1)]
                require stor17 > 0
                require stor17
                stor19[address(arg1)] = stor16 * sub_0680fa03[address(arg1)] / stor17
                require stor20[address(arg1)] >= 0
                stor20[address(arg1)] = 0
                if (stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)] > 0:
                    call arg1 with:
                       value (stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onWithdraw(((stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)]), arg1);
            require arg2
            require arg3 - (arg3 * stor13 / stor14) <= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] = sub_0680fa03[address(arg1)] - arg3 + (arg3 * stor13 / stor14)
            require sub_0680fa03[address(arg2)] + arg3 - (arg3 * stor13 / stor14) >= sub_0680fa03[address(arg2)]
            sub_0680fa03[address(arg2)] = sub_0680fa03[address(arg2)] + arg3 - (arg3 * stor13 / stor14)
            emit Transfer((arg3 - (arg3 * stor13 / stor14)), arg1, arg2);
            require arg3 - (arg3 * stor13 / stor14) <= allowance[address(arg1)][address(msg.sender)]
            require msg.sender
            require arg1
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * stor13 / stor14)
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * stor13 / stor14)), arg1, msg.sender);
            require arg3 * stor13 / stor14 <= totalSupply
            totalSupply -= arg3 * stor13 / stor14
            require arg3 * stor13 / stor14 <= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] -= arg3 * stor13 / stor14
            emit Transfer((arg3 * stor13 / stor14), arg1, 0);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] -= 0 / stor17
            else:
                require stor16
                require stor16 * arg3 / stor16 == arg3
                require stor17 > 0
                require stor17
                stor19[address(arg1)] -= stor16 * arg3 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg2)] += 0 / stor17
            else:
                require stor16
                require (arg3 * stor16) - (arg3 * stor13 / stor14 * stor16) / stor16 == arg3 - (arg3 * stor13 / stor14)
                require stor17 > 0
                require stor17
                stor19[address(arg2)] += (arg3 * stor16) - (arg3 * stor13 / stor14 * stor16) / stor17
            if not 0 / stor17:
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require 0 / stor17
                require 0 / stor17 * stor17 / 0 / stor17 == stor17
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / stor17 * stor17 / totalSupply) >= stor16
                stor16 += 0 / stor17 * stor17 / totalSupply
        else:
            require -(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2
            require -(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg3 * stor13 / stor14 / -(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 == arg3 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg3 * stor13 / stor14 / 10^12 == arg3 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg3 * stor13 / stor14 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg3 * stor13 / stor14 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] = 0 / stor17
                require stor20[address(arg1)] >= 0
                stor20[address(arg1)] = 0
                if (0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)] > 0:
                    call arg1 with:
                       value (0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onWithdraw(((0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)]), arg1);
            else:
                require stor16
                require stor16 * sub_0680fa03[address(arg1)] / stor16 == sub_0680fa03[address(arg1)]
                require stor17 > 0
                require stor17
                stor19[address(arg1)] = stor16 * sub_0680fa03[address(arg1)] / stor17
                require stor20[address(arg1)] >= 0
                stor20[address(arg1)] = 0
                if (stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)] > 0:
                    call arg1 with:
                       value (stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onWithdraw(((stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)]), arg1);
            require arg2
            require arg3 - (arg3 * stor13 / stor14) <= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] = sub_0680fa03[address(arg1)] - arg3 + (arg3 * stor13 / stor14)
            require sub_0680fa03[address(arg2)] + arg3 - (arg3 * stor13 / stor14) >= sub_0680fa03[address(arg2)]
            sub_0680fa03[address(arg2)] = sub_0680fa03[address(arg2)] + arg3 - (arg3 * stor13 / stor14)
            emit Transfer((arg3 - (arg3 * stor13 / stor14)), arg1, arg2);
            require arg3 - (arg3 * stor13 / stor14) <= allowance[address(arg1)][address(msg.sender)]
            require msg.sender
            require arg1
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * stor13 / stor14)
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * stor13 / stor14)), arg1, msg.sender);
            require arg3 * stor13 / stor14 <= totalSupply
            totalSupply -= arg3 * stor13 / stor14
            require arg3 * stor13 / stor14 <= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] -= arg3 * stor13 / stor14
            emit Transfer((arg3 * stor13 / stor14), arg1, 0);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] -= 0 / stor17
            else:
                require stor16
                require stor16 * arg3 / stor16 == arg3
                require stor17 > 0
                require stor17
                stor19[address(arg1)] -= stor16 * arg3 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg2)] += 0 / stor17
            else:
                require stor16
                require (arg3 * stor16) - (arg3 * stor13 / stor14 * stor16) / stor16 == arg3 - (arg3 * stor13 / stor14)
                require stor17 > 0
                require stor17
                stor19[address(arg2)] += (arg3 * stor16) - (arg3 * stor13 / stor14 * stor16) / stor17
            if not -(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg3 * stor13 / stor14 / stor17:
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require -(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg3 * stor13 / stor14 / stor17
                require -(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg3 * stor13 / stor14 / stor17 * stor17 / -(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg3 * stor13 / stor14 / stor17 == stor17
                require totalSupply > 0
                require totalSupply
                require stor16 + (-(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg3 * stor13 / stor14 / stor17 * stor17 / totalSupply) >= stor16
                stor16 += -(10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 / 2 * arg3 * stor13 / stor14 / stor17 * stor17 / totalSupply
    else:
        require sub_b17decdf
        require 2 * sub_b17decdf / sub_b17decdf == 2
        require 10^18 <= arg3 * stor13 / stor14
        require (10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / 10^12 == (arg3 * stor13 / stor14) - 10^18
        require stor17 > 0
        require stor17
        require (10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17 <= 2 * sub_b17decdf
        if not Mask(255, 1, (2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17)):
            require stor17 > 0
            require stor17
            require 10^12 * arg3 * stor13 / stor14 / 10^12 == arg3 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg3 * stor13 / stor14 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg3 * stor13 / stor14 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] = 0 / stor17
                require stor20[address(arg1)] >= 0
                stor20[address(arg1)] = 0
                if (0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)] > 0:
                    call arg1 with:
                       value (0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onWithdraw(((0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)]), arg1);
            else:
                require stor16
                require stor16 * sub_0680fa03[address(arg1)] / stor16 == sub_0680fa03[address(arg1)]
                require stor17 > 0
                require stor17
                stor19[address(arg1)] = stor16 * sub_0680fa03[address(arg1)] / stor17
                require stor20[address(arg1)] >= 0
                stor20[address(arg1)] = 0
                if (stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)] > 0:
                    call arg1 with:
                       value (stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onWithdraw(((stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)]), arg1);
            require arg2
            require arg3 - (arg3 * stor13 / stor14) <= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] = sub_0680fa03[address(arg1)] - arg3 + (arg3 * stor13 / stor14)
            require sub_0680fa03[address(arg2)] + arg3 - (arg3 * stor13 / stor14) >= sub_0680fa03[address(arg2)]
            sub_0680fa03[address(arg2)] = sub_0680fa03[address(arg2)] + arg3 - (arg3 * stor13 / stor14)
            emit Transfer((arg3 - (arg3 * stor13 / stor14)), arg1, arg2);
            require arg3 - (arg3 * stor13 / stor14) <= allowance[address(arg1)][address(msg.sender)]
            require msg.sender
            require arg1
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * stor13 / stor14)
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * stor13 / stor14)), arg1, msg.sender);
            require arg3 * stor13 / stor14 <= totalSupply
            totalSupply -= arg3 * stor13 / stor14
            require arg3 * stor13 / stor14 <= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] -= arg3 * stor13 / stor14
            emit Transfer((arg3 * stor13 / stor14), arg1, 0);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] -= 0 / stor17
            else:
                require stor16
                require stor16 * arg3 / stor16 == arg3
                require stor17 > 0
                require stor17
                stor19[address(arg1)] -= stor16 * arg3 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg2)] += 0 / stor17
            else:
                require stor16
                require (arg3 * stor16) - (arg3 * stor13 / stor14 * stor16) / stor16 == arg3 - (arg3 * stor13 / stor14)
                require stor17 > 0
                require stor17
                stor19[address(arg2)] += (arg3 * stor16) - (arg3 * stor13 / stor14 * stor16) / stor17
            if not 0 / stor17:
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require 0 / stor17
                require 0 / stor17 * stor17 / 0 / stor17 == stor17
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / stor17 * stor17 / totalSupply) >= stor16
                stor16 += 0 / stor17 * stor17 / totalSupply
        else:
            require (2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2
            require (2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg3 * stor13 / stor14 / (2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 == arg3 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg3 * stor13 / stor14 / 10^12 == arg3 * stor13 / stor14
            require stor17 > 0
            require stor17
            require 10^12 * arg3 * stor13 / stor14 / stor17 <= sub_b17decdf
            sub_b17decdf -= 10^12 * arg3 * stor13 / stor14 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] = 0 / stor17
                require stor20[address(arg1)] >= 0
                stor20[address(arg1)] = 0
                if (0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)] > 0:
                    call arg1 with:
                       value (0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onWithdraw(((0 / stor17) - stor19[address(arg1)] + stor20[address(arg1)]), arg1);
            else:
                require stor16
                require stor16 * sub_0680fa03[address(arg1)] / stor16 == sub_0680fa03[address(arg1)]
                require stor17 > 0
                require stor17
                stor19[address(arg1)] = stor16 * sub_0680fa03[address(arg1)] / stor17
                require stor20[address(arg1)] >= 0
                stor20[address(arg1)] = 0
                if (stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)] > 0:
                    call arg1 with:
                       value (stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onWithdraw(((stor16 * sub_0680fa03[address(arg1)] / stor17) - stor19[address(arg1)] + stor20[address(arg1)]), arg1);
            require arg2
            require arg3 - (arg3 * stor13 / stor14) <= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] = sub_0680fa03[address(arg1)] - arg3 + (arg3 * stor13 / stor14)
            require sub_0680fa03[address(arg2)] + arg3 - (arg3 * stor13 / stor14) >= sub_0680fa03[address(arg2)]
            sub_0680fa03[address(arg2)] = sub_0680fa03[address(arg2)] + arg3 - (arg3 * stor13 / stor14)
            emit Transfer((arg3 - (arg3 * stor13 / stor14)), arg1, arg2);
            require arg3 - (arg3 * stor13 / stor14) <= allowance[address(arg1)][address(msg.sender)]
            require msg.sender
            require arg1
            allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * stor13 / stor14)
            emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3 + (arg3 * stor13 / stor14)), arg1, msg.sender);
            require arg3 * stor13 / stor14 <= totalSupply
            totalSupply -= arg3 * stor13 / stor14
            require arg3 * stor13 / stor14 <= sub_0680fa03[address(arg1)]
            sub_0680fa03[address(arg1)] -= arg3 * stor13 / stor14
            emit Transfer((arg3 * stor13 / stor14), arg1, 0);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg1)] -= 0 / stor17
            else:
                require stor16
                require stor16 * arg3 / stor16 == arg3
                require stor17 > 0
                require stor17
                stor19[address(arg1)] -= stor16 * arg3 / stor17
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(arg2)] += 0 / stor17
            else:
                require stor16
                require (arg3 * stor16) - (arg3 * stor13 / stor14 * stor16) / stor16 == arg3 - (arg3 * stor13 / stor14)
                require stor17 > 0
                require stor17
                stor19[address(arg2)] += (arg3 * stor16) - (arg3 * stor13 / stor14 * stor16) / stor17
            if not (2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg3 * stor13 / stor14 / stor17:
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
            else:
                require (2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg3 * stor13 / stor14 / stor17
                require (2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg3 * stor13 / stor14 / stor17 * stor17 / (2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg3 * stor13 / stor14 / stor17 == stor17
                require totalSupply > 0
                require totalSupply
                require stor16 + ((2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg3 * stor13 / stor14 / stor17 * stor17 / totalSupply) >= stor16
                stor16 += (2 * sub_b17decdf) - ((10^12 * arg3 * stor13 / stor14) - 1000000000000 * 10^18 / stor17) / 2 * arg3 * stor13 / stor14 / stor17 * stor17 / totalSupply
    emit TransferSuccessful(arg3, arg1, arg2);
    return 1
}

function exit() {
    if sub_0680fa03[address(msg.sender)] > 0:
        require sub_0680fa03[address(msg.sender)] > 0
        require sub_0680fa03[address(msg.sender)] <= sub_0680fa03[address(msg.sender)]
        if not sub_b17decdf:
            require 10^18 <= sub_0680fa03[address(msg.sender)]
            require (10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / 10^12 == sub_0680fa03[address(msg.sender)] - 10^18
            require stor17 > 0
            require stor17
            require (10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 <= 0
            if not Mask(255, 1, -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17):
                require stor17 > 0
                require stor17
                require 10^12 * sub_0680fa03[address(msg.sender)] / 10^12 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                require 10^12 * sub_0680fa03[address(msg.sender)] / stor17 <= sub_b17decdf
                sub_b17decdf -= 10^12 * sub_0680fa03[address(msg.sender)] / stor17
                require msg.sender
                require sub_0680fa03[address(msg.sender)] <= totalSupply
                totalSupply -= sub_0680fa03[address(msg.sender)]
                require sub_0680fa03[address(msg.sender)] <= sub_0680fa03[address(msg.sender)]
                sub_0680fa03[address(msg.sender)] = 0
                emit Transfer(sub_0680fa03[address(msg.sender)], msg.sender, 0);
                if not 0 / stor17:
                    require 0 <= 0 / stor17
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        require 2 * 0 / stor17 >= 0 / stor17
                        stor19[address(msg.sender)] -= 2 * 0 / stor17
                    else:
                        require stor16
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                        require stor17 > 0
                        require stor17
                        require (0 / stor17) + (stor16 * sub_0680fa03[address(msg.sender)] / stor17) >= 0 / stor17
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (0 / stor17) - (stor16 * sub_0680fa03[address(msg.sender)] / stor17)
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require stor10
                    require 0 / stor17 * stor9 / stor10 <= 0 / stor17
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        require 2 * 0 / stor17 >= 0 / stor17
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (2 * 0 / stor17) + (0 / stor17 * stor9 / stor10)
                    else:
                        require stor16
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                        require stor17 > 0
                        require stor17
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor17 >= 0
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (0 / stor17) + (0 / stor17 * stor9 / stor10) - (stor16 * sub_0680fa03[address(msg.sender)] / stor17)
                    if not 0 / stor17 * stor9 / stor10:
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + (0 / totalSupply) >= stor16
                        stor16 += 0 / totalSupply
                    else:
                        require 0 / stor17 * stor9 / stor10
                        require 0 / stor17 * stor9 / stor10 * stor17 / 0 / stor17 * stor9 / stor10 == stor17
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + (0 / stor17 * stor9 / stor10 * stor17 / totalSupply) >= stor16
                        stor16 += 0 / stor17 * stor9 / stor10 * stor17 / totalSupply
                emit onTokenSell(sub_0680fa03[address(msg.sender)], 0 / stor17, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender);
            else:
                require -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2
                require -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                require 10^12 * sub_0680fa03[address(msg.sender)] / 10^12 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                require 10^12 * sub_0680fa03[address(msg.sender)] / stor17 <= sub_b17decdf
                sub_b17decdf -= 10^12 * sub_0680fa03[address(msg.sender)] / stor17
                require msg.sender
                require sub_0680fa03[address(msg.sender)] <= totalSupply
                totalSupply -= sub_0680fa03[address(msg.sender)]
                require sub_0680fa03[address(msg.sender)] <= sub_0680fa03[address(msg.sender)]
                sub_0680fa03[address(msg.sender)] = 0
                emit Transfer(sub_0680fa03[address(msg.sender)], msg.sender, 0);
                if not -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17:
                    require 0 <= -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        require (-(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17) + (0 / stor17) >= -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (-(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17) - (0 / stor17)
                    else:
                        require stor16
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                        require stor17 > 0
                        require stor17
                        require (-(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17) + (stor16 * sub_0680fa03[address(msg.sender)] / stor17) >= -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (-(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17) - (stor16 * sub_0680fa03[address(msg.sender)] / stor17)
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require stor10
                    require -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 <= -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        require 0 / stor17 >= 0
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (-(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17) + (-(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10) - (0 / stor17)
                    else:
                        require stor16
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                        require stor17 > 0
                        require stor17
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor17 >= 0
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (-(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17) + (-(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10) - (stor16 * sub_0680fa03[address(msg.sender)] / stor17)
                    if not -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10:
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + (0 / totalSupply) >= stor16
                        stor16 += 0 / totalSupply
                    else:
                        require -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10
                        require -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 * stor17 / -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 == stor17
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + (-(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 * stor17 / totalSupply) >= stor16
                        stor16 += -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 * stor17 / totalSupply
                emit onTokenSell(sub_0680fa03[address(msg.sender)], -(10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 / 2 * sub_0680fa03[address(msg.sender)] / stor17, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender);
        else:
            require sub_b17decdf
            require 2 * sub_b17decdf / sub_b17decdf == 2
            require 10^18 <= sub_0680fa03[address(msg.sender)]
            require (10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / 10^12 == sub_0680fa03[address(msg.sender)] - 10^18
            require stor17 > 0
            require stor17
            require (10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17 <= 2 * sub_b17decdf
            if not Mask(255, 1, (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17)):
                require stor17 > 0
                require stor17
                require 10^12 * sub_0680fa03[address(msg.sender)] / 10^12 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                require 10^12 * sub_0680fa03[address(msg.sender)] / stor17 <= sub_b17decdf
                sub_b17decdf -= 10^12 * sub_0680fa03[address(msg.sender)] / stor17
                require msg.sender
                require sub_0680fa03[address(msg.sender)] <= totalSupply
                totalSupply -= sub_0680fa03[address(msg.sender)]
                require sub_0680fa03[address(msg.sender)] <= sub_0680fa03[address(msg.sender)]
                sub_0680fa03[address(msg.sender)] = 0
                emit Transfer(sub_0680fa03[address(msg.sender)], msg.sender, 0);
                if not 0 / stor17:
                    require 0 <= 0 / stor17
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        require 2 * 0 / stor17 >= 0 / stor17
                        stor19[address(msg.sender)] -= 2 * 0 / stor17
                    else:
                        require stor16
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                        require stor17 > 0
                        require stor17
                        require (0 / stor17) + (stor16 * sub_0680fa03[address(msg.sender)] / stor17) >= 0 / stor17
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (0 / stor17) - (stor16 * sub_0680fa03[address(msg.sender)] / stor17)
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require stor10
                    require 0 / stor17 * stor9 / stor10 <= 0 / stor17
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        require 2 * 0 / stor17 >= 0 / stor17
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (2 * 0 / stor17) + (0 / stor17 * stor9 / stor10)
                    else:
                        require stor16
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                        require stor17 > 0
                        require stor17
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor17 >= 0
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - (0 / stor17) + (0 / stor17 * stor9 / stor10) - (stor16 * sub_0680fa03[address(msg.sender)] / stor17)
                    if not 0 / stor17 * stor9 / stor10:
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + (0 / totalSupply) >= stor16
                        stor16 += 0 / totalSupply
                    else:
                        require 0 / stor17 * stor9 / stor10
                        require 0 / stor17 * stor9 / stor10 * stor17 / 0 / stor17 * stor9 / stor10 == stor17
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + (0 / stor17 * stor9 / stor10 * stor17 / totalSupply) >= stor16
                        stor16 += 0 / stor17 * stor9 / stor10 * stor17 / totalSupply
                emit onTokenSell(sub_0680fa03[address(msg.sender)], 0 / stor17, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender);
            else:
                require (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2
                require (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                require 10^12 * sub_0680fa03[address(msg.sender)] / 10^12 == sub_0680fa03[address(msg.sender)]
                require stor17 > 0
                require stor17
                require 10^12 * sub_0680fa03[address(msg.sender)] / stor17 <= sub_b17decdf
                sub_b17decdf -= 10^12 * sub_0680fa03[address(msg.sender)] / stor17
                require msg.sender
                require sub_0680fa03[address(msg.sender)] <= totalSupply
                totalSupply -= sub_0680fa03[address(msg.sender)]
                require sub_0680fa03[address(msg.sender)] <= sub_0680fa03[address(msg.sender)]
                sub_0680fa03[address(msg.sender)] = 0
                emit Transfer(sub_0680fa03[address(msg.sender)], msg.sender, 0);
                if not (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17:
                    require 0 <= (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        require ((2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17) + (0 / stor17) >= (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - ((2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17) - (0 / stor17)
                    else:
                        require stor16
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                        require stor17 > 0
                        require stor17
                        require ((2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17) + (stor16 * sub_0680fa03[address(msg.sender)] / stor17) >= (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - ((2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17) - (stor16 * sub_0680fa03[address(msg.sender)] / stor17)
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require stor10
                    require (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 <= (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        require 0 / stor17 >= 0
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - ((2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17) + ((2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10) - (0 / stor17)
                    else:
                        require stor16
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
                        require stor17 > 0
                        require stor17
                        require stor16 * sub_0680fa03[address(msg.sender)] / stor17 >= 0
                        stor19[address(msg.sender)] = stor19[address(msg.sender)] - ((2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17) + ((2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10) - (stor16 * sub_0680fa03[address(msg.sender)] / stor17)
                    if not (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10:
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + (0 / totalSupply) >= stor16
                        stor16 += 0 / totalSupply
                    else:
                        require (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10
                        require (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 * stor17 / (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 == stor17
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + ((2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 * stor17 / totalSupply) >= stor16
                        stor16 += (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17 * stor9 / stor10 * stor17 / totalSupply
                emit onTokenSell(sub_0680fa03[address(msg.sender)], (2 * sub_b17decdf) - ((10^12 * sub_0680fa03[address(msg.sender)]) - 1000000000000 * 10^18 / stor17) / 2 * sub_0680fa03[address(msg.sender)] / stor17, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender);
    if not stor16:
        require stor17 > 0
        require stor17
        require stor20[address(msg.sender)] >= 0
        require (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0
    else:
        require stor16
        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
        require stor17 > 0
        require stor17
        require stor20[address(msg.sender)] >= 0
        require (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] > 0
    if not stor16:
        require stor17 > 0
        require stor17
        stor19[address(msg.sender)] = 0 / stor17
        require stor20[address(msg.sender)] >= 0
        stor20[address(msg.sender)] = 0
        call msg.sender with:
           value (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]), msg.sender);
    else:
        require stor16
        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
        require stor17 > 0
        require stor17
        stor19[address(msg.sender)] = stor16 * sub_0680fa03[address(msg.sender)] / stor17
        require stor20[address(msg.sender)] >= 0
        stor20[address(msg.sender)] = 0
        call msg.sender with:
           value (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit onWithdraw(((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]), msg.sender);
}

function sub_5e78458e(?) payable {
    if not msg.value:
        require 0 <= msg.value
        if totalSupply <= 0:
            if owner != msg.sender:
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require sub_b17decdf
                require sub_b17decdf
                require 2 * sub_b17decdf / sub_b17decdf == 2
                require 10^12 <= 2 * sub_b17decdf
                require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                t = ((2 * sub_b17decdf) - 10^12)^2
                while s < t:
                    require s
                    s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                    t = s
                    continue 
                require (2 * sub_b17decdf) - 10^12 <= t
                if not t + -(2 * sub_b17decdf) + 10^12:
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                    sub_b17decdf += 0 / stor17
                    require marketingAddress
                    require totalSupply >= totalSupply
                    require sub_0680fa03[stor15] >= sub_0680fa03[stor15]
                    emit Transfer(0, 0, marketingAddress);
                    if stor16:
                        require stor16
                        require not 0 / stor16
                    require stor17 > 0
                    require stor17
                    stor19[stor15] += 0 / stor17
                    emit 0xff885306: 0, 0, block.timestamp, sub_b17decdf, sub_b17decdf, marketingAddress, 0
                else:
                    require t + -(2 * sub_b17decdf) + 10^12
                    require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                    require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                    sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                    require marketingAddress
                    require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                    totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require sub_0680fa03[stor15] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[stor15]
                    sub_0680fa03[stor15] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, marketingAddress);
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        stor19[stor15] += 0 / stor17
                    else:
                        require stor16
                        require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        stor19[stor15] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                    emit 0xff885306: 0, (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, marketingAddress, 0
        else:
            require sub_b17decdf
            require sub_b17decdf
            require 2 * sub_b17decdf / sub_b17decdf == 2
            require 10^12 <= 2 * sub_b17decdf
            require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
            s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
            t = ((2 * sub_b17decdf) - 10^12)^2
            while s < t:
                require s
                s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                t = s
                continue 
            require (2 * sub_b17decdf) - 10^12 <= t
            if not t + -(2 * sub_b17decdf) + 10^12:
                require stor17 > 0
                require stor17
                require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                sub_b17decdf += 0 / stor17
                revert
            require t + -(2 * sub_b17decdf) + 10^12
            require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
            require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
            require stor17 > 0
            require stor17
            require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
            sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
            require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
            require totalSupply > 0
            require totalSupply
            require stor16 + (0 / totalSupply) >= stor16
            stor16 += 0 / totalSupply
            require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
            require marketingAddress
            require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
            totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
            require sub_0680fa03[stor15] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[stor15]
            sub_0680fa03[stor15] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
            emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, marketingAddress);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[stor15] += 0 / stor17
            else:
                require stor16
                require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require stor17 > 0
                require stor17
                stor19[stor15] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
            emit 0xff885306: 0, (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, marketingAddress, 0
        if not msg.value:
            require totalSupply > 0
            require totalSupply
            require stor16 + (0 / totalSupply) >= stor16
            stor16 += 0 / totalSupply
        else:
            require msg.value
            require msg.value * stor17 / msg.value == stor17
            require totalSupply > 0
            require totalSupply
            require stor16 + (msg.value * stor17 / totalSupply) >= stor16
            stor16 += msg.value * stor17 / totalSupply
    else:
        require stor8
        require msg.value * stor7 / stor8 <= msg.value
        if not msg.value * stor7 / stor8:
            require 0 <= msg.value * stor7 / stor8
            if totalSupply <= 0:
                if owner != msg.sender:
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require sub_b17decdf
                    require sub_b17decdf
                    require 2 * sub_b17decdf / sub_b17decdf == 2
                    require 10^12 <= 2 * sub_b17decdf
                    if not msg.value * stor7 / stor8:
                        require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                            t = s
                            continue 
                    else:
                        require msg.value * stor7 / stor8
                        require 2 * msg.value * stor7 / stor8 / msg.value * stor7 / stor8 == 2
                        require 4 * 10^12 * 2 * msg.value * stor7 / stor8 / 4 * 10^12 == 2 * msg.value * stor7 / stor8
                        require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8) >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8) + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8)
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8) / s) + s / 2
                            t = s
                            continue 
                    require (2 * sub_b17decdf) - 10^12 <= t
                    if not t + -(2 * sub_b17decdf) + 10^12:
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                        sub_b17decdf += 0 / stor17
                        require marketingAddress
                        require totalSupply >= totalSupply
                        require sub_0680fa03[stor15] >= sub_0680fa03[stor15]
                        emit Transfer(0, 0, marketingAddress);
                        if stor16:
                            require stor16
                            require not 0 / stor16
                        require stor17 > 0
                        require stor17
                        stor19[stor15] += 0 / stor17
                        emit 0xff885306: msg.value * stor7 / stor8, 0, block.timestamp, sub_b17decdf, sub_b17decdf, marketingAddress, 0
                    else:
                        require t + -(2 * sub_b17decdf) + 10^12
                        require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                        require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                        sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        require marketingAddress
                        require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                        totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require sub_0680fa03[stor15] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[stor15]
                        sub_0680fa03[stor15] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, marketingAddress);
                        if not stor16:
                            require stor17 > 0
                            require stor17
                            stor19[stor15] += 0 / stor17
                        else:
                            require stor16
                            require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            stor19[stor15] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        emit 0xff885306: msg.value * stor7 / stor8, (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, marketingAddress, 0
            else:
                require sub_b17decdf
                require sub_b17decdf
                require 2 * sub_b17decdf / sub_b17decdf == 2
                require 10^12 <= 2 * sub_b17decdf
                if not msg.value * stor7 / stor8:
                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                        t = s
                        continue 
                else:
                    require msg.value * stor7 / stor8
                    require 2 * msg.value * stor7 / stor8 / msg.value * stor7 / stor8 == 2
                    require 4 * 10^12 * 2 * msg.value * stor7 / stor8 / 4 * 10^12 == 2 * msg.value * stor7 / stor8
                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8) >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8) + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8)
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8) / s) + s / 2
                        t = s
                        continue 
                require (2 * sub_b17decdf) - 10^12 <= t
                if not t + -(2 * sub_b17decdf) + 10^12:
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                    sub_b17decdf += 0 / stor17
                    revert
                require t + -(2 * sub_b17decdf) + 10^12
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require stor17 > 0
                require stor17
                require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                require marketingAddress
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require sub_0680fa03[stor15] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[stor15]
                sub_0680fa03[stor15] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, marketingAddress);
                if not stor16:
                    require stor17 > 0
                    require stor17
                    stor19[stor15] += 0 / stor17
                else:
                    require stor16
                    require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    stor19[stor15] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                emit 0xff885306: msg.value * stor7 / stor8, (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, marketingAddress, 0
        else:
            require stor8
            require msg.value * stor7 / stor8 * stor7 / stor8 <= msg.value * stor7 / stor8
            if totalSupply <= 0:
                if owner != msg.sender:
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require sub_b17decdf
                    require sub_b17decdf
                    require 2 * sub_b17decdf / sub_b17decdf == 2
                    require 10^12 <= 2 * sub_b17decdf
                    if not msg.value * stor7 / stor8:
                        require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                            t = s
                            continue 
                    else:
                        require msg.value * stor7 / stor8
                        require 2 * msg.value * stor7 / stor8 / msg.value * stor7 / stor8 == 2
                        require 4 * 10^12 * 2 * msg.value * stor7 / stor8 / 4 * 10^12 == 2 * msg.value * stor7 / stor8
                        require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8) >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8) + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8)
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value * stor7 / stor8) / s) + s / 2
                            t = s
                            continue 
                    require (2 * sub_b17decdf) - 10^12 <= t
                    if not t + -(2 * sub_b17decdf) + 10^12:
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                        sub_b17decdf += 0 / stor17
                        require marketingAddress
                        require totalSupply >= totalSupply
                        require sub_0680fa03[stor15] >= sub_0680fa03[stor15]
                        emit Transfer(0, 0, marketingAddress);
                        if stor16:
                            require stor16
                            require not 0 / stor16
                        require stor17 > 0
                        require stor17
                        stor19[stor15] += 0 / stor17
                        emit 0xff885306: (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8), 0, block.timestamp, sub_b17decdf, sub_b17decdf, marketingAddress, 0
                    else:
                        require t + -(2 * sub_b17decdf) + 10^12
                        require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                        require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                        sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        require marketingAddress
                        require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                        totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require sub_0680fa03[stor15] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[stor15]
                        sub_0680fa03[stor15] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, marketingAddress);
                        if not stor16:
                            require stor17 > 0
                            require stor17
                            stor19[stor15] += 0 / stor17
                        else:
                            require stor16
                            require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            stor19[stor15] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        emit 0xff885306: (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, marketingAddress, 0
            else:
                require sub_b17decdf
                require sub_b17decdf
                require 2 * sub_b17decdf / sub_b17decdf == 2
                require 10^12 <= 2 * sub_b17decdf
                if not (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8):
                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                        t = s
                        continue 
                else:
                    require (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8)
                    require 2 * (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8) / (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8) == 2
                    require 4 * 10^12 * 2 * (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8) / 4 * 10^12 == 2 * (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8)
                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8)) >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8)) + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8))
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8)) / s) + s / 2
                        t = s
                        continue 
                require (2 * sub_b17decdf) - 10^12 <= t
                if not t + -(2 * sub_b17decdf) + 10^12:
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                    sub_b17decdf += 0 / stor17
                    revert
                require t + -(2 * sub_b17decdf) + 10^12
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require stor17 > 0
                require stor17
                require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                if not msg.value * stor7 / stor8 * stor7 / stor8:
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require msg.value * stor7 / stor8 * stor7 / stor8
                    require msg.value * stor7 / stor8 * stor7 / stor8 * stor17 / msg.value * stor7 / stor8 * stor7 / stor8 == stor17
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (msg.value * stor7 / stor8 * stor7 / stor8 * stor17 / totalSupply) >= stor16
                    stor16 += msg.value * stor7 / stor8 * stor7 / stor8 * stor17 / totalSupply
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                require marketingAddress
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require sub_0680fa03[stor15] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[stor15]
                sub_0680fa03[stor15] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, marketingAddress);
                if not stor16:
                    require stor17 > 0
                    require stor17
                    stor19[stor15] += 0 / stor17
                else:
                    require stor16
                    require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    stor19[stor15] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                emit 0xff885306: (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, marketingAddress, 0
        if not msg.value - (msg.value * stor7 / stor8):
            require totalSupply > 0
            require totalSupply
            require stor16 + (0 / totalSupply) >= stor16
            stor16 += 0 / totalSupply
        else:
            require msg.value - (msg.value * stor7 / stor8)
            require (msg.value * stor17) - (msg.value * stor7 / stor8 * stor17) / msg.value - (msg.value * stor7 / stor8) == stor17
            require totalSupply > 0
            require totalSupply
            require stor16 + ((msg.value * stor17) - (msg.value * stor7 / stor8 * stor17) / totalSupply) >= stor16
            stor16 += (msg.value * stor17) - (msg.value * stor7 / stor8 * stor17) / totalSupply
}

function reinvest() {
    require sub_0680fa03[address(msg.sender)] > 0
    if not stor16:
        require stor17 > 0
        require stor17
        stor19[address(msg.sender)] = 0 / stor17
        require stor20[address(msg.sender)] >= 0
        stor20[address(msg.sender)] = 0
        if not (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]:
            require 0 <= (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
            if totalSupply <= 0:
                if owner != msg.sender:
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onReinvestment((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, msg.sender);
                else:
                    require sub_b17decdf
                    require sub_b17decdf
                    require 2 * sub_b17decdf / sub_b17decdf == 2
                    require 10^12 <= 2 * sub_b17decdf
                    if not (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]:
                        require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                        require 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] == 2
                        require 4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / 4 * 10^12 == 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                        require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)])
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) / s) + s / 2
                            t = s
                            continue 
                    require (2 * sub_b17decdf) - 10^12 <= t
                    if not t + -(2 * sub_b17decdf) + 10^12:
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                        sub_b17decdf += 0 / stor17
                        require msg.sender
                        require totalSupply >= totalSupply
                        require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                        emit Transfer(0, 0, msg.sender);
                        if stor16:
                            require stor16
                            require not 0 / stor16
                        require stor17 > 0
                        require stor17
                        stor19[address(msg.sender)] += 0 / stor17
                        emit 0xff885306: (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                        emit onReinvestment((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, msg.sender);
                    else:
                        require t + -(2 * sub_b17decdf) + 10^12
                        require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                        require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                        sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        require msg.sender
                        require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                        totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                        sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                        if not stor16:
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += 0 / stor17
                        else:
                            require stor16
                            require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        emit 0xff885306: (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                        emit onReinvestment((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, msg.sender);
            else:
                require sub_b17decdf
                require sub_b17decdf
                require 2 * sub_b17decdf / sub_b17decdf == 2
                require 10^12 <= 2 * sub_b17decdf
                if not (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]:
                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                        t = s
                        continue 
                else:
                    require (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                    require 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] == 2
                    require 4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / 4 * 10^12 == 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)])
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) / s) + s / 2
                        t = s
                        continue 
                require (2 * sub_b17decdf) - 10^12 <= t
                if not t + -(2 * sub_b17decdf) + 10^12:
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                    sub_b17decdf += 0 / stor17
                    revert
                require t + -(2 * sub_b17decdf) + 10^12
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require stor17 > 0
                require stor17
                require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                require msg.sender
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                if not stor16:
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += 0 / stor17
                else:
                    require stor16
                    require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                emit 0xff885306: (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                emit onReinvestment((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, msg.sender);
        else:
            require stor8
            require (0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 <= (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
            if totalSupply <= 0:
                if owner != msg.sender:
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onReinvestment((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, msg.sender);
                else:
                    require sub_b17decdf
                    require sub_b17decdf
                    require 2 * sub_b17decdf / sub_b17decdf == 2
                    require 10^12 <= 2 * sub_b17decdf
                    if not (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]:
                        require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                        require 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] == 2
                        require 4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / 4 * 10^12 == 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                        require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)])
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) / s) + s / 2
                            t = s
                            continue 
                    require (2 * sub_b17decdf) - 10^12 <= t
                    if not t + -(2 * sub_b17decdf) + 10^12:
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                        sub_b17decdf += 0 / stor17
                        require msg.sender
                        require totalSupply >= totalSupply
                        require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                        emit Transfer(0, 0, msg.sender);
                        if stor16:
                            require stor16
                            require not 0 / stor16
                        require stor17 > 0
                        require stor17
                        stor19[address(msg.sender)] += 0 / stor17
                        emit 0xff885306: (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8), 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                        emit onReinvestment((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, msg.sender);
                    else:
                        require t + -(2 * sub_b17decdf) + 10^12
                        require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                        require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                        sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        require msg.sender
                        require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                        totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                        sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                        if not stor16:
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += 0 / stor17
                        else:
                            require stor16
                            require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        emit 0xff885306: (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                        emit onReinvestment((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, msg.sender);
            else:
                require sub_b17decdf
                require sub_b17decdf
                require 2 * sub_b17decdf / sub_b17decdf == 2
                require 10^12 <= 2 * sub_b17decdf
                if not (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8):
                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                        t = s
                        continue 
                else:
                    require (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)
                    require 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8) / (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8) == 2
                    require 4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8) / 4 * 10^12 == 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)
                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)) >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)) + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8))
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)) / s) + s / 2
                        t = s
                        continue 
                require (2 * sub_b17decdf) - 10^12 <= t
                if not t + -(2 * sub_b17decdf) + 10^12:
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                    sub_b17decdf += 0 / stor17
                    revert
                require t + -(2 * sub_b17decdf) + 10^12
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require stor17 > 0
                require stor17
                require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                if not (0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8:
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require (0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8
                    require (0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 * stor17 / (0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 == stor17
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 * stor17 / totalSupply) >= stor16
                    stor16 += (0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 * stor17 / totalSupply
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                require msg.sender
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                if not stor16:
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += 0 / stor17
                else:
                    require stor16
                    require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                emit 0xff885306: (0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((0 / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                emit onReinvestment((0 / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, msg.sender);
    else:
        require stor16
        require stor16 * sub_0680fa03[address(msg.sender)] / stor16 == sub_0680fa03[address(msg.sender)]
        require stor17 > 0
        require stor17
        stor19[address(msg.sender)] = stor16 * sub_0680fa03[address(msg.sender)] / stor17
        require stor20[address(msg.sender)] >= 0
        stor20[address(msg.sender)] = 0
        if not (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]:
            require 0 <= (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
            if totalSupply <= 0:
                if owner != msg.sender:
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onReinvestment((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, msg.sender);
                else:
                    require sub_b17decdf
                    require sub_b17decdf
                    require 2 * sub_b17decdf / sub_b17decdf == 2
                    require 10^12 <= 2 * sub_b17decdf
                    if not (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]:
                        require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                        require 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] == 2
                        require 4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / 4 * 10^12 == 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                        require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)])
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) / s) + s / 2
                            t = s
                            continue 
                    require (2 * sub_b17decdf) - 10^12 <= t
                    if not t + -(2 * sub_b17decdf) + 10^12:
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                        sub_b17decdf += 0 / stor17
                        require msg.sender
                        require totalSupply >= totalSupply
                        require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                        emit Transfer(0, 0, msg.sender);
                        if stor16:
                            require stor16
                            require not 0 / stor16
                        require stor17 > 0
                        require stor17
                        stor19[address(msg.sender)] += 0 / stor17
                        emit 0xff885306: (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                        emit onReinvestment((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, msg.sender);
                    else:
                        require t + -(2 * sub_b17decdf) + 10^12
                        require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                        require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                        sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        require msg.sender
                        require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                        totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                        sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                        if not stor16:
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += 0 / stor17
                        else:
                            require stor16
                            require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        emit 0xff885306: (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                        emit onReinvestment((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, msg.sender);
            else:
                require sub_b17decdf
                require sub_b17decdf
                require 2 * sub_b17decdf / sub_b17decdf == 2
                require 10^12 <= 2 * sub_b17decdf
                if not (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]:
                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                        t = s
                        continue 
                else:
                    require (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                    require 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] == 2
                    require 4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / 4 * 10^12 == 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)])
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) / s) + s / 2
                        t = s
                        continue 
                require (2 * sub_b17decdf) - 10^12 <= t
                if not t + -(2 * sub_b17decdf) + 10^12:
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                    sub_b17decdf += 0 / stor17
                    revert
                require t + -(2 * sub_b17decdf) + 10^12
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require stor17 > 0
                require stor17
                require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                require totalSupply > 0
                require totalSupply
                require stor16 + (0 / totalSupply) >= stor16
                stor16 += 0 / totalSupply
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                require msg.sender
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                if not stor16:
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += 0 / stor17
                else:
                    require stor16
                    require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                emit 0xff885306: (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                emit onReinvestment((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, msg.sender);
        else:
            require stor8
            require (stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 <= (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
            if totalSupply <= 0:
                if owner != msg.sender:
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit onReinvestment((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, msg.sender);
                else:
                    require sub_b17decdf
                    require sub_b17decdf
                    require 2 * sub_b17decdf / sub_b17decdf == 2
                    require 10^12 <= 2 * sub_b17decdf
                    if not (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]:
                        require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                            t = s
                            continue 
                    else:
                        require (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                        require 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] == 2
                        require 4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] / 4 * 10^12 == 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]
                        require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)])
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)]) / s) + s / 2
                            t = s
                            continue 
                    require (2 * sub_b17decdf) - 10^12 <= t
                    if not t + -(2 * sub_b17decdf) + 10^12:
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                        sub_b17decdf += 0 / stor17
                        require msg.sender
                        require totalSupply >= totalSupply
                        require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                        emit Transfer(0, 0, msg.sender);
                        if stor16:
                            require stor16
                            require not 0 / stor16
                        require stor17 > 0
                        require stor17
                        stor19[address(msg.sender)] += 0 / stor17
                        emit 0xff885306: (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8), 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                        emit onReinvestment((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], 0, msg.sender);
                    else:
                        require t + -(2 * sub_b17decdf) + 10^12
                        require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                        require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                        sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        require msg.sender
                        require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                        totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                        sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                        if not stor16:
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += 0 / stor17
                        else:
                            require stor16
                            require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        emit 0xff885306: (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                        emit onReinvestment((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, msg.sender);
            else:
                require sub_b17decdf
                require sub_b17decdf
                require 2 * sub_b17decdf / sub_b17decdf == 2
                require 10^12 <= 2 * sub_b17decdf
                if not (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8):
                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                        t = s
                        continue 
                else:
                    require (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)
                    require 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8) / (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8) == 2
                    require 4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8) / 4 * 10^12 == 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)
                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)) >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)) + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8))
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8)) / s) + s / 2
                        t = s
                        continue 
                require (2 * sub_b17decdf) - 10^12 <= t
                if not t + -(2 * sub_b17decdf) + 10^12:
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                    sub_b17decdf += 0 / stor17
                    revert
                require t + -(2 * sub_b17decdf) + 10^12
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require stor17 > 0
                require stor17
                require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                if not (stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8:
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require (stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8
                    require (stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 * stor17 / (stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 == stor17
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 * stor17 / totalSupply) >= stor16
                    stor16 += (stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8 * stor17 / totalSupply
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                require msg.sender
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                if not stor16:
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += 0 / stor17
                else:
                    require stor16
                    require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                emit 0xff885306: (stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)] - ((stor16 * sub_0680fa03[address(msg.sender)] / stor17 * stor7) - (stor19[address(msg.sender)] * stor7) + (stor20[address(msg.sender)] * stor7) / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, 0
                emit onReinvestment((stor16 * sub_0680fa03[address(msg.sender)] / stor17) - stor19[address(msg.sender)] + stor20[address(msg.sender)], (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, msg.sender);
}

function _fallback() payable {
    if not msg.value:
        require 0 <= msg.value
        if stor21[address(msg.sender)]:
            if stor21[address(msg.sender)] != msg.sender:
                if sub_0680fa03[stor21[address(msg.sender)]] >= sub_4b0d2bd1:
                    require stor20[stor21[address(msg.sender)]] >= stor20[stor21[address(msg.sender)]]
        if totalSupply <= 0:
            if owner != msg.sender:
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                require sub_b17decdf
                require sub_b17decdf
                require 2 * sub_b17decdf / sub_b17decdf == 2
                require 10^12 <= 2 * sub_b17decdf
                if not msg.value:
                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                        t = s
                        continue 
                else:
                    require msg.value
                    require 2 * msg.value / msg.value == 2
                    require 4 * 10^12 * 2 * msg.value / 4 * 10^12 == 2 * msg.value
                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value)
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) / s) + s / 2
                        t = s
                        continue 
                require (2 * sub_b17decdf) - 10^12 <= t
                if not t + -(2 * sub_b17decdf) + 10^12:
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                    sub_b17decdf += 0 / stor17
                    require msg.sender
                    require totalSupply >= totalSupply
                    require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                    emit Transfer(0, 0, msg.sender);
                    if stor16:
                        require stor16
                        require not 0 / stor16
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += 0 / stor17
                    emit 0xff885306: msg.value, 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                else:
                    require t + -(2 * sub_b17decdf) + 10^12
                    require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                    require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                    sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                    require msg.sender
                    require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                    totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                    sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        stor19[address(msg.sender)] += 0 / stor17
                    else:
                        require stor16
                        require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                    emit 0xff885306: msg.value, (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
        else:
            require sub_b17decdf
            require sub_b17decdf
            require 2 * sub_b17decdf / sub_b17decdf == 2
            require 10^12 <= 2 * sub_b17decdf
            if not msg.value:
                require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                t = ((2 * sub_b17decdf) - 10^12)^2
                while s < t:
                    require s
                    s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                    t = s
                    continue 
            else:
                require msg.value
                require 2 * msg.value / msg.value == 2
                require 4 * 10^12 * 2 * msg.value / 4 * 10^12 == 2 * msg.value
                require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) >= ((2 * sub_b17decdf) - 10^12)^2
                s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) + 1 / 2
                t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value)
                while s < t:
                    require s
                    s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) / s) + s / 2
                    t = s
                    continue 
            require (2 * sub_b17decdf) - 10^12 <= t
            if not t + -(2 * sub_b17decdf) + 10^12:
                require stor17 > 0
                require stor17
                require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                sub_b17decdf += 0 / stor17
                revert
            require t + -(2 * sub_b17decdf) + 10^12
            require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
            require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
            require stor17 > 0
            require stor17
            require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
            sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
            require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
            require totalSupply > 0
            require totalSupply
            require stor16 + (0 / totalSupply) >= stor16
            stor16 += 0 / totalSupply
            require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
            require msg.sender
            require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
            totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
            require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
            sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
            emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
            if not stor16:
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] += 0 / stor17
            else:
                require stor16
                require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require stor17 > 0
                require stor17
                stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
            emit 0xff885306: msg.value, (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
    else:
        require stor8
        require msg.value * stor7 / stor8 <= msg.value
        if not stor21[address(msg.sender)]:
            if totalSupply <= 0:
                if owner != msg.sender:
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    require sub_b17decdf
                    require sub_b17decdf
                    require 2 * sub_b17decdf / sub_b17decdf == 2
                    require 10^12 <= 2 * sub_b17decdf
                    if not msg.value:
                        require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                            t = s
                            continue 
                    else:
                        require msg.value
                        require 2 * msg.value / msg.value == 2
                        require 4 * 10^12 * 2 * msg.value / 4 * 10^12 == 2 * msg.value
                        require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value)
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) / s) + s / 2
                            t = s
                            continue 
                    require (2 * sub_b17decdf) - 10^12 <= t
                    if not t + -(2 * sub_b17decdf) + 10^12:
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                        sub_b17decdf += 0 / stor17
                        require msg.sender
                        require totalSupply >= totalSupply
                        require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                        emit Transfer(0, 0, msg.sender);
                        if stor16:
                            require stor16
                            require not 0 / stor16
                        require stor17 > 0
                        require stor17
                        stor19[address(msg.sender)] += 0 / stor17
                        emit 0xff885306: msg.value - (msg.value * stor7 / stor8), 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                    else:
                        require t + -(2 * sub_b17decdf) + 10^12
                        require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                        require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                        sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        require msg.sender
                        require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                        totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                        sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                        if not stor16:
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += 0 / stor17
                        else:
                            require stor16
                            require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
            else:
                require sub_b17decdf
                require sub_b17decdf
                require 2 * sub_b17decdf / sub_b17decdf == 2
                require 10^12 <= 2 * sub_b17decdf
                if not msg.value - (msg.value * stor7 / stor8):
                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                        t = s
                        continue 
                else:
                    require msg.value - (msg.value * stor7 / stor8)
                    require 2 * msg.value - (msg.value * stor7 / stor8) / msg.value - (msg.value * stor7 / stor8) == 2
                    require 4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8) / 4 * 10^12 == 2 * msg.value - (msg.value * stor7 / stor8)
                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) >= ((2 * sub_b17decdf) - 10^12)^2
                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) + 1 / 2
                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8))
                    while s < t:
                        require s
                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) / s) + s / 2
                        t = s
                        continue 
                require (2 * sub_b17decdf) - 10^12 <= t
                if not t + -(2 * sub_b17decdf) + 10^12:
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                    sub_b17decdf += 0 / stor17
                    revert
                require t + -(2 * sub_b17decdf) + 10^12
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require stor17 > 0
                require stor17
                require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                if not msg.value * stor7 / stor8:
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (0 / totalSupply) >= stor16
                    stor16 += 0 / totalSupply
                else:
                    require msg.value * stor7 / stor8
                    require msg.value * stor7 / stor8 * stor17 / msg.value * stor7 / stor8 == stor17
                    require totalSupply > 0
                    require totalSupply
                    require stor16 + (msg.value * stor7 / stor8 * stor17 / totalSupply) >= stor16
                    stor16 += msg.value * stor7 / stor8 * stor17 / totalSupply
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                require msg.sender
                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                if not stor16:
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += 0 / stor17
                else:
                    require stor16
                    require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
        else:
            if stor21[address(msg.sender)] == msg.sender:
                if totalSupply <= 0:
                    if owner != msg.sender:
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require sub_b17decdf
                        require sub_b17decdf
                        require 2 * sub_b17decdf / sub_b17decdf == 2
                        require 10^12 <= 2 * sub_b17decdf
                        if not msg.value:
                            require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                            s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                            t = ((2 * sub_b17decdf) - 10^12)^2
                            while s < t:
                                require s
                                s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                                t = s
                                continue 
                        else:
                            require msg.value
                            require 2 * msg.value / msg.value == 2
                            require 4 * 10^12 * 2 * msg.value / 4 * 10^12 == 2 * msg.value
                            require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) >= ((2 * sub_b17decdf) - 10^12)^2
                            s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) + 1 / 2
                            t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value)
                            while s < t:
                                require s
                                s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) / s) + s / 2
                                t = s
                                continue 
                        require (2 * sub_b17decdf) - 10^12 <= t
                        if not t + -(2 * sub_b17decdf) + 10^12:
                            require stor17 > 0
                            require stor17
                            require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                            sub_b17decdf += 0 / stor17
                            require msg.sender
                            require totalSupply >= totalSupply
                            require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                            emit Transfer(0, 0, msg.sender);
                            if stor16:
                                require stor16
                                require not 0 / stor16
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += 0 / stor17
                            emit 0xff885306: msg.value - (msg.value * stor7 / stor8), 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                        else:
                            require t + -(2 * sub_b17decdf) + 10^12
                            require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                            require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                            sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                            require msg.sender
                            require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                            totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                            sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                            if not stor16:
                                require stor17 > 0
                                require stor17
                                stor19[address(msg.sender)] += 0 / stor17
                            else:
                                require stor16
                                require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                require stor17 > 0
                                require stor17
                                stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                            emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                else:
                    require sub_b17decdf
                    require sub_b17decdf
                    require 2 * sub_b17decdf / sub_b17decdf == 2
                    require 10^12 <= 2 * sub_b17decdf
                    if not msg.value - (msg.value * stor7 / stor8):
                        require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                            t = s
                            continue 
                    else:
                        require msg.value - (msg.value * stor7 / stor8)
                        require 2 * msg.value - (msg.value * stor7 / stor8) / msg.value - (msg.value * stor7 / stor8) == 2
                        require 4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8) / 4 * 10^12 == 2 * msg.value - (msg.value * stor7 / stor8)
                        require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) >= ((2 * sub_b17decdf) - 10^12)^2
                        s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) + 1 / 2
                        t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8))
                        while s < t:
                            require s
                            s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) / s) + s / 2
                            t = s
                            continue 
                    require (2 * sub_b17decdf) - 10^12 <= t
                    if not t + -(2 * sub_b17decdf) + 10^12:
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                        sub_b17decdf += 0 / stor17
                        revert
                    require t + -(2 * sub_b17decdf) + 10^12
                    require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                    require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require stor17 > 0
                    require stor17
                    require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                    sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                    require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                    if not msg.value * stor7 / stor8:
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + (0 / totalSupply) >= stor16
                        stor16 += 0 / totalSupply
                    else:
                        require msg.value * stor7 / stor8
                        require msg.value * stor7 / stor8 * stor17 / msg.value * stor7 / stor8 == stor17
                        require totalSupply > 0
                        require totalSupply
                        require stor16 + (msg.value * stor7 / stor8 * stor17 / totalSupply) >= stor16
                        stor16 += msg.value * stor7 / stor8 * stor17 / totalSupply
                    require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                    require msg.sender
                    require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                    totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                    sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                    emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                    if not stor16:
                        require stor17 > 0
                        require stor17
                        stor19[address(msg.sender)] += 0 / stor17
                    else:
                        require stor16
                        require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                    emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
            else:
                if sub_0680fa03[stor21[address(msg.sender)]] < sub_4b0d2bd1:
                    if totalSupply <= 0:
                        if owner != msg.sender:
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            require sub_b17decdf
                            require sub_b17decdf
                            require 2 * sub_b17decdf / sub_b17decdf == 2
                            require 10^12 <= 2 * sub_b17decdf
                            if not msg.value:
                                require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                                s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                                t = ((2 * sub_b17decdf) - 10^12)^2
                                while s < t:
                                    require s
                                    s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                                    t = s
                                    continue 
                            else:
                                require msg.value
                                require 2 * msg.value / msg.value == 2
                                require 4 * 10^12 * 2 * msg.value / 4 * 10^12 == 2 * msg.value
                                require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) >= ((2 * sub_b17decdf) - 10^12)^2
                                s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) + 1 / 2
                                t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value)
                                while s < t:
                                    require s
                                    s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) / s) + s / 2
                                    t = s
                                    continue 
                            require (2 * sub_b17decdf) - 10^12 <= t
                            if not t + -(2 * sub_b17decdf) + 10^12:
                                require stor17 > 0
                                require stor17
                                require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                                sub_b17decdf += 0 / stor17
                                require msg.sender
                                require totalSupply >= totalSupply
                                require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                                emit Transfer(0, 0, msg.sender);
                                if stor16:
                                    require stor16
                                    require not 0 / stor16
                                require stor17 > 0
                                require stor17
                                stor19[address(msg.sender)] += 0 / stor17
                                emit 0xff885306: msg.value - (msg.value * stor7 / stor8), 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                            else:
                                require t + -(2 * sub_b17decdf) + 10^12
                                require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                                require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                require stor17 > 0
                                require stor17
                                require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                                sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                                require msg.sender
                                require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                                totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                                sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                                if not stor16:
                                    require stor17 > 0
                                    require stor17
                                    stor19[address(msg.sender)] += 0 / stor17
                                else:
                                    require stor16
                                    require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                    require stor17 > 0
                                    require stor17
                                    stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                                emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                    else:
                        require sub_b17decdf
                        require sub_b17decdf
                        require 2 * sub_b17decdf / sub_b17decdf == 2
                        require 10^12 <= 2 * sub_b17decdf
                        if not msg.value - (msg.value * stor7 / stor8):
                            require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                            s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                            t = ((2 * sub_b17decdf) - 10^12)^2
                            while s < t:
                                require s
                                s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                                t = s
                                continue 
                        else:
                            require msg.value - (msg.value * stor7 / stor8)
                            require 2 * msg.value - (msg.value * stor7 / stor8) / msg.value - (msg.value * stor7 / stor8) == 2
                            require 4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8) / 4 * 10^12 == 2 * msg.value - (msg.value * stor7 / stor8)
                            require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) >= ((2 * sub_b17decdf) - 10^12)^2
                            s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) + 1 / 2
                            t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8))
                            while s < t:
                                require s
                                s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) / s) + s / 2
                                t = s
                                continue 
                        require (2 * sub_b17decdf) - 10^12 <= t
                        if not t + -(2 * sub_b17decdf) + 10^12:
                            require stor17 > 0
                            require stor17
                            require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                            sub_b17decdf += 0 / stor17
                            revert
                        require t + -(2 * sub_b17decdf) + 10^12
                        require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                        require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require stor17 > 0
                        require stor17
                        require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                        sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                        if not msg.value * stor7 / stor8:
                            require totalSupply > 0
                            require totalSupply
                            require stor16 + (0 / totalSupply) >= stor16
                            stor16 += 0 / totalSupply
                        else:
                            require msg.value * stor7 / stor8
                            require msg.value * stor7 / stor8 * stor17 / msg.value * stor7 / stor8 == stor17
                            require totalSupply > 0
                            require totalSupply
                            require stor16 + (msg.value * stor7 / stor8 * stor17 / totalSupply) >= stor16
                            stor16 += msg.value * stor7 / stor8 * stor17 / totalSupply
                        require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                        require msg.sender
                        require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                        totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                        sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                        emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                        if not stor16:
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += 0 / stor17
                        else:
                            require stor16
                            require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                        emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                else:
                    if not msg.value * stor7 / stor8:
                        require 0 <= msg.value * stor7 / stor8
                        require stor20[stor21[address(msg.sender)]] >= stor20[stor21[address(msg.sender)]]
                        if totalSupply <= 0:
                            if owner != msg.sender:
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require sub_b17decdf
                                require sub_b17decdf
                                require 2 * sub_b17decdf / sub_b17decdf == 2
                                require 10^12 <= 2 * sub_b17decdf
                                if not msg.value:
                                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                                    t = ((2 * sub_b17decdf) - 10^12)^2
                                    while s < t:
                                        require s
                                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                                        t = s
                                        continue 
                                else:
                                    require msg.value
                                    require 2 * msg.value / msg.value == 2
                                    require 4 * 10^12 * 2 * msg.value / 4 * 10^12 == 2 * msg.value
                                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) >= ((2 * sub_b17decdf) - 10^12)^2
                                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) + 1 / 2
                                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value)
                                    while s < t:
                                        require s
                                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) / s) + s / 2
                                        t = s
                                        continue 
                                require (2 * sub_b17decdf) - 10^12 <= t
                                if not t + -(2 * sub_b17decdf) + 10^12:
                                    require stor17 > 0
                                    require stor17
                                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                                    sub_b17decdf += 0 / stor17
                                    require msg.sender
                                    require totalSupply >= totalSupply
                                    require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                                    emit Transfer(0, 0, msg.sender);
                                    if stor16:
                                        require stor16
                                        require not 0 / stor16
                                    require stor17 > 0
                                    require stor17
                                    stor19[address(msg.sender)] += 0 / stor17
                                    emit 0xff885306: msg.value - (msg.value * stor7 / stor8), 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                                else:
                                    require t + -(2 * sub_b17decdf) + 10^12
                                    require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                                    require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                    require stor17 > 0
                                    require stor17
                                    require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                                    sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                                    require msg.sender
                                    require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                                    totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                    require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                                    sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                    emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                                    if not stor16:
                                        require stor17 > 0
                                        require stor17
                                        stor19[address(msg.sender)] += 0 / stor17
                                    else:
                                        require stor16
                                        require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                        require stor17 > 0
                                        require stor17
                                        stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                                    emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                        else:
                            require sub_b17decdf
                            require sub_b17decdf
                            require 2 * sub_b17decdf / sub_b17decdf == 2
                            require 10^12 <= 2 * sub_b17decdf
                            if not msg.value - (msg.value * stor7 / stor8):
                                require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                                s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                                t = ((2 * sub_b17decdf) - 10^12)^2
                                while s < t:
                                    require s
                                    s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                                    t = s
                                    continue 
                            else:
                                require msg.value - (msg.value * stor7 / stor8)
                                require 2 * msg.value - (msg.value * stor7 / stor8) / msg.value - (msg.value * stor7 / stor8) == 2
                                require 4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8) / 4 * 10^12 == 2 * msg.value - (msg.value * stor7 / stor8)
                                require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) >= ((2 * sub_b17decdf) - 10^12)^2
                                s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) + 1 / 2
                                t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8))
                                while s < t:
                                    require s
                                    s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) / s) + s / 2
                                    t = s
                                    continue 
                            require (2 * sub_b17decdf) - 10^12 <= t
                            if not t + -(2 * sub_b17decdf) + 10^12:
                                require stor17 > 0
                                require stor17
                                require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                                sub_b17decdf += 0 / stor17
                                revert
                            require t + -(2 * sub_b17decdf) + 10^12
                            require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                            require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                            sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                            require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                            if not msg.value * stor7 / stor8:
                                require totalSupply > 0
                                require totalSupply
                                require stor16 + (0 / totalSupply) >= stor16
                                stor16 += 0 / totalSupply
                            else:
                                require msg.value * stor7 / stor8
                                require msg.value * stor7 / stor8 * stor17 / msg.value * stor7 / stor8 == stor17
                                require totalSupply > 0
                                require totalSupply
                                require stor16 + (msg.value * stor7 / stor8 * stor17 / totalSupply) >= stor16
                                stor16 += msg.value * stor7 / stor8 * stor17 / totalSupply
                            require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                            require msg.sender
                            require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                            totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                            sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                            if not stor16:
                                require stor17 > 0
                                require stor17
                                stor19[address(msg.sender)] += 0 / stor17
                            else:
                                require stor16
                                require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                require stor17 > 0
                                require stor17
                                stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                            emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                    else:
                        require stor12
                        require msg.value * stor7 / stor8 * stor11 / stor12 <= msg.value * stor7 / stor8
                        require stor20[stor21[address(msg.sender)]] + (msg.value * stor7 / stor8 * stor11 / stor12) >= stor20[stor21[address(msg.sender)]]
                        stor20[stor21[address(msg.sender)]] += msg.value * stor7 / stor8 * stor11 / stor12
                        if totalSupply <= 0:
                            if owner != msg.sender:
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                require sub_b17decdf
                                require sub_b17decdf
                                require 2 * sub_b17decdf / sub_b17decdf == 2
                                require 10^12 <= 2 * sub_b17decdf
                                if not msg.value:
                                    require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                                    s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                                    t = ((2 * sub_b17decdf) - 10^12)^2
                                    while s < t:
                                        require s
                                        s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                                        t = s
                                        continue 
                                else:
                                    require msg.value
                                    require 2 * msg.value / msg.value == 2
                                    require 4 * 10^12 * 2 * msg.value / 4 * 10^12 == 2 * msg.value
                                    require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) >= ((2 * sub_b17decdf) - 10^12)^2
                                    s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) + 1 / 2
                                    t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value)
                                    while s < t:
                                        require s
                                        s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value) / s) + s / 2
                                        t = s
                                        continue 
                                require (2 * sub_b17decdf) - 10^12 <= t
                                if not t + -(2 * sub_b17decdf) + 10^12:
                                    require stor17 > 0
                                    require stor17
                                    require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                                    sub_b17decdf += 0 / stor17
                                    require msg.sender
                                    require totalSupply >= totalSupply
                                    require sub_0680fa03[address(msg.sender)] >= sub_0680fa03[address(msg.sender)]
                                    emit Transfer(0, 0, msg.sender);
                                    if stor16:
                                        require stor16
                                        require not 0 / stor16
                                    require stor17 > 0
                                    require stor17
                                    stor19[address(msg.sender)] += 0 / stor17
                                    emit 0xff885306: msg.value - (msg.value * stor7 / stor8), 0, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                                else:
                                    require t + -(2 * sub_b17decdf) + 10^12
                                    require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                                    require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                    require stor17 > 0
                                    require stor17
                                    require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                                    sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                                    require msg.sender
                                    require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                                    totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                    require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                                    sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                    emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                                    if not stor16:
                                        require stor17 > 0
                                        require stor17
                                        stor19[address(msg.sender)] += 0 / stor17
                                    else:
                                        require stor16
                                        require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                        require stor17 > 0
                                        require stor17
                                        stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                                    emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
                        else:
                            require sub_b17decdf
                            require sub_b17decdf
                            require 2 * sub_b17decdf / sub_b17decdf == 2
                            require 10^12 <= 2 * sub_b17decdf
                            if not msg.value - (msg.value * stor7 / stor8):
                                require ((2 * sub_b17decdf) - 10^12)^2 >= ((2 * sub_b17decdf) - 10^12)^2
                                s = ((2 * sub_b17decdf) - 10^12)^2 + 1 / 2
                                t = ((2 * sub_b17decdf) - 10^12)^2
                                while s < t:
                                    require s
                                    s = (((2 * sub_b17decdf) - 10^12)^2 / s) + s / 2
                                    t = s
                                    continue 
                            else:
                                require msg.value - (msg.value * stor7 / stor8)
                                require 2 * msg.value - (msg.value * stor7 / stor8) / msg.value - (msg.value * stor7 / stor8) == 2
                                require 4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8) / 4 * 10^12 == 2 * msg.value - (msg.value * stor7 / stor8)
                                require ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) >= ((2 * sub_b17decdf) - 10^12)^2
                                s = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) + 1 / 2
                                t = ((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8))
                                while s < t:
                                    require s
                                    s = (((2 * sub_b17decdf) - 10^12)^2 + (4 * 10^12 * 2 * msg.value - (msg.value * stor7 / stor8)) / s) + s / 2
                                    t = s
                                    continue 
                            require (2 * sub_b17decdf) - 10^12 <= t
                            if not t + -(2 * sub_b17decdf) + 10^12:
                                require stor17 > 0
                                require stor17
                                require sub_b17decdf + (0 / stor17) >= sub_b17decdf
                                sub_b17decdf += 0 / stor17
                                revert
                            require t + -(2 * sub_b17decdf) + 10^12
                            require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / t + -(2 * sub_b17decdf) + 10^12 == stor17
                            require 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / 10^12 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require stor17 > 0
                            require stor17
                            require sub_b17decdf + (10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17) >= sub_b17decdf
                            sub_b17decdf += 10^12 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                            require (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 > 0
                            if not (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor11 / stor12):
                                require totalSupply > 0
                                require totalSupply
                                require stor16 + (0 / totalSupply) >= stor16
                                stor16 += 0 / totalSupply
                            else:
                                require (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor11 / stor12)
                                require (msg.value * stor7 / stor8 * stor17) - (msg.value * stor7 / stor8 * stor11 / stor12 * stor17) / (msg.value * stor7 / stor8) - (msg.value * stor7 / stor8 * stor11 / stor12) == stor17
                                require totalSupply > 0
                                require totalSupply
                                require stor16 + ((msg.value * stor7 / stor8 * stor17) - (msg.value * stor7 / stor8 * stor11 / stor12 * stor17) / totalSupply) >= stor16
                                stor16 += (msg.value * stor7 / stor8 * stor17) - (msg.value * stor7 / stor8 * stor11 / stor12 * stor17) / totalSupply
                            require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                            require msg.sender
                            require totalSupply + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= totalSupply
                            totalSupply += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            require sub_0680fa03[address(msg.sender)] + ((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12) >= sub_0680fa03[address(msg.sender)]
                            sub_0680fa03[address(msg.sender)] += (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                            emit Transfer(((10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12), 0, msg.sender);
                            if not stor16:
                                require stor17 > 0
                                require stor17
                                stor19[address(msg.sender)] += 0 / stor17
                            else:
                                require stor16
                                require stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor16 == (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12
                                require stor17 > 0
                                require stor17
                                stor19[address(msg.sender)] += stor16 * (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12 / stor17
                            emit 0xff885306: msg.value - (msg.value * stor7 / stor8), (10^12 * stor17) + (t * stor17) - (2 * sub_b17decdf * stor17) / 2 * 10^12, block.timestamp, sub_b17decdf, sub_b17decdf, msg.sender, stor21[address(msg.sender)]
}



}
