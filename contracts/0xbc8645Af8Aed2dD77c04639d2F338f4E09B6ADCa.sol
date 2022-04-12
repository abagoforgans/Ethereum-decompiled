contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
address stor9;

function _fallback() {
    stor3 = msg.sender
    stor6 = code.data[4713 len 32]
    stor7 = code.data[4745 len 32]
    stor5 = code.data[4777 len 32]
    stor9 = code.data[4853 len 20]
    stor8 = code.data[4809 len 32]
    return code.data[164 len 4549]
}



// =====================  Runtime code  =====================


const name = 'HUNT'

const decimals = 18

const symbol = 'HT'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address newOwner;
uint256 capTokens;
uint256 startDate;
uint256 endDate;
uint8 stor8;
uint256 stor8; offset 8
uint256 curs;
address stor9;
uint256 totalTokens;
uint256 totalEthers;
mapping of uint256 stor12;

function totalEthers() {
    return totalEthers
}

function startDate() {
    return startDate
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalTokens() {
    return totalTokens
}

function owner() {
    return owner
}

function capTokens() {
    return capTokens
}

function curs() {
    return curs
}

function endDate() {
    return endDate
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    newOwner = arg1
}

function acceptOwnership() {
    if newOwner == msg.sender:
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner
}

function setCurs(uint8 arg1) {
    require owner == msg.sender
    require arg1 > 0
    uint8(stor8.field_0) = arg1
    Mask(248, 0, stor8.field_8) = 0
}

function approve(address arg1, uint256 arg2) {
    require 68 == calldata.size
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function collect() {
    require owner == msg.sender
    call stor9 with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
        args 0
    require ext_call.success
    emit Collect(eth.balance(this.address), stor9);
}

function burn(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp > endDate + (168 * 24 * 3600)
    require arg1 > 0
    require balanceOf[stor3] - arg1 <= balanceOf[stor3]
    balanceOf[stor3] -= arg1
    require totalSupply - arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, owner, 0);
}

function mint(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp > endDate + (168 * 24 * 3600)
    require arg1 > 0
    require balanceOf[stor3] + arg1 >= balanceOf[stor3]
    balanceOf[stor3] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
    emit Transfer(arg1, 0, owner);
}

function buyPriceAt(uint256 arg1) {
    if arg1 < startDate:
        return 0
    if arg1 < startDate + (48 * 24 * 3600):
        return (curs / 100)
    if arg1 < startDate + (120 * 24 * 3600):
        return (curs / 120)
    if arg1 < startDate + (240 * 24 * 3600):
        return (curs / 130)
    if arg1 < startDate + (360 * 24 * 3600):
        return (curs / 140)
    if arg1 > endDate:
        return 0
    return (curs / 150)
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp > endDate + (168 * 24 * 3600)
    require 68 == calldata.size
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function buyPrice() {
    if block.timestamp < startDate:
        return 0
    if block.timestamp < startDate + (48 * 24 * 3600):
        return (curs / 100)
    if block.timestamp < startDate + (120 * 24 * 3600):
        return (curs / 120)
    if block.timestamp < startDate + (240 * 24 * 3600):
        return (curs / 130)
    if block.timestamp < startDate + (360 * 24 * 3600):
        return (curs / 140)
    if block.timestamp > endDate:
        return 0
    return (curs / 150)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp > endDate + (168 * 24 * 3600)
    require 100 == calldata.size
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg1)] - arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[arg2] + arg3 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTokens(address arg1) payable {
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require msg.value > 0
    require totalEthers + msg.value >= totalEthers
    totalEthers += msg.value
    require block.timestamp >= startDate
    if block.timestamp < startDate + (48 * 24 * 3600):
        require curs / 100 * msg.value > 0
        require totalTokens + (curs / 100 * msg.value) >= totalTokens
        if block.timestamp < startDate + (360 * 24 * 3600):
            totalTokens += curs / 100 * msg.value
            require totalTokens + (curs / 100 * msg.value) <= capTokens
            require totalSupply + (curs / 100 * msg.value) >= totalSupply
            totalSupply += curs / 100 * msg.value
            require 19 * curs / 100 * msg.value / 50 >= 0
            totalSupply = totalSupply + (curs / 100 * msg.value) + (19 * curs / 100 * msg.value / 50)
            require balanceOf[address(arg1)] + (curs / 100 * msg.value) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += curs / 100 * msg.value
            require balanceOf[stor3] + (19 * curs / 100 * msg.value / 50) >= balanceOf[stor3]
            balanceOf[stor3] += 19 * curs / 100 * msg.value / 50
            if block.timestamp < startDate + (48 * 24 * 3600):
                require stor12[address(arg1)] + (curs / 100 * msg.value / 2) >= stor12[address(arg1)]
                stor12[address(arg1)] += curs / 100 * msg.value / 2
            emit BoughtTokens(msg.value, totalEthers, curs / 100 * msg.value, curs / 100, arg1);
            emit Transfer((curs / 100 * msg.value), 0, arg1);
            emit Transfer((19 * curs / 100 * msg.value / 50), 0, owner);
        else:
            if block.timestamp > endDate:
                totalTokens += curs / 100 * msg.value
                require totalTokens + (curs / 100 * msg.value) <= capTokens
                require totalSupply + (curs / 100 * msg.value) >= totalSupply
                totalSupply += curs / 100 * msg.value
                require 19 * curs / 100 * msg.value / 50 >= 0
                totalSupply = totalSupply + (curs / 100 * msg.value) + (19 * curs / 100 * msg.value / 50)
                require balanceOf[address(arg1)] + (curs / 100 * msg.value) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += curs / 100 * msg.value
                require balanceOf[stor3] + (19 * curs / 100 * msg.value / 50) >= balanceOf[stor3]
                balanceOf[stor3] += 19 * curs / 100 * msg.value / 50
                if block.timestamp < startDate + (48 * 24 * 3600):
                    require stor12[address(arg1)] + (curs / 100 * msg.value / 2) >= stor12[address(arg1)]
                    stor12[address(arg1)] += curs / 100 * msg.value / 2
                emit BoughtTokens(msg.value, totalEthers, curs / 100 * msg.value, curs / 100, arg1);
                emit Transfer((curs / 100 * msg.value), 0, arg1);
                emit Transfer((19 * curs / 100 * msg.value / 50), 0, owner);
            else:
                require capTokens - totalTokens - (curs / 100 * msg.value) <= capTokens
                if capTokens - totalTokens - (curs / 100 * msg.value) > 0:
                    if curs / 100 * msg.value <= capTokens - totalTokens - (curs / 100 * msg.value):
                        if stor12[address(arg1)] <= curs / 100 * msg.value:
                            require stor12[address(arg1)] >= 0
                            require (curs / 100 * msg.value) + stor12[address(arg1)] >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)] >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)] <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)] >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require 19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)] + (19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50)
                            require balanceOf[address(arg1)] + (curs / 100 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + ((curs / 100 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs / 100 * msg.value) + stor12[address(arg1)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + stor12[address(arg1)], curs / 100, arg1);
                            emit Transfer(((curs / 100 * msg.value) + stor12[address(arg1)]), 0, arg1);
                            emit Transfer((19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                        else:
                            require curs / 100 * msg.value >= 0
                            require (curs / 100 * msg.value) + (curs / 100 * msg.value) >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value) <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require 19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value) + (19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50)
                            require balanceOf[address(arg1)] + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + ((curs / 100 * msg.value) + (curs / 100 * msg.value) / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs / 100 * msg.value) + (curs / 100 * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + (curs / 100 * msg.value), curs / 100, arg1);
                            emit Transfer(((curs / 100 * msg.value) + (curs / 100 * msg.value)), 0, arg1);
                            emit Transfer((19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50), 0, owner);
                    else:
                        if stor12[address(arg1)] <= capTokens - totalTokens - (curs / 100 * msg.value):
                            require stor12[address(arg1)] >= 0
                            require (curs / 100 * msg.value) + stor12[address(arg1)] >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)] >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)] <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)] >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require 19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)] + (19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50)
                            require balanceOf[address(arg1)] + (curs / 100 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + ((curs / 100 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs / 100 * msg.value) + stor12[address(arg1)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + stor12[address(arg1)], curs / 100, arg1);
                            emit Transfer(((curs / 100 * msg.value) + stor12[address(arg1)]), 0, arg1);
                            emit Transfer((19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (curs / 100 * msg.value) >= 0
                            require (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) >= curs / 100 * msg.value
                            require (curs / 100 * msg.value) + capTokens - (curs / 100 * msg.value) >= totalTokens
                            totalTokens = (curs / 100 * msg.value) + capTokens - (curs / 100 * msg.value)
                            require (curs / 100 * msg.value) + capTokens - (curs / 100 * msg.value) <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value)
                            require 19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) + (19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50)
                            require balanceOf[address(arg1)] + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value)
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + ((curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value), curs / 100, arg1);
                            emit Transfer(((curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value)), 0, arg1);
                            emit Transfer((19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50), 0, owner);
                else:
                    if curs / 100 * msg.value <= 0:
                        if stor12[address(arg1)] <= curs / 100 * msg.value:
                            require stor12[address(arg1)] >= 0
                            require (curs / 100 * msg.value) + stor12[address(arg1)] >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)] >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)] <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)] >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require 19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)] + (19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50)
                            require balanceOf[address(arg1)] + (curs / 100 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + ((curs / 100 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs / 100 * msg.value) + stor12[address(arg1)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + stor12[address(arg1)], curs / 100, arg1);
                            emit Transfer(((curs / 100 * msg.value) + stor12[address(arg1)]), 0, arg1);
                            emit Transfer((19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                        else:
                            require curs / 100 * msg.value >= 0
                            require (curs / 100 * msg.value) + (curs / 100 * msg.value) >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value) <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require 19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value) + (19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50)
                            require balanceOf[address(arg1)] + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + ((curs / 100 * msg.value) + (curs / 100 * msg.value) / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs / 100 * msg.value) + (curs / 100 * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + (curs / 100 * msg.value), curs / 100, arg1);
                            emit Transfer(((curs / 100 * msg.value) + (curs / 100 * msg.value)), 0, arg1);
                            emit Transfer((19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50), 0, owner);
                    else:
                        if stor12[address(arg1)] > 0:
                            require curs / 100 * msg.value >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) >= totalTokens
                            totalTokens += curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) <= capTokens
                            require totalSupply + (curs / 100 * msg.value) >= totalSupply
                            totalSupply += curs / 100 * msg.value
                            require 19 * curs / 100 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (19 * curs / 100 * msg.value / 50)
                            require balanceOf[address(arg1)] + (curs / 100 * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += curs / 100 * msg.value
                            require balanceOf[stor3] + (19 * curs / 100 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * curs / 100 * msg.value / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + (curs / 100 * msg.value / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += curs / 100 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, curs / 100 * msg.value, curs / 100, arg1);
                            emit Transfer((curs / 100 * msg.value), 0, arg1);
                            emit Transfer((19 * curs / 100 * msg.value / 50), 0, owner);
                        else:
                            require stor12[address(arg1)] >= 0
                            require (curs / 100 * msg.value) + stor12[address(arg1)] >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)] >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(arg1)] <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)] >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require 19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(arg1)] + (19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50)
                            require balanceOf[address(arg1)] + (curs / 100 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 100 * msg.value) + stor12[address(arg1)]
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + ((curs / 100 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs / 100 * msg.value) + stor12[address(arg1)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + stor12[address(arg1)], curs / 100, arg1);
                            emit Transfer(((curs / 100 * msg.value) + stor12[address(arg1)]), 0, arg1);
                            emit Transfer((19 * (curs / 100 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
    else:
        if block.timestamp < startDate + (120 * 24 * 3600):
            require curs / 120 * msg.value > 0
            require totalTokens + (curs / 120 * msg.value) >= totalTokens
            if block.timestamp < startDate + (360 * 24 * 3600):
                totalTokens += curs / 120 * msg.value
                require totalTokens + (curs / 120 * msg.value) <= capTokens
                require totalSupply + (curs / 120 * msg.value) >= totalSupply
                totalSupply += curs / 120 * msg.value
                require 19 * curs / 120 * msg.value / 50 >= 0
                totalSupply = totalSupply + (curs / 120 * msg.value) + (19 * curs / 120 * msg.value / 50)
                require balanceOf[address(arg1)] + (curs / 120 * msg.value) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += curs / 120 * msg.value
                require balanceOf[stor3] + (19 * curs / 120 * msg.value / 50) >= balanceOf[stor3]
                balanceOf[stor3] += 19 * curs / 120 * msg.value / 50
                if block.timestamp < startDate + (48 * 24 * 3600):
                    require stor12[address(arg1)] + (curs / 120 * msg.value / 2) >= stor12[address(arg1)]
                    stor12[address(arg1)] += curs / 120 * msg.value / 2
                emit BoughtTokens(msg.value, totalEthers, curs / 120 * msg.value, curs / 120, arg1);
                emit Transfer((curs / 120 * msg.value), 0, arg1);
                emit Transfer((19 * curs / 120 * msg.value / 50), 0, owner);
            else:
                if block.timestamp > endDate:
                    totalTokens += curs / 120 * msg.value
                    require totalTokens + (curs / 120 * msg.value) <= capTokens
                    require totalSupply + (curs / 120 * msg.value) >= totalSupply
                    totalSupply += curs / 120 * msg.value
                    require 19 * curs / 120 * msg.value / 50 >= 0
                    totalSupply = totalSupply + (curs / 120 * msg.value) + (19 * curs / 120 * msg.value / 50)
                    require balanceOf[address(arg1)] + (curs / 120 * msg.value) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += curs / 120 * msg.value
                    require balanceOf[stor3] + (19 * curs / 120 * msg.value / 50) >= balanceOf[stor3]
                    balanceOf[stor3] += 19 * curs / 120 * msg.value / 50
                    if block.timestamp < startDate + (48 * 24 * 3600):
                        require stor12[address(arg1)] + (curs / 120 * msg.value / 2) >= stor12[address(arg1)]
                        stor12[address(arg1)] += curs / 120 * msg.value / 2
                    emit BoughtTokens(msg.value, totalEthers, curs / 120 * msg.value, curs / 120, arg1);
                    emit Transfer((curs / 120 * msg.value), 0, arg1);
                    emit Transfer((19 * curs / 120 * msg.value / 50), 0, owner);
                else:
                    require capTokens - totalTokens - (curs / 120 * msg.value) <= capTokens
                    if capTokens - totalTokens - (curs / 120 * msg.value) > 0:
                        if curs / 120 * msg.value <= capTokens - totalTokens - (curs / 120 * msg.value):
                            if stor12[address(arg1)] <= curs / 120 * msg.value:
                                require stor12[address(arg1)] >= 0
                                require (curs / 120 * msg.value) + stor12[address(arg1)] >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)] >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)] <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)] >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require 19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)] + (19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50)
                                require balanceOf[address(arg1)] + (curs / 120 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(arg1)] + ((curs / 120 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (curs / 120 * msg.value) + stor12[address(arg1)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + stor12[address(arg1)], curs / 120, arg1);
                                emit Transfer(((curs / 120 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                emit Transfer((19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                            else:
                                require curs / 120 * msg.value >= 0
                                require (curs / 120 * msg.value) + (curs / 120 * msg.value) >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value) <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require 19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value) + (19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50)
                                require balanceOf[address(arg1)] + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(arg1)] + ((curs / 120 * msg.value) + (curs / 120 * msg.value) / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (curs / 120 * msg.value) + (curs / 120 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + (curs / 120 * msg.value), curs / 120, arg1);
                                emit Transfer(((curs / 120 * msg.value) + (curs / 120 * msg.value)), 0, arg1);
                                emit Transfer((19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50), 0, owner);
                        else:
                            if stor12[address(arg1)] <= capTokens - totalTokens - (curs / 120 * msg.value):
                                require stor12[address(arg1)] >= 0
                                require (curs / 120 * msg.value) + stor12[address(arg1)] >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)] >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)] <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)] >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require 19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)] + (19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50)
                                require balanceOf[address(arg1)] + (curs / 120 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(arg1)] + ((curs / 120 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (curs / 120 * msg.value) + stor12[address(arg1)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + stor12[address(arg1)], curs / 120, arg1);
                                emit Transfer(((curs / 120 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                emit Transfer((19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                            else:
                                require capTokens - totalTokens - (curs / 120 * msg.value) >= 0
                                require (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) >= curs / 120 * msg.value
                                require (curs / 120 * msg.value) + capTokens - (curs / 120 * msg.value) >= totalTokens
                                totalTokens = (curs / 120 * msg.value) + capTokens - (curs / 120 * msg.value)
                                require (curs / 120 * msg.value) + capTokens - (curs / 120 * msg.value) <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value)
                                require 19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) + (19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50)
                                require balanceOf[address(arg1)] + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value)
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(arg1)] + ((curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value), curs / 120, arg1);
                                emit Transfer(((curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value)), 0, arg1);
                                emit Transfer((19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50), 0, owner);
                    else:
                        if curs / 120 * msg.value <= 0:
                            if stor12[address(arg1)] <= curs / 120 * msg.value:
                                require stor12[address(arg1)] >= 0
                                require (curs / 120 * msg.value) + stor12[address(arg1)] >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)] >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)] <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)] >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require 19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)] + (19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50)
                                require balanceOf[address(arg1)] + (curs / 120 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(arg1)] + ((curs / 120 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (curs / 120 * msg.value) + stor12[address(arg1)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + stor12[address(arg1)], curs / 120, arg1);
                                emit Transfer(((curs / 120 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                emit Transfer((19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                            else:
                                require curs / 120 * msg.value >= 0
                                require (curs / 120 * msg.value) + (curs / 120 * msg.value) >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value) <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require 19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value) + (19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50)
                                require balanceOf[address(arg1)] + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(arg1)] + ((curs / 120 * msg.value) + (curs / 120 * msg.value) / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (curs / 120 * msg.value) + (curs / 120 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + (curs / 120 * msg.value), curs / 120, arg1);
                                emit Transfer(((curs / 120 * msg.value) + (curs / 120 * msg.value)), 0, arg1);
                                emit Transfer((19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50), 0, owner);
                        else:
                            if stor12[address(arg1)] > 0:
                                require curs / 120 * msg.value >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) >= totalTokens
                                totalTokens += curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) <= capTokens
                                require totalSupply + (curs / 120 * msg.value) >= totalSupply
                                totalSupply += curs / 120 * msg.value
                                require 19 * curs / 120 * msg.value / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (19 * curs / 120 * msg.value / 50)
                                require balanceOf[address(arg1)] + (curs / 120 * msg.value) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += curs / 120 * msg.value
                                require balanceOf[stor3] + (19 * curs / 120 * msg.value / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * curs / 120 * msg.value / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(arg1)] + (curs / 120 * msg.value / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += curs / 120 * msg.value / 2
                                emit BoughtTokens(msg.value, totalEthers, curs / 120 * msg.value, curs / 120, arg1);
                                emit Transfer((curs / 120 * msg.value), 0, arg1);
                                emit Transfer((19 * curs / 120 * msg.value / 50), 0, owner);
                            else:
                                require stor12[address(arg1)] >= 0
                                require (curs / 120 * msg.value) + stor12[address(arg1)] >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)] >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(arg1)] <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)] >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require 19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(arg1)] + (19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50)
                                require balanceOf[address(arg1)] + (curs / 120 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 120 * msg.value) + stor12[address(arg1)]
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(arg1)] + ((curs / 120 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (curs / 120 * msg.value) + stor12[address(arg1)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + stor12[address(arg1)], curs / 120, arg1);
                                emit Transfer(((curs / 120 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                emit Transfer((19 * (curs / 120 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
        else:
            if block.timestamp < startDate + (240 * 24 * 3600):
                require curs / 130 * msg.value > 0
                require totalTokens + (curs / 130 * msg.value) >= totalTokens
                if block.timestamp < startDate + (360 * 24 * 3600):
                    totalTokens += curs / 130 * msg.value
                    require totalTokens + (curs / 130 * msg.value) <= capTokens
                    require totalSupply + (curs / 130 * msg.value) >= totalSupply
                    totalSupply += curs / 130 * msg.value
                    require 19 * curs / 130 * msg.value / 50 >= 0
                    totalSupply = totalSupply + (curs / 130 * msg.value) + (19 * curs / 130 * msg.value / 50)
                    require balanceOf[address(arg1)] + (curs / 130 * msg.value) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += curs / 130 * msg.value
                    require balanceOf[stor3] + (19 * curs / 130 * msg.value / 50) >= balanceOf[stor3]
                    balanceOf[stor3] += 19 * curs / 130 * msg.value / 50
                    if block.timestamp < startDate + (48 * 24 * 3600):
                        require stor12[address(arg1)] + (curs / 130 * msg.value / 2) >= stor12[address(arg1)]
                        stor12[address(arg1)] += curs / 130 * msg.value / 2
                    emit BoughtTokens(msg.value, totalEthers, curs / 130 * msg.value, curs / 130, arg1);
                    emit Transfer((curs / 130 * msg.value), 0, arg1);
                    emit Transfer((19 * curs / 130 * msg.value / 50), 0, owner);
                else:
                    if block.timestamp > endDate:
                        totalTokens += curs / 130 * msg.value
                        require totalTokens + (curs / 130 * msg.value) <= capTokens
                        require totalSupply + (curs / 130 * msg.value) >= totalSupply
                        totalSupply += curs / 130 * msg.value
                        require 19 * curs / 130 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (curs / 130 * msg.value) + (19 * curs / 130 * msg.value / 50)
                        require balanceOf[address(arg1)] + (curs / 130 * msg.value) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += curs / 130 * msg.value
                        require balanceOf[stor3] + (19 * curs / 130 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * curs / 130 * msg.value / 50
                        if block.timestamp < startDate + (48 * 24 * 3600):
                            require stor12[address(arg1)] + (curs / 130 * msg.value / 2) >= stor12[address(arg1)]
                            stor12[address(arg1)] += curs / 130 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, curs / 130 * msg.value, curs / 130, arg1);
                        emit Transfer((curs / 130 * msg.value), 0, arg1);
                        emit Transfer((19 * curs / 130 * msg.value / 50), 0, owner);
                    else:
                        require capTokens - totalTokens - (curs / 130 * msg.value) <= capTokens
                        if capTokens - totalTokens - (curs / 130 * msg.value) > 0:
                            if curs / 130 * msg.value <= capTokens - totalTokens - (curs / 130 * msg.value):
                                if stor12[address(arg1)] <= curs / 130 * msg.value:
                                    require stor12[address(arg1)] >= 0
                                    require (curs / 130 * msg.value) + stor12[address(arg1)] >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)] >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)] <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)] >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require 19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)] + (19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50)
                                    require balanceOf[address(arg1)] + (curs / 130 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(arg1)] + ((curs / 130 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (curs / 130 * msg.value) + stor12[address(arg1)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + stor12[address(arg1)], curs / 130, arg1);
                                    emit Transfer(((curs / 130 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                    emit Transfer((19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                else:
                                    require curs / 130 * msg.value >= 0
                                    require (curs / 130 * msg.value) + (curs / 130 * msg.value) >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value) <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require 19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value) + (19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50)
                                    require balanceOf[address(arg1)] + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(arg1)] + ((curs / 130 * msg.value) + (curs / 130 * msg.value) / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (curs / 130 * msg.value) + (curs / 130 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + (curs / 130 * msg.value), curs / 130, arg1);
                                    emit Transfer(((curs / 130 * msg.value) + (curs / 130 * msg.value)), 0, arg1);
                                    emit Transfer((19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50), 0, owner);
                            else:
                                if stor12[address(arg1)] <= capTokens - totalTokens - (curs / 130 * msg.value):
                                    require stor12[address(arg1)] >= 0
                                    require (curs / 130 * msg.value) + stor12[address(arg1)] >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)] >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)] <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)] >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require 19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)] + (19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50)
                                    require balanceOf[address(arg1)] + (curs / 130 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(arg1)] + ((curs / 130 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (curs / 130 * msg.value) + stor12[address(arg1)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + stor12[address(arg1)], curs / 130, arg1);
                                    emit Transfer(((curs / 130 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                    emit Transfer((19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                else:
                                    require capTokens - totalTokens - (curs / 130 * msg.value) >= 0
                                    require (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) >= curs / 130 * msg.value
                                    require (curs / 130 * msg.value) + capTokens - (curs / 130 * msg.value) >= totalTokens
                                    totalTokens = (curs / 130 * msg.value) + capTokens - (curs / 130 * msg.value)
                                    require (curs / 130 * msg.value) + capTokens - (curs / 130 * msg.value) <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value)
                                    require 19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) + (19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50)
                                    require balanceOf[address(arg1)] + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value)
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(arg1)] + ((curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value), curs / 130, arg1);
                                    emit Transfer(((curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value)), 0, arg1);
                                    emit Transfer((19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50), 0, owner);
                        else:
                            if curs / 130 * msg.value <= 0:
                                if stor12[address(arg1)] <= curs / 130 * msg.value:
                                    require stor12[address(arg1)] >= 0
                                    require (curs / 130 * msg.value) + stor12[address(arg1)] >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)] >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)] <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)] >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require 19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)] + (19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50)
                                    require balanceOf[address(arg1)] + (curs / 130 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(arg1)] + ((curs / 130 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (curs / 130 * msg.value) + stor12[address(arg1)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + stor12[address(arg1)], curs / 130, arg1);
                                    emit Transfer(((curs / 130 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                    emit Transfer((19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                else:
                                    require curs / 130 * msg.value >= 0
                                    require (curs / 130 * msg.value) + (curs / 130 * msg.value) >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value) <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require 19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value) + (19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50)
                                    require balanceOf[address(arg1)] + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(arg1)] + ((curs / 130 * msg.value) + (curs / 130 * msg.value) / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (curs / 130 * msg.value) + (curs / 130 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + (curs / 130 * msg.value), curs / 130, arg1);
                                    emit Transfer(((curs / 130 * msg.value) + (curs / 130 * msg.value)), 0, arg1);
                                    emit Transfer((19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50), 0, owner);
                            else:
                                if stor12[address(arg1)] > 0:
                                    require curs / 130 * msg.value >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) >= totalTokens
                                    totalTokens += curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) >= totalSupply
                                    totalSupply += curs / 130 * msg.value
                                    require 19 * curs / 130 * msg.value / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (19 * curs / 130 * msg.value / 50)
                                    require balanceOf[address(arg1)] + (curs / 130 * msg.value) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += curs / 130 * msg.value
                                    require balanceOf[stor3] + (19 * curs / 130 * msg.value / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * curs / 130 * msg.value / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(arg1)] + (curs / 130 * msg.value / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += curs / 130 * msg.value / 2
                                    emit BoughtTokens(msg.value, totalEthers, curs / 130 * msg.value, curs / 130, arg1);
                                    emit Transfer((curs / 130 * msg.value), 0, arg1);
                                    emit Transfer((19 * curs / 130 * msg.value / 50), 0, owner);
                                else:
                                    require stor12[address(arg1)] >= 0
                                    require (curs / 130 * msg.value) + stor12[address(arg1)] >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)] >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(arg1)] <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)] >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require 19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(arg1)] + (19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50)
                                    require balanceOf[address(arg1)] + (curs / 130 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 130 * msg.value) + stor12[address(arg1)]
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(arg1)] + ((curs / 130 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (curs / 130 * msg.value) + stor12[address(arg1)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + stor12[address(arg1)], curs / 130, arg1);
                                    emit Transfer(((curs / 130 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                    emit Transfer((19 * (curs / 130 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
            else:
                if block.timestamp < startDate + (360 * 24 * 3600):
                    require curs / 140 * msg.value > 0
                    require totalTokens + (curs / 140 * msg.value) >= totalTokens
                    if block.timestamp < startDate + (360 * 24 * 3600):
                        totalTokens += curs / 140 * msg.value
                        require totalTokens + (curs / 140 * msg.value) <= capTokens
                        require totalSupply + (curs / 140 * msg.value) >= totalSupply
                        totalSupply += curs / 140 * msg.value
                        require 19 * curs / 140 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (curs / 140 * msg.value) + (19 * curs / 140 * msg.value / 50)
                        require balanceOf[address(arg1)] + (curs / 140 * msg.value) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += curs / 140 * msg.value
                        require balanceOf[stor3] + (19 * curs / 140 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * curs / 140 * msg.value / 50
                        if block.timestamp < startDate + (48 * 24 * 3600):
                            require stor12[address(arg1)] + (curs / 140 * msg.value / 2) >= stor12[address(arg1)]
                            stor12[address(arg1)] += curs / 140 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, curs / 140 * msg.value, curs / 140, arg1);
                        emit Transfer((curs / 140 * msg.value), 0, arg1);
                        emit Transfer((19 * curs / 140 * msg.value / 50), 0, owner);
                    else:
                        if block.timestamp > endDate:
                            totalTokens += curs / 140 * msg.value
                            require totalTokens + (curs / 140 * msg.value) <= capTokens
                            require totalSupply + (curs / 140 * msg.value) >= totalSupply
                            totalSupply += curs / 140 * msg.value
                            require 19 * curs / 140 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (curs / 140 * msg.value) + (19 * curs / 140 * msg.value / 50)
                            require balanceOf[address(arg1)] + (curs / 140 * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += curs / 140 * msg.value
                            require balanceOf[stor3] + (19 * curs / 140 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * curs / 140 * msg.value / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + (curs / 140 * msg.value / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += curs / 140 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, curs / 140 * msg.value, curs / 140, arg1);
                            emit Transfer((curs / 140 * msg.value), 0, arg1);
                            emit Transfer((19 * curs / 140 * msg.value / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (curs / 140 * msg.value) <= capTokens
                            if capTokens - totalTokens - (curs / 140 * msg.value) > 0:
                                if curs / 140 * msg.value <= capTokens - totalTokens - (curs / 140 * msg.value):
                                    if stor12[address(arg1)] <= curs / 140 * msg.value:
                                        require stor12[address(arg1)] >= 0
                                        require (curs / 140 * msg.value) + stor12[address(arg1)] >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require 19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)] + (19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (curs / 140 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 140 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 140 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + stor12[address(arg1)], curs / 140, arg1);
                                        emit Transfer(((curs / 140 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require curs / 140 * msg.value >= 0
                                        require (curs / 140 * msg.value) + (curs / 140 * msg.value) >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value) <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require 19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value) + (19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 140 * msg.value) + (curs / 140 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 140 * msg.value) + (curs / 140 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + (curs / 140 * msg.value), curs / 140, arg1);
                                        emit Transfer(((curs / 140 * msg.value) + (curs / 140 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(arg1)] <= capTokens - totalTokens - (curs / 140 * msg.value):
                                        require stor12[address(arg1)] >= 0
                                        require (curs / 140 * msg.value) + stor12[address(arg1)] >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require 19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)] + (19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (curs / 140 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 140 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 140 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + stor12[address(arg1)], curs / 140, arg1);
                                        emit Transfer(((curs / 140 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require capTokens - totalTokens - (curs / 140 * msg.value) >= 0
                                        require (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) >= curs / 140 * msg.value
                                        require (curs / 140 * msg.value) + capTokens - (curs / 140 * msg.value) >= totalTokens
                                        totalTokens = (curs / 140 * msg.value) + capTokens - (curs / 140 * msg.value)
                                        require (curs / 140 * msg.value) + capTokens - (curs / 140 * msg.value) <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value)
                                        require 19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) + (19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value), curs / 140, arg1);
                                        emit Transfer(((curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50), 0, owner);
                            else:
                                if curs / 140 * msg.value <= 0:
                                    if stor12[address(arg1)] <= curs / 140 * msg.value:
                                        require stor12[address(arg1)] >= 0
                                        require (curs / 140 * msg.value) + stor12[address(arg1)] >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require 19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)] + (19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (curs / 140 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 140 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 140 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + stor12[address(arg1)], curs / 140, arg1);
                                        emit Transfer(((curs / 140 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require curs / 140 * msg.value >= 0
                                        require (curs / 140 * msg.value) + (curs / 140 * msg.value) >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value) <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require 19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value) + (19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 140 * msg.value) + (curs / 140 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 140 * msg.value) + (curs / 140 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + (curs / 140 * msg.value), curs / 140, arg1);
                                        emit Transfer(((curs / 140 * msg.value) + (curs / 140 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(arg1)] > 0:
                                        require curs / 140 * msg.value >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) >= totalTokens
                                        totalTokens += curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) >= totalSupply
                                        totalSupply += curs / 140 * msg.value
                                        require 19 * curs / 140 * msg.value / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (19 * curs / 140 * msg.value / 50)
                                        require balanceOf[address(arg1)] + (curs / 140 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += curs / 140 * msg.value
                                        require balanceOf[stor3] + (19 * curs / 140 * msg.value / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * curs / 140 * msg.value / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + (curs / 140 * msg.value / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += curs / 140 * msg.value / 2
                                        emit BoughtTokens(msg.value, totalEthers, curs / 140 * msg.value, curs / 140, arg1);
                                        emit Transfer((curs / 140 * msg.value), 0, arg1);
                                        emit Transfer((19 * curs / 140 * msg.value / 50), 0, owner);
                                    else:
                                        require stor12[address(arg1)] >= 0
                                        require (curs / 140 * msg.value) + stor12[address(arg1)] >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require 19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(arg1)] + (19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (curs / 140 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 140 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 140 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 140 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + stor12[address(arg1)], curs / 140, arg1);
                                        emit Transfer(((curs / 140 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (curs / 140 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                else:
                    require block.timestamp <= endDate
                    require curs / 150 * msg.value > 0
                    require totalTokens + (curs / 150 * msg.value) >= totalTokens
                    if block.timestamp < startDate + (360 * 24 * 3600):
                        totalTokens += curs / 150 * msg.value
                        require totalTokens + (curs / 150 * msg.value) <= capTokens
                        require totalSupply + (curs / 150 * msg.value) >= totalSupply
                        totalSupply += curs / 150 * msg.value
                        require 19 * curs / 150 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (curs / 150 * msg.value) + (19 * curs / 150 * msg.value / 50)
                        require balanceOf[address(arg1)] + (curs / 150 * msg.value) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += curs / 150 * msg.value
                        require balanceOf[stor3] + (19 * curs / 150 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * curs / 150 * msg.value / 50
                        if block.timestamp < startDate + (48 * 24 * 3600):
                            require stor12[address(arg1)] + (curs / 150 * msg.value / 2) >= stor12[address(arg1)]
                            stor12[address(arg1)] += curs / 150 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, curs / 150 * msg.value, curs / 150, arg1);
                        emit Transfer((curs / 150 * msg.value), 0, arg1);
                        emit Transfer((19 * curs / 150 * msg.value / 50), 0, owner);
                    else:
                        if block.timestamp > endDate:
                            totalTokens += curs / 150 * msg.value
                            require totalTokens + (curs / 150 * msg.value) <= capTokens
                            require totalSupply + (curs / 150 * msg.value) >= totalSupply
                            totalSupply += curs / 150 * msg.value
                            require 19 * curs / 150 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (curs / 150 * msg.value) + (19 * curs / 150 * msg.value / 50)
                            require balanceOf[address(arg1)] + (curs / 150 * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += curs / 150 * msg.value
                            require balanceOf[stor3] + (19 * curs / 150 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * curs / 150 * msg.value / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(arg1)] + (curs / 150 * msg.value / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += curs / 150 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, curs / 150 * msg.value, curs / 150, arg1);
                            emit Transfer((curs / 150 * msg.value), 0, arg1);
                            emit Transfer((19 * curs / 150 * msg.value / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (curs / 150 * msg.value) <= capTokens
                            if capTokens - totalTokens - (curs / 150 * msg.value) > 0:
                                if curs / 150 * msg.value <= capTokens - totalTokens - (curs / 150 * msg.value):
                                    if stor12[address(arg1)] <= curs / 150 * msg.value:
                                        require stor12[address(arg1)] >= 0
                                        require (curs / 150 * msg.value) + stor12[address(arg1)] >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require 19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)] + (19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (curs / 150 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 150 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 150 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + stor12[address(arg1)], curs / 150, arg1);
                                        emit Transfer(((curs / 150 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require curs / 150 * msg.value >= 0
                                        require (curs / 150 * msg.value) + (curs / 150 * msg.value) >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value) <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require 19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value) + (19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 150 * msg.value) + (curs / 150 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 150 * msg.value) + (curs / 150 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + (curs / 150 * msg.value), curs / 150, arg1);
                                        emit Transfer(((curs / 150 * msg.value) + (curs / 150 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(arg1)] <= capTokens - totalTokens - (curs / 150 * msg.value):
                                        require stor12[address(arg1)] >= 0
                                        require (curs / 150 * msg.value) + stor12[address(arg1)] >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require 19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)] + (19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (curs / 150 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 150 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 150 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + stor12[address(arg1)], curs / 150, arg1);
                                        emit Transfer(((curs / 150 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require capTokens - totalTokens - (curs / 150 * msg.value) >= 0
                                        require (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) >= curs / 150 * msg.value
                                        require (curs / 150 * msg.value) + capTokens - (curs / 150 * msg.value) >= totalTokens
                                        totalTokens = (curs / 150 * msg.value) + capTokens - (curs / 150 * msg.value)
                                        require (curs / 150 * msg.value) + capTokens - (curs / 150 * msg.value) <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value)
                                        require 19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) + (19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value), curs / 150, arg1);
                                        emit Transfer(((curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50), 0, owner);
                            else:
                                if curs / 150 * msg.value <= 0:
                                    if stor12[address(arg1)] <= curs / 150 * msg.value:
                                        require stor12[address(arg1)] >= 0
                                        require (curs / 150 * msg.value) + stor12[address(arg1)] >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require 19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)] + (19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (curs / 150 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 150 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 150 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + stor12[address(arg1)], curs / 150, arg1);
                                        emit Transfer(((curs / 150 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require curs / 150 * msg.value >= 0
                                        require (curs / 150 * msg.value) + (curs / 150 * msg.value) >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value) <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require 19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value) + (19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 150 * msg.value) + (curs / 150 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 150 * msg.value) + (curs / 150 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + (curs / 150 * msg.value), curs / 150, arg1);
                                        emit Transfer(((curs / 150 * msg.value) + (curs / 150 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(arg1)] > 0:
                                        require curs / 150 * msg.value >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) >= totalTokens
                                        totalTokens += curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) >= totalSupply
                                        totalSupply += curs / 150 * msg.value
                                        require 19 * curs / 150 * msg.value / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (19 * curs / 150 * msg.value / 50)
                                        require balanceOf[address(arg1)] + (curs / 150 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += curs / 150 * msg.value
                                        require balanceOf[stor3] + (19 * curs / 150 * msg.value / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * curs / 150 * msg.value / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + (curs / 150 * msg.value / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += curs / 150 * msg.value / 2
                                        emit BoughtTokens(msg.value, totalEthers, curs / 150 * msg.value, curs / 150, arg1);
                                        emit Transfer((curs / 150 * msg.value), 0, arg1);
                                        emit Transfer((19 * curs / 150 * msg.value / 50), 0, owner);
                                    else:
                                        require stor12[address(arg1)] >= 0
                                        require (curs / 150 * msg.value) + stor12[address(arg1)] >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require 19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(arg1)] + (19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (curs / 150 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs / 150 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(arg1)] + ((curs / 150 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (curs / 150 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + stor12[address(arg1)], curs / 150, arg1);
                                        emit Transfer(((curs / 150 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (curs / 150 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
}

function _fallback() payable {
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require msg.value > 0
    require totalEthers + msg.value >= totalEthers
    totalEthers += msg.value
    require block.timestamp >= startDate
    if block.timestamp < startDate + (48 * 24 * 3600):
        require curs / 100 * msg.value > 0
        require totalTokens + (curs / 100 * msg.value) >= totalTokens
        if block.timestamp < startDate + (360 * 24 * 3600):
            totalTokens += curs / 100 * msg.value
            require totalTokens + (curs / 100 * msg.value) <= capTokens
            require totalSupply + (curs / 100 * msg.value) >= totalSupply
            totalSupply += curs / 100 * msg.value
            require 19 * curs / 100 * msg.value / 50 >= 0
            totalSupply = totalSupply + (curs / 100 * msg.value) + (19 * curs / 100 * msg.value / 50)
            require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += curs / 100 * msg.value
            require balanceOf[stor3] + (19 * curs / 100 * msg.value / 50) >= balanceOf[stor3]
            balanceOf[stor3] += 19 * curs / 100 * msg.value / 50
            if block.timestamp < startDate + (48 * 24 * 3600):
                require stor12[address(msg.sender)] + (curs / 100 * msg.value / 2) >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += curs / 100 * msg.value / 2
            emit BoughtTokens(msg.value, totalEthers, curs / 100 * msg.value, curs / 100, msg.sender);
            emit Transfer((curs / 100 * msg.value), 0, msg.sender);
            emit Transfer((19 * curs / 100 * msg.value / 50), 0, owner);
        else:
            if block.timestamp > endDate:
                totalTokens += curs / 100 * msg.value
                require totalTokens + (curs / 100 * msg.value) <= capTokens
                require totalSupply + (curs / 100 * msg.value) >= totalSupply
                totalSupply += curs / 100 * msg.value
                require 19 * curs / 100 * msg.value / 50 >= 0
                totalSupply = totalSupply + (curs / 100 * msg.value) + (19 * curs / 100 * msg.value / 50)
                require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += curs / 100 * msg.value
                require balanceOf[stor3] + (19 * curs / 100 * msg.value / 50) >= balanceOf[stor3]
                balanceOf[stor3] += 19 * curs / 100 * msg.value / 50
                if block.timestamp < startDate + (48 * 24 * 3600):
                    require stor12[address(msg.sender)] + (curs / 100 * msg.value / 2) >= stor12[address(msg.sender)]
                    stor12[address(msg.sender)] += curs / 100 * msg.value / 2
                emit BoughtTokens(msg.value, totalEthers, curs / 100 * msg.value, curs / 100, msg.sender);
                emit Transfer((curs / 100 * msg.value), 0, msg.sender);
                emit Transfer((19 * curs / 100 * msg.value / 50), 0, owner);
            else:
                require capTokens - totalTokens - (curs / 100 * msg.value) <= capTokens
                if capTokens - totalTokens - (curs / 100 * msg.value) > 0:
                    if curs / 100 * msg.value <= capTokens - totalTokens - (curs / 100 * msg.value):
                        if stor12[address(msg.sender)] <= curs / 100 * msg.value:
                            require stor12[address(msg.sender)] >= 0
                            require (curs / 100 * msg.value) + stor12[address(msg.sender)] >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)] <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require 19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50)
                            require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + ((curs / 100 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs / 100 * msg.value) + stor12[address(msg.sender)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + stor12[address(msg.sender)], curs / 100, msg.sender);
                            emit Transfer(((curs / 100 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                            emit Transfer((19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                        else:
                            require curs / 100 * msg.value >= 0
                            require (curs / 100 * msg.value) + (curs / 100 * msg.value) >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value) <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require 19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value) + (19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50)
                            require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + ((curs / 100 * msg.value) + (curs / 100 * msg.value) / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs / 100 * msg.value) + (curs / 100 * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + (curs / 100 * msg.value), curs / 100, msg.sender);
                            emit Transfer(((curs / 100 * msg.value) + (curs / 100 * msg.value)), 0, msg.sender);
                            emit Transfer((19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50), 0, owner);
                    else:
                        if stor12[address(msg.sender)] <= capTokens - totalTokens - (curs / 100 * msg.value):
                            require stor12[address(msg.sender)] >= 0
                            require (curs / 100 * msg.value) + stor12[address(msg.sender)] >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)] <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require 19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50)
                            require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + ((curs / 100 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs / 100 * msg.value) + stor12[address(msg.sender)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + stor12[address(msg.sender)], curs / 100, msg.sender);
                            emit Transfer(((curs / 100 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                            emit Transfer((19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (curs / 100 * msg.value) >= 0
                            require (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) >= curs / 100 * msg.value
                            require (curs / 100 * msg.value) + capTokens - (curs / 100 * msg.value) >= totalTokens
                            totalTokens = (curs / 100 * msg.value) + capTokens - (curs / 100 * msg.value)
                            require (curs / 100 * msg.value) + capTokens - (curs / 100 * msg.value) <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value)
                            require 19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) + (19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50)
                            require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value)
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + ((curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value), curs / 100, msg.sender);
                            emit Transfer(((curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value)), 0, msg.sender);
                            emit Transfer((19 * (curs / 100 * msg.value) + capTokens - totalTokens - (curs / 100 * msg.value) / 50), 0, owner);
                else:
                    if curs / 100 * msg.value <= 0:
                        if stor12[address(msg.sender)] <= curs / 100 * msg.value:
                            require stor12[address(msg.sender)] >= 0
                            require (curs / 100 * msg.value) + stor12[address(msg.sender)] >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)] <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require 19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50)
                            require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + ((curs / 100 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs / 100 * msg.value) + stor12[address(msg.sender)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + stor12[address(msg.sender)], curs / 100, msg.sender);
                            emit Transfer(((curs / 100 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                            emit Transfer((19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                        else:
                            require curs / 100 * msg.value >= 0
                            require (curs / 100 * msg.value) + (curs / 100 * msg.value) >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require totalTokens + (curs / 100 * msg.value) + (curs / 100 * msg.value) <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require 19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (curs / 100 * msg.value) + (19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50)
                            require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + (curs / 100 * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + (curs / 100 * msg.value)
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + ((curs / 100 * msg.value) + (curs / 100 * msg.value) / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs / 100 * msg.value) + (curs / 100 * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + (curs / 100 * msg.value), curs / 100, msg.sender);
                            emit Transfer(((curs / 100 * msg.value) + (curs / 100 * msg.value)), 0, msg.sender);
                            emit Transfer((19 * (curs / 100 * msg.value) + (curs / 100 * msg.value) / 50), 0, owner);
                    else:
                        if stor12[address(msg.sender)] > 0:
                            require curs / 100 * msg.value >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) >= totalTokens
                            totalTokens += curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) <= capTokens
                            require totalSupply + (curs / 100 * msg.value) >= totalSupply
                            totalSupply += curs / 100 * msg.value
                            require 19 * curs / 100 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + (19 * curs / 100 * msg.value / 50)
                            require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += curs / 100 * msg.value
                            require balanceOf[stor3] + (19 * curs / 100 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * curs / 100 * msg.value / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + (curs / 100 * msg.value / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += curs / 100 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, curs / 100 * msg.value, curs / 100, msg.sender);
                            emit Transfer((curs / 100 * msg.value), 0, msg.sender);
                            emit Transfer((19 * curs / 100 * msg.value / 50), 0, owner);
                        else:
                            require stor12[address(msg.sender)] >= 0
                            require (curs / 100 * msg.value) + stor12[address(msg.sender)] >= curs / 100 * msg.value
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                            totalTokens = totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require totalTokens + (curs / 100 * msg.value) + stor12[address(msg.sender)] <= capTokens
                            require totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require 19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                            totalSupply = totalSupply + (curs / 100 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50)
                            require balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 100 * msg.value) + stor12[address(msg.sender)]
                            require balanceOf[stor3] + (19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + ((curs / 100 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs / 100 * msg.value) + stor12[address(msg.sender)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs / 100 * msg.value) + stor12[address(msg.sender)], curs / 100, msg.sender);
                            emit Transfer(((curs / 100 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                            emit Transfer((19 * (curs / 100 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
    else:
        if block.timestamp < startDate + (120 * 24 * 3600):
            require curs / 120 * msg.value > 0
            require totalTokens + (curs / 120 * msg.value) >= totalTokens
            if block.timestamp < startDate + (360 * 24 * 3600):
                totalTokens += curs / 120 * msg.value
                require totalTokens + (curs / 120 * msg.value) <= capTokens
                require totalSupply + (curs / 120 * msg.value) >= totalSupply
                totalSupply += curs / 120 * msg.value
                require 19 * curs / 120 * msg.value / 50 >= 0
                totalSupply = totalSupply + (curs / 120 * msg.value) + (19 * curs / 120 * msg.value / 50)
                require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += curs / 120 * msg.value
                require balanceOf[stor3] + (19 * curs / 120 * msg.value / 50) >= balanceOf[stor3]
                balanceOf[stor3] += 19 * curs / 120 * msg.value / 50
                if block.timestamp < startDate + (48 * 24 * 3600):
                    require stor12[address(msg.sender)] + (curs / 120 * msg.value / 2) >= stor12[address(msg.sender)]
                    stor12[address(msg.sender)] += curs / 120 * msg.value / 2
                emit BoughtTokens(msg.value, totalEthers, curs / 120 * msg.value, curs / 120, msg.sender);
                emit Transfer((curs / 120 * msg.value), 0, msg.sender);
                emit Transfer((19 * curs / 120 * msg.value / 50), 0, owner);
            else:
                if block.timestamp > endDate:
                    totalTokens += curs / 120 * msg.value
                    require totalTokens + (curs / 120 * msg.value) <= capTokens
                    require totalSupply + (curs / 120 * msg.value) >= totalSupply
                    totalSupply += curs / 120 * msg.value
                    require 19 * curs / 120 * msg.value / 50 >= 0
                    totalSupply = totalSupply + (curs / 120 * msg.value) + (19 * curs / 120 * msg.value / 50)
                    require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += curs / 120 * msg.value
                    require balanceOf[stor3] + (19 * curs / 120 * msg.value / 50) >= balanceOf[stor3]
                    balanceOf[stor3] += 19 * curs / 120 * msg.value / 50
                    if block.timestamp < startDate + (48 * 24 * 3600):
                        require stor12[address(msg.sender)] + (curs / 120 * msg.value / 2) >= stor12[address(msg.sender)]
                        stor12[address(msg.sender)] += curs / 120 * msg.value / 2
                    emit BoughtTokens(msg.value, totalEthers, curs / 120 * msg.value, curs / 120, msg.sender);
                    emit Transfer((curs / 120 * msg.value), 0, msg.sender);
                    emit Transfer((19 * curs / 120 * msg.value / 50), 0, owner);
                else:
                    require capTokens - totalTokens - (curs / 120 * msg.value) <= capTokens
                    if capTokens - totalTokens - (curs / 120 * msg.value) > 0:
                        if curs / 120 * msg.value <= capTokens - totalTokens - (curs / 120 * msg.value):
                            if stor12[address(msg.sender)] <= curs / 120 * msg.value:
                                require stor12[address(msg.sender)] >= 0
                                require (curs / 120 * msg.value) + stor12[address(msg.sender)] >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require 19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50)
                                require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(msg.sender)] + ((curs / 120 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (curs / 120 * msg.value) + stor12[address(msg.sender)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + stor12[address(msg.sender)], curs / 120, msg.sender);
                                emit Transfer(((curs / 120 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                emit Transfer((19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                            else:
                                require curs / 120 * msg.value >= 0
                                require (curs / 120 * msg.value) + (curs / 120 * msg.value) >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value) <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require 19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value) + (19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50)
                                require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(msg.sender)] + ((curs / 120 * msg.value) + (curs / 120 * msg.value) / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (curs / 120 * msg.value) + (curs / 120 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + (curs / 120 * msg.value), curs / 120, msg.sender);
                                emit Transfer(((curs / 120 * msg.value) + (curs / 120 * msg.value)), 0, msg.sender);
                                emit Transfer((19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50), 0, owner);
                        else:
                            if stor12[address(msg.sender)] <= capTokens - totalTokens - (curs / 120 * msg.value):
                                require stor12[address(msg.sender)] >= 0
                                require (curs / 120 * msg.value) + stor12[address(msg.sender)] >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require 19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50)
                                require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(msg.sender)] + ((curs / 120 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (curs / 120 * msg.value) + stor12[address(msg.sender)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + stor12[address(msg.sender)], curs / 120, msg.sender);
                                emit Transfer(((curs / 120 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                emit Transfer((19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                            else:
                                require capTokens - totalTokens - (curs / 120 * msg.value) >= 0
                                require (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) >= curs / 120 * msg.value
                                require (curs / 120 * msg.value) + capTokens - (curs / 120 * msg.value) >= totalTokens
                                totalTokens = (curs / 120 * msg.value) + capTokens - (curs / 120 * msg.value)
                                require (curs / 120 * msg.value) + capTokens - (curs / 120 * msg.value) <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value)
                                require 19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) + (19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50)
                                require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value)
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(msg.sender)] + ((curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value), curs / 120, msg.sender);
                                emit Transfer(((curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value)), 0, msg.sender);
                                emit Transfer((19 * (curs / 120 * msg.value) + capTokens - totalTokens - (curs / 120 * msg.value) / 50), 0, owner);
                    else:
                        if curs / 120 * msg.value <= 0:
                            if stor12[address(msg.sender)] <= curs / 120 * msg.value:
                                require stor12[address(msg.sender)] >= 0
                                require (curs / 120 * msg.value) + stor12[address(msg.sender)] >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require 19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50)
                                require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(msg.sender)] + ((curs / 120 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (curs / 120 * msg.value) + stor12[address(msg.sender)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + stor12[address(msg.sender)], curs / 120, msg.sender);
                                emit Transfer(((curs / 120 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                emit Transfer((19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                            else:
                                require curs / 120 * msg.value >= 0
                                require (curs / 120 * msg.value) + (curs / 120 * msg.value) >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require totalTokens + (curs / 120 * msg.value) + (curs / 120 * msg.value) <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require 19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (curs / 120 * msg.value) + (19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50)
                                require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + (curs / 120 * msg.value) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + (curs / 120 * msg.value)
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(msg.sender)] + ((curs / 120 * msg.value) + (curs / 120 * msg.value) / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (curs / 120 * msg.value) + (curs / 120 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + (curs / 120 * msg.value), curs / 120, msg.sender);
                                emit Transfer(((curs / 120 * msg.value) + (curs / 120 * msg.value)), 0, msg.sender);
                                emit Transfer((19 * (curs / 120 * msg.value) + (curs / 120 * msg.value) / 50), 0, owner);
                        else:
                            if stor12[address(msg.sender)] > 0:
                                require curs / 120 * msg.value >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) >= totalTokens
                                totalTokens += curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) <= capTokens
                                require totalSupply + (curs / 120 * msg.value) >= totalSupply
                                totalSupply += curs / 120 * msg.value
                                require 19 * curs / 120 * msg.value / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + (19 * curs / 120 * msg.value / 50)
                                require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += curs / 120 * msg.value
                                require balanceOf[stor3] + (19 * curs / 120 * msg.value / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * curs / 120 * msg.value / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(msg.sender)] + (curs / 120 * msg.value / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += curs / 120 * msg.value / 2
                                emit BoughtTokens(msg.value, totalEthers, curs / 120 * msg.value, curs / 120, msg.sender);
                                emit Transfer((curs / 120 * msg.value), 0, msg.sender);
                                emit Transfer((19 * curs / 120 * msg.value / 50), 0, owner);
                            else:
                                require stor12[address(msg.sender)] >= 0
                                require (curs / 120 * msg.value) + stor12[address(msg.sender)] >= curs / 120 * msg.value
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                totalTokens = totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require totalTokens + (curs / 120 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                require totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require 19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                totalSupply = totalSupply + (curs / 120 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50)
                                require balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 120 * msg.value) + stor12[address(msg.sender)]
                                require balanceOf[stor3] + (19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50
                                if block.timestamp < startDate + (48 * 24 * 3600):
                                    require stor12[address(msg.sender)] + ((curs / 120 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (curs / 120 * msg.value) + stor12[address(msg.sender)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (curs / 120 * msg.value) + stor12[address(msg.sender)], curs / 120, msg.sender);
                                emit Transfer(((curs / 120 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                emit Transfer((19 * (curs / 120 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
        else:
            if block.timestamp < startDate + (240 * 24 * 3600):
                require curs / 130 * msg.value > 0
                require totalTokens + (curs / 130 * msg.value) >= totalTokens
                if block.timestamp < startDate + (360 * 24 * 3600):
                    totalTokens += curs / 130 * msg.value
                    require totalTokens + (curs / 130 * msg.value) <= capTokens
                    require totalSupply + (curs / 130 * msg.value) >= totalSupply
                    totalSupply += curs / 130 * msg.value
                    require 19 * curs / 130 * msg.value / 50 >= 0
                    totalSupply = totalSupply + (curs / 130 * msg.value) + (19 * curs / 130 * msg.value / 50)
                    require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += curs / 130 * msg.value
                    require balanceOf[stor3] + (19 * curs / 130 * msg.value / 50) >= balanceOf[stor3]
                    balanceOf[stor3] += 19 * curs / 130 * msg.value / 50
                    if block.timestamp < startDate + (48 * 24 * 3600):
                        require stor12[address(msg.sender)] + (curs / 130 * msg.value / 2) >= stor12[address(msg.sender)]
                        stor12[address(msg.sender)] += curs / 130 * msg.value / 2
                    emit BoughtTokens(msg.value, totalEthers, curs / 130 * msg.value, curs / 130, msg.sender);
                    emit Transfer((curs / 130 * msg.value), 0, msg.sender);
                    emit Transfer((19 * curs / 130 * msg.value / 50), 0, owner);
                else:
                    if block.timestamp > endDate:
                        totalTokens += curs / 130 * msg.value
                        require totalTokens + (curs / 130 * msg.value) <= capTokens
                        require totalSupply + (curs / 130 * msg.value) >= totalSupply
                        totalSupply += curs / 130 * msg.value
                        require 19 * curs / 130 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (curs / 130 * msg.value) + (19 * curs / 130 * msg.value / 50)
                        require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += curs / 130 * msg.value
                        require balanceOf[stor3] + (19 * curs / 130 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * curs / 130 * msg.value / 50
                        if block.timestamp < startDate + (48 * 24 * 3600):
                            require stor12[address(msg.sender)] + (curs / 130 * msg.value / 2) >= stor12[address(msg.sender)]
                            stor12[address(msg.sender)] += curs / 130 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, curs / 130 * msg.value, curs / 130, msg.sender);
                        emit Transfer((curs / 130 * msg.value), 0, msg.sender);
                        emit Transfer((19 * curs / 130 * msg.value / 50), 0, owner);
                    else:
                        require capTokens - totalTokens - (curs / 130 * msg.value) <= capTokens
                        if capTokens - totalTokens - (curs / 130 * msg.value) > 0:
                            if curs / 130 * msg.value <= capTokens - totalTokens - (curs / 130 * msg.value):
                                if stor12[address(msg.sender)] <= curs / 130 * msg.value:
                                    require stor12[address(msg.sender)] >= 0
                                    require (curs / 130 * msg.value) + stor12[address(msg.sender)] >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require 19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50)
                                    require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(msg.sender)] + ((curs / 130 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (curs / 130 * msg.value) + stor12[address(msg.sender)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + stor12[address(msg.sender)], curs / 130, msg.sender);
                                    emit Transfer(((curs / 130 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                    emit Transfer((19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                else:
                                    require curs / 130 * msg.value >= 0
                                    require (curs / 130 * msg.value) + (curs / 130 * msg.value) >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value) <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require 19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value) + (19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50)
                                    require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(msg.sender)] + ((curs / 130 * msg.value) + (curs / 130 * msg.value) / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (curs / 130 * msg.value) + (curs / 130 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + (curs / 130 * msg.value), curs / 130, msg.sender);
                                    emit Transfer(((curs / 130 * msg.value) + (curs / 130 * msg.value)), 0, msg.sender);
                                    emit Transfer((19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50), 0, owner);
                            else:
                                if stor12[address(msg.sender)] <= capTokens - totalTokens - (curs / 130 * msg.value):
                                    require stor12[address(msg.sender)] >= 0
                                    require (curs / 130 * msg.value) + stor12[address(msg.sender)] >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require 19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50)
                                    require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(msg.sender)] + ((curs / 130 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (curs / 130 * msg.value) + stor12[address(msg.sender)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + stor12[address(msg.sender)], curs / 130, msg.sender);
                                    emit Transfer(((curs / 130 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                    emit Transfer((19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                else:
                                    require capTokens - totalTokens - (curs / 130 * msg.value) >= 0
                                    require (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) >= curs / 130 * msg.value
                                    require (curs / 130 * msg.value) + capTokens - (curs / 130 * msg.value) >= totalTokens
                                    totalTokens = (curs / 130 * msg.value) + capTokens - (curs / 130 * msg.value)
                                    require (curs / 130 * msg.value) + capTokens - (curs / 130 * msg.value) <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value)
                                    require 19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) + (19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50)
                                    require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value)
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(msg.sender)] + ((curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value), curs / 130, msg.sender);
                                    emit Transfer(((curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value)), 0, msg.sender);
                                    emit Transfer((19 * (curs / 130 * msg.value) + capTokens - totalTokens - (curs / 130 * msg.value) / 50), 0, owner);
                        else:
                            if curs / 130 * msg.value <= 0:
                                if stor12[address(msg.sender)] <= curs / 130 * msg.value:
                                    require stor12[address(msg.sender)] >= 0
                                    require (curs / 130 * msg.value) + stor12[address(msg.sender)] >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require 19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50)
                                    require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(msg.sender)] + ((curs / 130 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (curs / 130 * msg.value) + stor12[address(msg.sender)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + stor12[address(msg.sender)], curs / 130, msg.sender);
                                    emit Transfer(((curs / 130 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                    emit Transfer((19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                else:
                                    require curs / 130 * msg.value >= 0
                                    require (curs / 130 * msg.value) + (curs / 130 * msg.value) >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require totalTokens + (curs / 130 * msg.value) + (curs / 130 * msg.value) <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require 19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (curs / 130 * msg.value) + (19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50)
                                    require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + (curs / 130 * msg.value) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + (curs / 130 * msg.value)
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(msg.sender)] + ((curs / 130 * msg.value) + (curs / 130 * msg.value) / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (curs / 130 * msg.value) + (curs / 130 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + (curs / 130 * msg.value), curs / 130, msg.sender);
                                    emit Transfer(((curs / 130 * msg.value) + (curs / 130 * msg.value)), 0, msg.sender);
                                    emit Transfer((19 * (curs / 130 * msg.value) + (curs / 130 * msg.value) / 50), 0, owner);
                            else:
                                if stor12[address(msg.sender)] > 0:
                                    require curs / 130 * msg.value >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) >= totalTokens
                                    totalTokens += curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) >= totalSupply
                                    totalSupply += curs / 130 * msg.value
                                    require 19 * curs / 130 * msg.value / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + (19 * curs / 130 * msg.value / 50)
                                    require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += curs / 130 * msg.value
                                    require balanceOf[stor3] + (19 * curs / 130 * msg.value / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * curs / 130 * msg.value / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(msg.sender)] + (curs / 130 * msg.value / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += curs / 130 * msg.value / 2
                                    emit BoughtTokens(msg.value, totalEthers, curs / 130 * msg.value, curs / 130, msg.sender);
                                    emit Transfer((curs / 130 * msg.value), 0, msg.sender);
                                    emit Transfer((19 * curs / 130 * msg.value / 50), 0, owner);
                                else:
                                    require stor12[address(msg.sender)] >= 0
                                    require (curs / 130 * msg.value) + stor12[address(msg.sender)] >= curs / 130 * msg.value
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                    totalTokens = totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require totalTokens + (curs / 130 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                    require totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require 19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                    totalSupply = totalSupply + (curs / 130 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50)
                                    require balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 130 * msg.value) + stor12[address(msg.sender)]
                                    require balanceOf[stor3] + (19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50
                                    if block.timestamp < startDate + (48 * 24 * 3600):
                                        require stor12[address(msg.sender)] + ((curs / 130 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (curs / 130 * msg.value) + stor12[address(msg.sender)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (curs / 130 * msg.value) + stor12[address(msg.sender)], curs / 130, msg.sender);
                                    emit Transfer(((curs / 130 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                    emit Transfer((19 * (curs / 130 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
            else:
                if block.timestamp < startDate + (360 * 24 * 3600):
                    require curs / 140 * msg.value > 0
                    require totalTokens + (curs / 140 * msg.value) >= totalTokens
                    if block.timestamp < startDate + (360 * 24 * 3600):
                        totalTokens += curs / 140 * msg.value
                        require totalTokens + (curs / 140 * msg.value) <= capTokens
                        require totalSupply + (curs / 140 * msg.value) >= totalSupply
                        totalSupply += curs / 140 * msg.value
                        require 19 * curs / 140 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (curs / 140 * msg.value) + (19 * curs / 140 * msg.value / 50)
                        require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += curs / 140 * msg.value
                        require balanceOf[stor3] + (19 * curs / 140 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * curs / 140 * msg.value / 50
                        if block.timestamp < startDate + (48 * 24 * 3600):
                            require stor12[address(msg.sender)] + (curs / 140 * msg.value / 2) >= stor12[address(msg.sender)]
                            stor12[address(msg.sender)] += curs / 140 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, curs / 140 * msg.value, curs / 140, msg.sender);
                        emit Transfer((curs / 140 * msg.value), 0, msg.sender);
                        emit Transfer((19 * curs / 140 * msg.value / 50), 0, owner);
                    else:
                        if block.timestamp > endDate:
                            totalTokens += curs / 140 * msg.value
                            require totalTokens + (curs / 140 * msg.value) <= capTokens
                            require totalSupply + (curs / 140 * msg.value) >= totalSupply
                            totalSupply += curs / 140 * msg.value
                            require 19 * curs / 140 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (curs / 140 * msg.value) + (19 * curs / 140 * msg.value / 50)
                            require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += curs / 140 * msg.value
                            require balanceOf[stor3] + (19 * curs / 140 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * curs / 140 * msg.value / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + (curs / 140 * msg.value / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += curs / 140 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, curs / 140 * msg.value, curs / 140, msg.sender);
                            emit Transfer((curs / 140 * msg.value), 0, msg.sender);
                            emit Transfer((19 * curs / 140 * msg.value / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (curs / 140 * msg.value) <= capTokens
                            if capTokens - totalTokens - (curs / 140 * msg.value) > 0:
                                if curs / 140 * msg.value <= capTokens - totalTokens - (curs / 140 * msg.value):
                                    if stor12[address(msg.sender)] <= curs / 140 * msg.value:
                                        require stor12[address(msg.sender)] >= 0
                                        require (curs / 140 * msg.value) + stor12[address(msg.sender)] >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 140 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 140 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + stor12[address(msg.sender)], curs / 140, msg.sender);
                                        emit Transfer(((curs / 140 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require curs / 140 * msg.value >= 0
                                        require (curs / 140 * msg.value) + (curs / 140 * msg.value) >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value) <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require 19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value) + (19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 140 * msg.value) + (curs / 140 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 140 * msg.value) + (curs / 140 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + (curs / 140 * msg.value), curs / 140, msg.sender);
                                        emit Transfer(((curs / 140 * msg.value) + (curs / 140 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(msg.sender)] <= capTokens - totalTokens - (curs / 140 * msg.value):
                                        require stor12[address(msg.sender)] >= 0
                                        require (curs / 140 * msg.value) + stor12[address(msg.sender)] >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 140 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 140 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + stor12[address(msg.sender)], curs / 140, msg.sender);
                                        emit Transfer(((curs / 140 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require capTokens - totalTokens - (curs / 140 * msg.value) >= 0
                                        require (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) >= curs / 140 * msg.value
                                        require (curs / 140 * msg.value) + capTokens - (curs / 140 * msg.value) >= totalTokens
                                        totalTokens = (curs / 140 * msg.value) + capTokens - (curs / 140 * msg.value)
                                        require (curs / 140 * msg.value) + capTokens - (curs / 140 * msg.value) <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value)
                                        require 19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) + (19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value), curs / 140, msg.sender);
                                        emit Transfer(((curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (curs / 140 * msg.value) + capTokens - totalTokens - (curs / 140 * msg.value) / 50), 0, owner);
                            else:
                                if curs / 140 * msg.value <= 0:
                                    if stor12[address(msg.sender)] <= curs / 140 * msg.value:
                                        require stor12[address(msg.sender)] >= 0
                                        require (curs / 140 * msg.value) + stor12[address(msg.sender)] >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 140 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 140 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + stor12[address(msg.sender)], curs / 140, msg.sender);
                                        emit Transfer(((curs / 140 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require curs / 140 * msg.value >= 0
                                        require (curs / 140 * msg.value) + (curs / 140 * msg.value) >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require totalTokens + (curs / 140 * msg.value) + (curs / 140 * msg.value) <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require 19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (curs / 140 * msg.value) + (19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + (curs / 140 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + (curs / 140 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 140 * msg.value) + (curs / 140 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 140 * msg.value) + (curs / 140 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + (curs / 140 * msg.value), curs / 140, msg.sender);
                                        emit Transfer(((curs / 140 * msg.value) + (curs / 140 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (curs / 140 * msg.value) + (curs / 140 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(msg.sender)] > 0:
                                        require curs / 140 * msg.value >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) >= totalTokens
                                        totalTokens += curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) >= totalSupply
                                        totalSupply += curs / 140 * msg.value
                                        require 19 * curs / 140 * msg.value / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + (19 * curs / 140 * msg.value / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += curs / 140 * msg.value
                                        require balanceOf[stor3] + (19 * curs / 140 * msg.value / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * curs / 140 * msg.value / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + (curs / 140 * msg.value / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += curs / 140 * msg.value / 2
                                        emit BoughtTokens(msg.value, totalEthers, curs / 140 * msg.value, curs / 140, msg.sender);
                                        emit Transfer((curs / 140 * msg.value), 0, msg.sender);
                                        emit Transfer((19 * curs / 140 * msg.value / 50), 0, owner);
                                    else:
                                        require stor12[address(msg.sender)] >= 0
                                        require (curs / 140 * msg.value) + stor12[address(msg.sender)] >= curs / 140 * msg.value
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (curs / 140 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 140 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 140 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 140 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 140 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 140 * msg.value) + stor12[address(msg.sender)], curs / 140, msg.sender);
                                        emit Transfer(((curs / 140 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (curs / 140 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                else:
                    require block.timestamp <= endDate
                    require curs / 150 * msg.value > 0
                    require totalTokens + (curs / 150 * msg.value) >= totalTokens
                    if block.timestamp < startDate + (360 * 24 * 3600):
                        totalTokens += curs / 150 * msg.value
                        require totalTokens + (curs / 150 * msg.value) <= capTokens
                        require totalSupply + (curs / 150 * msg.value) >= totalSupply
                        totalSupply += curs / 150 * msg.value
                        require 19 * curs / 150 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (curs / 150 * msg.value) + (19 * curs / 150 * msg.value / 50)
                        require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += curs / 150 * msg.value
                        require balanceOf[stor3] + (19 * curs / 150 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * curs / 150 * msg.value / 50
                        if block.timestamp < startDate + (48 * 24 * 3600):
                            require stor12[address(msg.sender)] + (curs / 150 * msg.value / 2) >= stor12[address(msg.sender)]
                            stor12[address(msg.sender)] += curs / 150 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, curs / 150 * msg.value, curs / 150, msg.sender);
                        emit Transfer((curs / 150 * msg.value), 0, msg.sender);
                        emit Transfer((19 * curs / 150 * msg.value / 50), 0, owner);
                    else:
                        if block.timestamp > endDate:
                            totalTokens += curs / 150 * msg.value
                            require totalTokens + (curs / 150 * msg.value) <= capTokens
                            require totalSupply + (curs / 150 * msg.value) >= totalSupply
                            totalSupply += curs / 150 * msg.value
                            require 19 * curs / 150 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (curs / 150 * msg.value) + (19 * curs / 150 * msg.value / 50)
                            require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += curs / 150 * msg.value
                            require balanceOf[stor3] + (19 * curs / 150 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * curs / 150 * msg.value / 50
                            if block.timestamp < startDate + (48 * 24 * 3600):
                                require stor12[address(msg.sender)] + (curs / 150 * msg.value / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += curs / 150 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, curs / 150 * msg.value, curs / 150, msg.sender);
                            emit Transfer((curs / 150 * msg.value), 0, msg.sender);
                            emit Transfer((19 * curs / 150 * msg.value / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (curs / 150 * msg.value) <= capTokens
                            if capTokens - totalTokens - (curs / 150 * msg.value) > 0:
                                if curs / 150 * msg.value <= capTokens - totalTokens - (curs / 150 * msg.value):
                                    if stor12[address(msg.sender)] <= curs / 150 * msg.value:
                                        require stor12[address(msg.sender)] >= 0
                                        require (curs / 150 * msg.value) + stor12[address(msg.sender)] >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 150 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 150 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + stor12[address(msg.sender)], curs / 150, msg.sender);
                                        emit Transfer(((curs / 150 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require curs / 150 * msg.value >= 0
                                        require (curs / 150 * msg.value) + (curs / 150 * msg.value) >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value) <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require 19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value) + (19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 150 * msg.value) + (curs / 150 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 150 * msg.value) + (curs / 150 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + (curs / 150 * msg.value), curs / 150, msg.sender);
                                        emit Transfer(((curs / 150 * msg.value) + (curs / 150 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(msg.sender)] <= capTokens - totalTokens - (curs / 150 * msg.value):
                                        require stor12[address(msg.sender)] >= 0
                                        require (curs / 150 * msg.value) + stor12[address(msg.sender)] >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 150 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 150 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + stor12[address(msg.sender)], curs / 150, msg.sender);
                                        emit Transfer(((curs / 150 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require capTokens - totalTokens - (curs / 150 * msg.value) >= 0
                                        require (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) >= curs / 150 * msg.value
                                        require (curs / 150 * msg.value) + capTokens - (curs / 150 * msg.value) >= totalTokens
                                        totalTokens = (curs / 150 * msg.value) + capTokens - (curs / 150 * msg.value)
                                        require (curs / 150 * msg.value) + capTokens - (curs / 150 * msg.value) <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value)
                                        require 19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) + (19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value), curs / 150, msg.sender);
                                        emit Transfer(((curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (curs / 150 * msg.value) + capTokens - totalTokens - (curs / 150 * msg.value) / 50), 0, owner);
                            else:
                                if curs / 150 * msg.value <= 0:
                                    if stor12[address(msg.sender)] <= curs / 150 * msg.value:
                                        require stor12[address(msg.sender)] >= 0
                                        require (curs / 150 * msg.value) + stor12[address(msg.sender)] >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 150 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 150 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + stor12[address(msg.sender)], curs / 150, msg.sender);
                                        emit Transfer(((curs / 150 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require curs / 150 * msg.value >= 0
                                        require (curs / 150 * msg.value) + (curs / 150 * msg.value) >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require totalTokens + (curs / 150 * msg.value) + (curs / 150 * msg.value) <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require 19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (curs / 150 * msg.value) + (19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + (curs / 150 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + (curs / 150 * msg.value)
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 150 * msg.value) + (curs / 150 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 150 * msg.value) + (curs / 150 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + (curs / 150 * msg.value), curs / 150, msg.sender);
                                        emit Transfer(((curs / 150 * msg.value) + (curs / 150 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (curs / 150 * msg.value) + (curs / 150 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(msg.sender)] > 0:
                                        require curs / 150 * msg.value >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) >= totalTokens
                                        totalTokens += curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) >= totalSupply
                                        totalSupply += curs / 150 * msg.value
                                        require 19 * curs / 150 * msg.value / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + (19 * curs / 150 * msg.value / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += curs / 150 * msg.value
                                        require balanceOf[stor3] + (19 * curs / 150 * msg.value / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * curs / 150 * msg.value / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + (curs / 150 * msg.value / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += curs / 150 * msg.value / 2
                                        emit BoughtTokens(msg.value, totalEthers, curs / 150 * msg.value, curs / 150, msg.sender);
                                        emit Transfer((curs / 150 * msg.value), 0, msg.sender);
                                        emit Transfer((19 * curs / 150 * msg.value / 50), 0, owner);
                                    else:
                                        require stor12[address(msg.sender)] >= 0
                                        require (curs / 150 * msg.value) + stor12[address(msg.sender)] >= curs / 150 * msg.value
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (curs / 150 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (curs / 150 * msg.value) + stor12[address(msg.sender)] + (19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs / 150 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + (48 * 24 * 3600):
                                            require stor12[address(msg.sender)] + ((curs / 150 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (curs / 150 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (curs / 150 * msg.value) + stor12[address(msg.sender)], curs / 150, msg.sender);
                                        emit Transfer(((curs / 150 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (curs / 150 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
}



}
