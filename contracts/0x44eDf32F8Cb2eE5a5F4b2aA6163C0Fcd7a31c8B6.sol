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
    stor6 = code.data[4715 len 32]
    stor7 = code.data[4747 len 32]
    stor5 = code.data[4779 len 32]
    stor9 = code.data[4855 len 20]
    stor8 = code.data[4811 len 32]
    return code.data[164 len 4551]
}



// =====================  Runtime code  =====================


const name = 'DAOP'

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
    require block.timestamp > endDate + 420
    require arg1 > 0
    require balanceOf[stor3] - arg1 <= balanceOf[stor3]
    balanceOf[stor3] -= arg1
    require totalSupply - arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, owner, 0);
}

function mint(uint256 arg1) {
    require owner == msg.sender
    require block.timestamp > endDate + 420
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
    if arg1 < startDate + 300:
        return curs
    if arg1 < startDate + 600:
        return (5 * curs / 6)
    if arg1 < startDate + 900:
        return (10 * curs / 13)
    if arg1 < startDate + 1200:
        return (5 * curs / 7)
    if arg1 > endDate:
        return 0
    return (2 * curs / 3)
}

function buyPrice() {
    if block.timestamp < startDate:
        return 0
    if block.timestamp < startDate + 300:
        return curs
    if block.timestamp < startDate + 600:
        return (5 * curs / 6)
    if block.timestamp < startDate + 900:
        return (10 * curs / 13)
    if block.timestamp < startDate + 1200:
        return (5 * curs / 7)
    if block.timestamp > endDate:
        return 0
    return (2 * curs / 3)
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp > endDate + 420
    require 68 == calldata.size
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] - arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[arg1] + arg2 >= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require block.timestamp > endDate + 420
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
    if block.timestamp < startDate + 300:
        require curs * msg.value > 0
        require totalTokens + (curs * msg.value) >= totalTokens
        if block.timestamp < startDate + 1200:
            totalTokens += curs * msg.value
            require totalTokens + (curs * msg.value) <= capTokens
            require totalSupply + (curs * msg.value) >= totalSupply
            totalSupply += curs * msg.value
            require 19 * curs * msg.value / 50 >= 0
            totalSupply = totalSupply + (curs * msg.value) + (19 * curs * msg.value / 50)
            require balanceOf[address(arg1)] + (curs * msg.value) >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += curs * msg.value
            require balanceOf[stor3] + (19 * curs * msg.value / 50) >= balanceOf[stor3]
            balanceOf[stor3] += 19 * curs * msg.value / 50
            if block.timestamp < startDate + 300:
                require stor12[address(arg1)] + (curs * msg.value / 2) >= stor12[address(arg1)]
                stor12[address(arg1)] += curs * msg.value / 2
            emit BoughtTokens(msg.value, totalEthers, curs * msg.value, curs, arg1);
            emit Transfer((curs * msg.value), 0, arg1);
            emit Transfer((19 * curs * msg.value / 50), 0, owner);
        else:
            if block.timestamp > endDate:
                totalTokens += curs * msg.value
                require totalTokens + (curs * msg.value) <= capTokens
                require totalSupply + (curs * msg.value) >= totalSupply
                totalSupply += curs * msg.value
                require 19 * curs * msg.value / 50 >= 0
                totalSupply = totalSupply + (curs * msg.value) + (19 * curs * msg.value / 50)
                require balanceOf[address(arg1)] + (curs * msg.value) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += curs * msg.value
                require balanceOf[stor3] + (19 * curs * msg.value / 50) >= balanceOf[stor3]
                balanceOf[stor3] += 19 * curs * msg.value / 50
                if block.timestamp < startDate + 300:
                    require stor12[address(arg1)] + (curs * msg.value / 2) >= stor12[address(arg1)]
                    stor12[address(arg1)] += curs * msg.value / 2
                emit BoughtTokens(msg.value, totalEthers, curs * msg.value, curs, arg1);
                emit Transfer((curs * msg.value), 0, arg1);
                emit Transfer((19 * curs * msg.value / 50), 0, owner);
            else:
                require capTokens - totalTokens - (curs * msg.value) <= capTokens
                if capTokens - totalTokens - (curs * msg.value) > 0:
                    if curs * msg.value <= capTokens - totalTokens - (curs * msg.value):
                        if stor12[address(arg1)] <= curs * msg.value:
                            require stor12[address(arg1)] >= 0
                            require (curs * msg.value) + stor12[address(arg1)] >= curs * msg.value
                            require totalTokens + (curs * msg.value) + stor12[address(arg1)] >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + stor12[address(arg1)]
                            require totalTokens + (curs * msg.value) + stor12[address(arg1)] <= capTokens
                            require totalSupply + (curs * msg.value) + stor12[address(arg1)] >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(arg1)]
                            require 19 * (curs * msg.value) + stor12[address(arg1)] / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(arg1)] + (19 * (curs * msg.value) + stor12[address(arg1)] / 50)
                            require balanceOf[address(arg1)] + (curs * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs * msg.value) + stor12[address(arg1)]
                            require balanceOf[stor3] + (19 * (curs * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + stor12[address(arg1)] / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + ((curs * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs * msg.value) + stor12[address(arg1)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + stor12[address(arg1)], curs, arg1);
                            emit Transfer(((curs * msg.value) + stor12[address(arg1)]), 0, arg1);
                            emit Transfer((19 * (curs * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                        else:
                            require curs * msg.value >= 0
                            require (curs * msg.value) + (curs * msg.value) >= curs * msg.value
                            require totalTokens + (curs * msg.value) + (curs * msg.value) >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + (curs * msg.value)
                            require totalTokens + (curs * msg.value) + (curs * msg.value) <= capTokens
                            require totalSupply + (curs * msg.value) + (curs * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + (curs * msg.value)
                            require 19 * (curs * msg.value) + (curs * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + (curs * msg.value) + (19 * (curs * msg.value) + (curs * msg.value) / 50)
                            require balanceOf[address(arg1)] + (curs * msg.value) + (curs * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs * msg.value) + (curs * msg.value)
                            require balanceOf[stor3] + (19 * (curs * msg.value) + (curs * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + (curs * msg.value) / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + ((curs * msg.value) + (curs * msg.value) / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs * msg.value) + (curs * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + (curs * msg.value), curs, arg1);
                            emit Transfer(((curs * msg.value) + (curs * msg.value)), 0, arg1);
                            emit Transfer((19 * (curs * msg.value) + (curs * msg.value) / 50), 0, owner);
                    else:
                        if stor12[address(arg1)] <= capTokens - totalTokens - (curs * msg.value):
                            require stor12[address(arg1)] >= 0
                            require (curs * msg.value) + stor12[address(arg1)] >= curs * msg.value
                            require totalTokens + (curs * msg.value) + stor12[address(arg1)] >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + stor12[address(arg1)]
                            require totalTokens + (curs * msg.value) + stor12[address(arg1)] <= capTokens
                            require totalSupply + (curs * msg.value) + stor12[address(arg1)] >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(arg1)]
                            require 19 * (curs * msg.value) + stor12[address(arg1)] / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(arg1)] + (19 * (curs * msg.value) + stor12[address(arg1)] / 50)
                            require balanceOf[address(arg1)] + (curs * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs * msg.value) + stor12[address(arg1)]
                            require balanceOf[stor3] + (19 * (curs * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + stor12[address(arg1)] / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + ((curs * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs * msg.value) + stor12[address(arg1)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + stor12[address(arg1)], curs, arg1);
                            emit Transfer(((curs * msg.value) + stor12[address(arg1)]), 0, arg1);
                            emit Transfer((19 * (curs * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (curs * msg.value) >= 0
                            require (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) >= curs * msg.value
                            require (curs * msg.value) + capTokens - (curs * msg.value) >= totalTokens
                            totalTokens = (curs * msg.value) + capTokens - (curs * msg.value)
                            require (curs * msg.value) + capTokens - (curs * msg.value) <= capTokens
                            require totalSupply + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value)
                            require 19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) + (19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50)
                            require balanceOf[address(arg1)] + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value)
                            require balanceOf[stor3] + (19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + ((curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + capTokens - totalTokens - (curs * msg.value), curs, arg1);
                            emit Transfer(((curs * msg.value) + capTokens - totalTokens - (curs * msg.value)), 0, arg1);
                            emit Transfer((19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50), 0, owner);
                else:
                    if curs * msg.value <= 0:
                        if stor12[address(arg1)] <= curs * msg.value:
                            require stor12[address(arg1)] >= 0
                            require (curs * msg.value) + stor12[address(arg1)] >= curs * msg.value
                            require totalTokens + (curs * msg.value) + stor12[address(arg1)] >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + stor12[address(arg1)]
                            require totalTokens + (curs * msg.value) + stor12[address(arg1)] <= capTokens
                            require totalSupply + (curs * msg.value) + stor12[address(arg1)] >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(arg1)]
                            require 19 * (curs * msg.value) + stor12[address(arg1)] / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(arg1)] + (19 * (curs * msg.value) + stor12[address(arg1)] / 50)
                            require balanceOf[address(arg1)] + (curs * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs * msg.value) + stor12[address(arg1)]
                            require balanceOf[stor3] + (19 * (curs * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + stor12[address(arg1)] / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + ((curs * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs * msg.value) + stor12[address(arg1)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + stor12[address(arg1)], curs, arg1);
                            emit Transfer(((curs * msg.value) + stor12[address(arg1)]), 0, arg1);
                            emit Transfer((19 * (curs * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                        else:
                            require curs * msg.value >= 0
                            require (curs * msg.value) + (curs * msg.value) >= curs * msg.value
                            require totalTokens + (curs * msg.value) + (curs * msg.value) >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + (curs * msg.value)
                            require totalTokens + (curs * msg.value) + (curs * msg.value) <= capTokens
                            require totalSupply + (curs * msg.value) + (curs * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + (curs * msg.value)
                            require 19 * (curs * msg.value) + (curs * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + (curs * msg.value) + (19 * (curs * msg.value) + (curs * msg.value) / 50)
                            require balanceOf[address(arg1)] + (curs * msg.value) + (curs * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs * msg.value) + (curs * msg.value)
                            require balanceOf[stor3] + (19 * (curs * msg.value) + (curs * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + (curs * msg.value) / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + ((curs * msg.value) + (curs * msg.value) / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs * msg.value) + (curs * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + (curs * msg.value), curs, arg1);
                            emit Transfer(((curs * msg.value) + (curs * msg.value)), 0, arg1);
                            emit Transfer((19 * (curs * msg.value) + (curs * msg.value) / 50), 0, owner);
                    else:
                        if stor12[address(arg1)] > 0:
                            require curs * msg.value >= curs * msg.value
                            require totalTokens + (curs * msg.value) >= totalTokens
                            totalTokens += curs * msg.value
                            require totalTokens + (curs * msg.value) <= capTokens
                            require totalSupply + (curs * msg.value) >= totalSupply
                            totalSupply += curs * msg.value
                            require 19 * curs * msg.value / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + (19 * curs * msg.value / 50)
                            require balanceOf[address(arg1)] + (curs * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += curs * msg.value
                            require balanceOf[stor3] + (19 * curs * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * curs * msg.value / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + (curs * msg.value / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += curs * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, curs * msg.value, curs, arg1);
                            emit Transfer((curs * msg.value), 0, arg1);
                            emit Transfer((19 * curs * msg.value / 50), 0, owner);
                        else:
                            require stor12[address(arg1)] >= 0
                            require (curs * msg.value) + stor12[address(arg1)] >= curs * msg.value
                            require totalTokens + (curs * msg.value) + stor12[address(arg1)] >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + stor12[address(arg1)]
                            require totalTokens + (curs * msg.value) + stor12[address(arg1)] <= capTokens
                            require totalSupply + (curs * msg.value) + stor12[address(arg1)] >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(arg1)]
                            require 19 * (curs * msg.value) + stor12[address(arg1)] / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(arg1)] + (19 * (curs * msg.value) + stor12[address(arg1)] / 50)
                            require balanceOf[address(arg1)] + (curs * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] = balanceOf[address(arg1)] + (curs * msg.value) + stor12[address(arg1)]
                            require balanceOf[stor3] + (19 * (curs * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + stor12[address(arg1)] / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + ((curs * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += (curs * msg.value) + stor12[address(arg1)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + stor12[address(arg1)], curs, arg1);
                            emit Transfer(((curs * msg.value) + stor12[address(arg1)]), 0, arg1);
                            emit Transfer((19 * (curs * msg.value) + stor12[address(arg1)] / 50), 0, owner);
    else:
        if block.timestamp < startDate + 600:
            require 5 * curs / 6 * msg.value > 0
            require totalTokens + (5 * curs / 6 * msg.value) >= totalTokens
            if block.timestamp < startDate + 1200:
                totalTokens += 5 * curs / 6 * msg.value
                require totalTokens + (5 * curs / 6 * msg.value) <= capTokens
                require totalSupply + (5 * curs / 6 * msg.value) >= totalSupply
                totalSupply += 5 * curs / 6 * msg.value
                require 19 * 5 * curs / 6 * msg.value / 50 >= 0
                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (19 * 5 * curs / 6 * msg.value / 50)
                require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) >= balanceOf[address(arg1)]
                balanceOf[address(arg1)] += 5 * curs / 6 * msg.value
                require balanceOf[stor3] + (19 * 5 * curs / 6 * msg.value / 50) >= balanceOf[stor3]
                balanceOf[stor3] += 19 * 5 * curs / 6 * msg.value / 50
                if block.timestamp < startDate + 300:
                    require stor12[address(arg1)] + (5 * curs / 6 * msg.value / 2) >= stor12[address(arg1)]
                    stor12[address(arg1)] += 5 * curs / 6 * msg.value / 2
                emit BoughtTokens(msg.value, totalEthers, 5 * curs / 6 * msg.value, 5 * curs / 6, arg1);
                emit Transfer((5 * curs / 6 * msg.value), 0, arg1);
                emit Transfer((19 * 5 * curs / 6 * msg.value / 50), 0, owner);
            else:
                if block.timestamp > endDate:
                    totalTokens += 5 * curs / 6 * msg.value
                    require totalTokens + (5 * curs / 6 * msg.value) <= capTokens
                    require totalSupply + (5 * curs / 6 * msg.value) >= totalSupply
                    totalSupply += 5 * curs / 6 * msg.value
                    require 19 * 5 * curs / 6 * msg.value / 50 >= 0
                    totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (19 * 5 * curs / 6 * msg.value / 50)
                    require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 5 * curs / 6 * msg.value
                    require balanceOf[stor3] + (19 * 5 * curs / 6 * msg.value / 50) >= balanceOf[stor3]
                    balanceOf[stor3] += 19 * 5 * curs / 6 * msg.value / 50
                    if block.timestamp < startDate + 300:
                        require stor12[address(arg1)] + (5 * curs / 6 * msg.value / 2) >= stor12[address(arg1)]
                        stor12[address(arg1)] += 5 * curs / 6 * msg.value / 2
                    emit BoughtTokens(msg.value, totalEthers, 5 * curs / 6 * msg.value, 5 * curs / 6, arg1);
                    emit Transfer((5 * curs / 6 * msg.value), 0, arg1);
                    emit Transfer((19 * 5 * curs / 6 * msg.value / 50), 0, owner);
                else:
                    require capTokens - totalTokens - (5 * curs / 6 * msg.value) <= capTokens
                    if capTokens - totalTokens - (5 * curs / 6 * msg.value) > 0:
                        if 5 * curs / 6 * msg.value <= capTokens - totalTokens - (5 * curs / 6 * msg.value):
                            if stor12[address(arg1)] <= 5 * curs / 6 * msg.value:
                                require stor12[address(arg1)] >= 0
                                require (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)] <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require 19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)] + (19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50)
                                require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(arg1)] + ((5 * curs / 6 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + stor12[address(arg1)], 5 * curs / 6, arg1);
                                emit Transfer(((5 * curs / 6 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                            else:
                                require 5 * curs / 6 * msg.value >= 0
                                require (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require 19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) + (19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50)
                                require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(arg1)] + ((5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value), 5 * curs / 6, arg1);
                                emit Transfer(((5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)), 0, arg1);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50), 0, owner);
                        else:
                            if stor12[address(arg1)] <= capTokens - totalTokens - (5 * curs / 6 * msg.value):
                                require stor12[address(arg1)] >= 0
                                require (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)] <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require 19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)] + (19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50)
                                require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(arg1)] + ((5 * curs / 6 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + stor12[address(arg1)], 5 * curs / 6, arg1);
                                emit Transfer(((5 * curs / 6 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                            else:
                                require capTokens - totalTokens - (5 * curs / 6 * msg.value) >= 0
                                require (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) >= 5 * curs / 6 * msg.value
                                require (5 * curs / 6 * msg.value) + capTokens - (5 * curs / 6 * msg.value) >= totalTokens
                                totalTokens = (5 * curs / 6 * msg.value) + capTokens - (5 * curs / 6 * msg.value)
                                require (5 * curs / 6 * msg.value) + capTokens - (5 * curs / 6 * msg.value) <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value)
                                require 19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) + (19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50)
                                require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value)
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(arg1)] + ((5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value), 5 * curs / 6, arg1);
                                emit Transfer(((5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value)), 0, arg1);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50), 0, owner);
                    else:
                        if 5 * curs / 6 * msg.value <= 0:
                            if stor12[address(arg1)] <= 5 * curs / 6 * msg.value:
                                require stor12[address(arg1)] >= 0
                                require (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)] <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require 19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)] + (19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50)
                                require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(arg1)] + ((5 * curs / 6 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + stor12[address(arg1)], 5 * curs / 6, arg1);
                                emit Transfer(((5 * curs / 6 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                            else:
                                require 5 * curs / 6 * msg.value >= 0
                                require (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require 19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) + (19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50)
                                require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(arg1)] + ((5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value), 5 * curs / 6, arg1);
                                emit Transfer(((5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)), 0, arg1);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50), 0, owner);
                        else:
                            if stor12[address(arg1)] > 0:
                                require 5 * curs / 6 * msg.value >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) >= totalTokens
                                totalTokens += 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) >= totalSupply
                                totalSupply += 5 * curs / 6 * msg.value
                                require 19 * 5 * curs / 6 * msg.value / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (19 * 5 * curs / 6 * msg.value / 50)
                                require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] += 5 * curs / 6 * msg.value
                                require balanceOf[stor3] + (19 * 5 * curs / 6 * msg.value / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * 5 * curs / 6 * msg.value / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(arg1)] + (5 * curs / 6 * msg.value / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += 5 * curs / 6 * msg.value / 2
                                emit BoughtTokens(msg.value, totalEthers, 5 * curs / 6 * msg.value, 5 * curs / 6, arg1);
                                emit Transfer((5 * curs / 6 * msg.value), 0, arg1);
                                emit Transfer((19 * 5 * curs / 6 * msg.value / 50), 0, owner);
                            else:
                                require stor12[address(arg1)] >= 0
                                require (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(arg1)] <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require 19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(arg1)] + (19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50)
                                require balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 6 * msg.value) + stor12[address(arg1)]
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(arg1)] + ((5 * curs / 6 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                    stor12[address(arg1)] += (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + stor12[address(arg1)], 5 * curs / 6, arg1);
                                emit Transfer(((5 * curs / 6 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
        else:
            if block.timestamp < startDate + 900:
                require 10 * curs / 13 * msg.value > 0
                require totalTokens + (10 * curs / 13 * msg.value) >= totalTokens
                if block.timestamp < startDate + 1200:
                    totalTokens += 10 * curs / 13 * msg.value
                    require totalTokens + (10 * curs / 13 * msg.value) <= capTokens
                    require totalSupply + (10 * curs / 13 * msg.value) >= totalSupply
                    totalSupply += 10 * curs / 13 * msg.value
                    require 19 * 10 * curs / 13 * msg.value / 50 >= 0
                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (19 * 10 * curs / 13 * msg.value / 50)
                    require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) >= balanceOf[address(arg1)]
                    balanceOf[address(arg1)] += 10 * curs / 13 * msg.value
                    require balanceOf[stor3] + (19 * 10 * curs / 13 * msg.value / 50) >= balanceOf[stor3]
                    balanceOf[stor3] += 19 * 10 * curs / 13 * msg.value / 50
                    if block.timestamp < startDate + 300:
                        require stor12[address(arg1)] + (10 * curs / 13 * msg.value / 2) >= stor12[address(arg1)]
                        stor12[address(arg1)] += 10 * curs / 13 * msg.value / 2
                    emit BoughtTokens(msg.value, totalEthers, 10 * curs / 13 * msg.value, 10 * curs / 13, arg1);
                    emit Transfer((10 * curs / 13 * msg.value), 0, arg1);
                    emit Transfer((19 * 10 * curs / 13 * msg.value / 50), 0, owner);
                else:
                    if block.timestamp > endDate:
                        totalTokens += 10 * curs / 13 * msg.value
                        require totalTokens + (10 * curs / 13 * msg.value) <= capTokens
                        require totalSupply + (10 * curs / 13 * msg.value) >= totalSupply
                        totalSupply += 10 * curs / 13 * msg.value
                        require 19 * 10 * curs / 13 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (19 * 10 * curs / 13 * msg.value / 50)
                        require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 10 * curs / 13 * msg.value
                        require balanceOf[stor3] + (19 * 10 * curs / 13 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * 10 * curs / 13 * msg.value / 50
                        if block.timestamp < startDate + 300:
                            require stor12[address(arg1)] + (10 * curs / 13 * msg.value / 2) >= stor12[address(arg1)]
                            stor12[address(arg1)] += 10 * curs / 13 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, 10 * curs / 13 * msg.value, 10 * curs / 13, arg1);
                        emit Transfer((10 * curs / 13 * msg.value), 0, arg1);
                        emit Transfer((19 * 10 * curs / 13 * msg.value / 50), 0, owner);
                    else:
                        require capTokens - totalTokens - (10 * curs / 13 * msg.value) <= capTokens
                        if capTokens - totalTokens - (10 * curs / 13 * msg.value) > 0:
                            if 10 * curs / 13 * msg.value <= capTokens - totalTokens - (10 * curs / 13 * msg.value):
                                if stor12[address(arg1)] <= 10 * curs / 13 * msg.value:
                                    require stor12[address(arg1)] >= 0
                                    require (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)] <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require 19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)] + (19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50)
                                    require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(arg1)] + ((10 * curs / 13 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + stor12[address(arg1)], 10 * curs / 13, arg1);
                                    emit Transfer(((10 * curs / 13 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                else:
                                    require 10 * curs / 13 * msg.value >= 0
                                    require (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require 19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) + (19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50)
                                    require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(arg1)] + ((10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value), 10 * curs / 13, arg1);
                                    emit Transfer(((10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)), 0, arg1);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50), 0, owner);
                            else:
                                if stor12[address(arg1)] <= capTokens - totalTokens - (10 * curs / 13 * msg.value):
                                    require stor12[address(arg1)] >= 0
                                    require (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)] <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require 19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)] + (19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50)
                                    require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(arg1)] + ((10 * curs / 13 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + stor12[address(arg1)], 10 * curs / 13, arg1);
                                    emit Transfer(((10 * curs / 13 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                else:
                                    require capTokens - totalTokens - (10 * curs / 13 * msg.value) >= 0
                                    require (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) >= 10 * curs / 13 * msg.value
                                    require (10 * curs / 13 * msg.value) + capTokens - (10 * curs / 13 * msg.value) >= totalTokens
                                    totalTokens = (10 * curs / 13 * msg.value) + capTokens - (10 * curs / 13 * msg.value)
                                    require (10 * curs / 13 * msg.value) + capTokens - (10 * curs / 13 * msg.value) <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value)
                                    require 19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) + (19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50)
                                    require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value)
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(arg1)] + ((10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value), 10 * curs / 13, arg1);
                                    emit Transfer(((10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value)), 0, arg1);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50), 0, owner);
                        else:
                            if 10 * curs / 13 * msg.value <= 0:
                                if stor12[address(arg1)] <= 10 * curs / 13 * msg.value:
                                    require stor12[address(arg1)] >= 0
                                    require (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)] <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require 19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)] + (19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50)
                                    require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(arg1)] + ((10 * curs / 13 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + stor12[address(arg1)], 10 * curs / 13, arg1);
                                    emit Transfer(((10 * curs / 13 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                else:
                                    require 10 * curs / 13 * msg.value >= 0
                                    require (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require 19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) + (19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50)
                                    require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(arg1)] + ((10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value), 10 * curs / 13, arg1);
                                    emit Transfer(((10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)), 0, arg1);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50), 0, owner);
                            else:
                                if stor12[address(arg1)] > 0:
                                    require 10 * curs / 13 * msg.value >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) >= totalTokens
                                    totalTokens += 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) >= totalSupply
                                    totalSupply += 10 * curs / 13 * msg.value
                                    require 19 * 10 * curs / 13 * msg.value / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (19 * 10 * curs / 13 * msg.value / 50)
                                    require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] += 10 * curs / 13 * msg.value
                                    require balanceOf[stor3] + (19 * 10 * curs / 13 * msg.value / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * 10 * curs / 13 * msg.value / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(arg1)] + (10 * curs / 13 * msg.value / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += 10 * curs / 13 * msg.value / 2
                                    emit BoughtTokens(msg.value, totalEthers, 10 * curs / 13 * msg.value, 10 * curs / 13, arg1);
                                    emit Transfer((10 * curs / 13 * msg.value), 0, arg1);
                                    emit Transfer((19 * 10 * curs / 13 * msg.value / 50), 0, owner);
                                else:
                                    require stor12[address(arg1)] >= 0
                                    require (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(arg1)] <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require 19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(arg1)] + (19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50)
                                    require balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                    balanceOf[address(arg1)] = balanceOf[address(arg1)] + (10 * curs / 13 * msg.value) + stor12[address(arg1)]
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(arg1)] + ((10 * curs / 13 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                        stor12[address(arg1)] += (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + stor12[address(arg1)], 10 * curs / 13, arg1);
                                    emit Transfer(((10 * curs / 13 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
            else:
                if block.timestamp < startDate + 1200:
                    require 5 * curs / 7 * msg.value > 0
                    require totalTokens + (5 * curs / 7 * msg.value) >= totalTokens
                    if block.timestamp < startDate + 1200:
                        totalTokens += 5 * curs / 7 * msg.value
                        require totalTokens + (5 * curs / 7 * msg.value) <= capTokens
                        require totalSupply + (5 * curs / 7 * msg.value) >= totalSupply
                        totalSupply += 5 * curs / 7 * msg.value
                        require 19 * 5 * curs / 7 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (19 * 5 * curs / 7 * msg.value / 50)
                        require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 5 * curs / 7 * msg.value
                        require balanceOf[stor3] + (19 * 5 * curs / 7 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * 5 * curs / 7 * msg.value / 50
                        if block.timestamp < startDate + 300:
                            require stor12[address(arg1)] + (5 * curs / 7 * msg.value / 2) >= stor12[address(arg1)]
                            stor12[address(arg1)] += 5 * curs / 7 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, 5 * curs / 7 * msg.value, 5 * curs / 7, arg1);
                        emit Transfer((5 * curs / 7 * msg.value), 0, arg1);
                        emit Transfer((19 * 5 * curs / 7 * msg.value / 50), 0, owner);
                    else:
                        if block.timestamp > endDate:
                            totalTokens += 5 * curs / 7 * msg.value
                            require totalTokens + (5 * curs / 7 * msg.value) <= capTokens
                            require totalSupply + (5 * curs / 7 * msg.value) >= totalSupply
                            totalSupply += 5 * curs / 7 * msg.value
                            require 19 * 5 * curs / 7 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (19 * 5 * curs / 7 * msg.value / 50)
                            require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 5 * curs / 7 * msg.value
                            require balanceOf[stor3] + (19 * 5 * curs / 7 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * 5 * curs / 7 * msg.value / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + (5 * curs / 7 * msg.value / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += 5 * curs / 7 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, 5 * curs / 7 * msg.value, 5 * curs / 7, arg1);
                            emit Transfer((5 * curs / 7 * msg.value), 0, arg1);
                            emit Transfer((19 * 5 * curs / 7 * msg.value / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (5 * curs / 7 * msg.value) <= capTokens
                            if capTokens - totalTokens - (5 * curs / 7 * msg.value) > 0:
                                if 5 * curs / 7 * msg.value <= capTokens - totalTokens - (5 * curs / 7 * msg.value):
                                    if stor12[address(arg1)] <= 5 * curs / 7 * msg.value:
                                        require stor12[address(arg1)] >= 0
                                        require (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require 19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)] + (19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((5 * curs / 7 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + stor12[address(arg1)], 5 * curs / 7, arg1);
                                        emit Transfer(((5 * curs / 7 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require 5 * curs / 7 * msg.value >= 0
                                        require (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require 19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) + (19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value), 5 * curs / 7, arg1);
                                        emit Transfer(((5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(arg1)] <= capTokens - totalTokens - (5 * curs / 7 * msg.value):
                                        require stor12[address(arg1)] >= 0
                                        require (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require 19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)] + (19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((5 * curs / 7 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + stor12[address(arg1)], 5 * curs / 7, arg1);
                                        emit Transfer(((5 * curs / 7 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require capTokens - totalTokens - (5 * curs / 7 * msg.value) >= 0
                                        require (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) >= 5 * curs / 7 * msg.value
                                        require (5 * curs / 7 * msg.value) + capTokens - (5 * curs / 7 * msg.value) >= totalTokens
                                        totalTokens = (5 * curs / 7 * msg.value) + capTokens - (5 * curs / 7 * msg.value)
                                        require (5 * curs / 7 * msg.value) + capTokens - (5 * curs / 7 * msg.value) <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value)
                                        require 19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) + (19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value)
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value), 5 * curs / 7, arg1);
                                        emit Transfer(((5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50), 0, owner);
                            else:
                                if 5 * curs / 7 * msg.value <= 0:
                                    if stor12[address(arg1)] <= 5 * curs / 7 * msg.value:
                                        require stor12[address(arg1)] >= 0
                                        require (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require 19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)] + (19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((5 * curs / 7 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + stor12[address(arg1)], 5 * curs / 7, arg1);
                                        emit Transfer(((5 * curs / 7 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require 5 * curs / 7 * msg.value >= 0
                                        require (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require 19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) + (19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value), 5 * curs / 7, arg1);
                                        emit Transfer(((5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(arg1)] > 0:
                                        require 5 * curs / 7 * msg.value >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) >= totalTokens
                                        totalTokens += 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) >= totalSupply
                                        totalSupply += 5 * curs / 7 * msg.value
                                        require 19 * 5 * curs / 7 * msg.value / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (19 * 5 * curs / 7 * msg.value / 50)
                                        require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += 5 * curs / 7 * msg.value
                                        require balanceOf[stor3] + (19 * 5 * curs / 7 * msg.value / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * 5 * curs / 7 * msg.value / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + (5 * curs / 7 * msg.value / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += 5 * curs / 7 * msg.value / 2
                                        emit BoughtTokens(msg.value, totalEthers, 5 * curs / 7 * msg.value, 5 * curs / 7, arg1);
                                        emit Transfer((5 * curs / 7 * msg.value), 0, arg1);
                                        emit Transfer((19 * 5 * curs / 7 * msg.value / 50), 0, owner);
                                    else:
                                        require stor12[address(arg1)] >= 0
                                        require (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require 19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(arg1)] + (19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (5 * curs / 7 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((5 * curs / 7 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + stor12[address(arg1)], 5 * curs / 7, arg1);
                                        emit Transfer(((5 * curs / 7 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                else:
                    require block.timestamp <= endDate
                    require 2 * curs / 3 * msg.value > 0
                    require totalTokens + (2 * curs / 3 * msg.value) >= totalTokens
                    if block.timestamp < startDate + 1200:
                        totalTokens += 2 * curs / 3 * msg.value
                        require totalTokens + (2 * curs / 3 * msg.value) <= capTokens
                        require totalSupply + (2 * curs / 3 * msg.value) >= totalSupply
                        totalSupply += 2 * curs / 3 * msg.value
                        require 19 * 2 * curs / 3 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (19 * 2 * curs / 3 * msg.value / 50)
                        require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) >= balanceOf[address(arg1)]
                        balanceOf[address(arg1)] += 2 * curs / 3 * msg.value
                        require balanceOf[stor3] + (19 * 2 * curs / 3 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * 2 * curs / 3 * msg.value / 50
                        if block.timestamp < startDate + 300:
                            require stor12[address(arg1)] + (2 * curs / 3 * msg.value / 2) >= stor12[address(arg1)]
                            stor12[address(arg1)] += 2 * curs / 3 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, 2 * curs / 3 * msg.value, 2 * curs / 3, arg1);
                        emit Transfer((2 * curs / 3 * msg.value), 0, arg1);
                        emit Transfer((19 * 2 * curs / 3 * msg.value / 50), 0, owner);
                    else:
                        if block.timestamp > endDate:
                            totalTokens += 2 * curs / 3 * msg.value
                            require totalTokens + (2 * curs / 3 * msg.value) <= capTokens
                            require totalSupply + (2 * curs / 3 * msg.value) >= totalSupply
                            totalSupply += 2 * curs / 3 * msg.value
                            require 19 * 2 * curs / 3 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (19 * 2 * curs / 3 * msg.value / 50)
                            require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) >= balanceOf[address(arg1)]
                            balanceOf[address(arg1)] += 2 * curs / 3 * msg.value
                            require balanceOf[stor3] + (19 * 2 * curs / 3 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * 2 * curs / 3 * msg.value / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(arg1)] + (2 * curs / 3 * msg.value / 2) >= stor12[address(arg1)]
                                stor12[address(arg1)] += 2 * curs / 3 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, 2 * curs / 3 * msg.value, 2 * curs / 3, arg1);
                            emit Transfer((2 * curs / 3 * msg.value), 0, arg1);
                            emit Transfer((19 * 2 * curs / 3 * msg.value / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (2 * curs / 3 * msg.value) <= capTokens
                            if capTokens - totalTokens - (2 * curs / 3 * msg.value) > 0:
                                if 2 * curs / 3 * msg.value <= capTokens - totalTokens - (2 * curs / 3 * msg.value):
                                    if stor12[address(arg1)] <= 2 * curs / 3 * msg.value:
                                        require stor12[address(arg1)] >= 0
                                        require (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require 19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)] + (19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((2 * curs / 3 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + stor12[address(arg1)], 2 * curs / 3, arg1);
                                        emit Transfer(((2 * curs / 3 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require 2 * curs / 3 * msg.value >= 0
                                        require (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require 19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) + (19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value), 2 * curs / 3, arg1);
                                        emit Transfer(((2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(arg1)] <= capTokens - totalTokens - (2 * curs / 3 * msg.value):
                                        require stor12[address(arg1)] >= 0
                                        require (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require 19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)] + (19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((2 * curs / 3 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + stor12[address(arg1)], 2 * curs / 3, arg1);
                                        emit Transfer(((2 * curs / 3 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require capTokens - totalTokens - (2 * curs / 3 * msg.value) >= 0
                                        require (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) >= 2 * curs / 3 * msg.value
                                        require (2 * curs / 3 * msg.value) + capTokens - (2 * curs / 3 * msg.value) >= totalTokens
                                        totalTokens = (2 * curs / 3 * msg.value) + capTokens - (2 * curs / 3 * msg.value)
                                        require (2 * curs / 3 * msg.value) + capTokens - (2 * curs / 3 * msg.value) <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value)
                                        require 19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) + (19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value)
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value), 2 * curs / 3, arg1);
                                        emit Transfer(((2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50), 0, owner);
                            else:
                                if 2 * curs / 3 * msg.value <= 0:
                                    if stor12[address(arg1)] <= 2 * curs / 3 * msg.value:
                                        require stor12[address(arg1)] >= 0
                                        require (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require 19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)] + (19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((2 * curs / 3 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + stor12[address(arg1)], 2 * curs / 3, arg1);
                                        emit Transfer(((2 * curs / 3 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
                                    else:
                                        require 2 * curs / 3 * msg.value >= 0
                                        require (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require 19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) + (19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50)
                                        require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value), 2 * curs / 3, arg1);
                                        emit Transfer(((2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)), 0, arg1);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(arg1)] > 0:
                                        require 2 * curs / 3 * msg.value >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) >= totalTokens
                                        totalTokens += 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) >= totalSupply
                                        totalSupply += 2 * curs / 3 * msg.value
                                        require 19 * 2 * curs / 3 * msg.value / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (19 * 2 * curs / 3 * msg.value / 50)
                                        require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] += 2 * curs / 3 * msg.value
                                        require balanceOf[stor3] + (19 * 2 * curs / 3 * msg.value / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * 2 * curs / 3 * msg.value / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + (2 * curs / 3 * msg.value / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += 2 * curs / 3 * msg.value / 2
                                        emit BoughtTokens(msg.value, totalEthers, 2 * curs / 3 * msg.value, 2 * curs / 3, arg1);
                                        emit Transfer((2 * curs / 3 * msg.value), 0, arg1);
                                        emit Transfer((19 * 2 * curs / 3 * msg.value / 50), 0, owner);
                                    else:
                                        require stor12[address(arg1)] >= 0
                                        require (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(arg1)] <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require 19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(arg1)] + (19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50)
                                        require balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + stor12[address(arg1)] >= balanceOf[address(arg1)]
                                        balanceOf[address(arg1)] = balanceOf[address(arg1)] + (2 * curs / 3 * msg.value) + stor12[address(arg1)]
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(arg1)] + ((2 * curs / 3 * msg.value) + stor12[address(arg1)] / 2) >= stor12[address(arg1)]
                                            stor12[address(arg1)] += (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + stor12[address(arg1)], 2 * curs / 3, arg1);
                                        emit Transfer(((2 * curs / 3 * msg.value) + stor12[address(arg1)]), 0, arg1);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + stor12[address(arg1)] / 50), 0, owner);
}

function _fallback() payable {
    require block.timestamp >= startDate
    require block.timestamp <= endDate
    require msg.value > 0
    require totalEthers + msg.value >= totalEthers
    totalEthers += msg.value
    require block.timestamp >= startDate
    if block.timestamp < startDate + 300:
        require curs * msg.value > 0
        require totalTokens + (curs * msg.value) >= totalTokens
        if block.timestamp < startDate + 1200:
            totalTokens += curs * msg.value
            require totalTokens + (curs * msg.value) <= capTokens
            require totalSupply + (curs * msg.value) >= totalSupply
            totalSupply += curs * msg.value
            require 19 * curs * msg.value / 50 >= 0
            totalSupply = totalSupply + (curs * msg.value) + (19 * curs * msg.value / 50)
            require balanceOf[address(msg.sender)] + (curs * msg.value) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += curs * msg.value
            require balanceOf[stor3] + (19 * curs * msg.value / 50) >= balanceOf[stor3]
            balanceOf[stor3] += 19 * curs * msg.value / 50
            if block.timestamp < startDate + 300:
                require stor12[address(msg.sender)] + (curs * msg.value / 2) >= stor12[address(msg.sender)]
                stor12[address(msg.sender)] += curs * msg.value / 2
            emit BoughtTokens(msg.value, totalEthers, curs * msg.value, curs, msg.sender);
            emit Transfer((curs * msg.value), 0, msg.sender);
            emit Transfer((19 * curs * msg.value / 50), 0, owner);
        else:
            if block.timestamp > endDate:
                totalTokens += curs * msg.value
                require totalTokens + (curs * msg.value) <= capTokens
                require totalSupply + (curs * msg.value) >= totalSupply
                totalSupply += curs * msg.value
                require 19 * curs * msg.value / 50 >= 0
                totalSupply = totalSupply + (curs * msg.value) + (19 * curs * msg.value / 50)
                require balanceOf[address(msg.sender)] + (curs * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += curs * msg.value
                require balanceOf[stor3] + (19 * curs * msg.value / 50) >= balanceOf[stor3]
                balanceOf[stor3] += 19 * curs * msg.value / 50
                if block.timestamp < startDate + 300:
                    require stor12[address(msg.sender)] + (curs * msg.value / 2) >= stor12[address(msg.sender)]
                    stor12[address(msg.sender)] += curs * msg.value / 2
                emit BoughtTokens(msg.value, totalEthers, curs * msg.value, curs, msg.sender);
                emit Transfer((curs * msg.value), 0, msg.sender);
                emit Transfer((19 * curs * msg.value / 50), 0, owner);
            else:
                require capTokens - totalTokens - (curs * msg.value) <= capTokens
                if capTokens - totalTokens - (curs * msg.value) > 0:
                    if curs * msg.value <= capTokens - totalTokens - (curs * msg.value):
                        if stor12[address(msg.sender)] <= curs * msg.value:
                            require stor12[address(msg.sender)] >= 0
                            require (curs * msg.value) + stor12[address(msg.sender)] >= curs * msg.value
                            require totalTokens + (curs * msg.value) + stor12[address(msg.sender)] >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + stor12[address(msg.sender)]
                            require totalTokens + (curs * msg.value) + stor12[address(msg.sender)] <= capTokens
                            require totalSupply + (curs * msg.value) + stor12[address(msg.sender)] >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(msg.sender)]
                            require 19 * (curs * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(msg.sender)] + (19 * (curs * msg.value) + stor12[address(msg.sender)] / 50)
                            require balanceOf[address(msg.sender)] + (curs * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs * msg.value) + stor12[address(msg.sender)]
                            require balanceOf[stor3] + (19 * (curs * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + stor12[address(msg.sender)] / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + ((curs * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs * msg.value) + stor12[address(msg.sender)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + stor12[address(msg.sender)], curs, msg.sender);
                            emit Transfer(((curs * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                            emit Transfer((19 * (curs * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                        else:
                            require curs * msg.value >= 0
                            require (curs * msg.value) + (curs * msg.value) >= curs * msg.value
                            require totalTokens + (curs * msg.value) + (curs * msg.value) >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + (curs * msg.value)
                            require totalTokens + (curs * msg.value) + (curs * msg.value) <= capTokens
                            require totalSupply + (curs * msg.value) + (curs * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + (curs * msg.value)
                            require 19 * (curs * msg.value) + (curs * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + (curs * msg.value) + (19 * (curs * msg.value) + (curs * msg.value) / 50)
                            require balanceOf[address(msg.sender)] + (curs * msg.value) + (curs * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs * msg.value) + (curs * msg.value)
                            require balanceOf[stor3] + (19 * (curs * msg.value) + (curs * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + (curs * msg.value) / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + ((curs * msg.value) + (curs * msg.value) / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs * msg.value) + (curs * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + (curs * msg.value), curs, msg.sender);
                            emit Transfer(((curs * msg.value) + (curs * msg.value)), 0, msg.sender);
                            emit Transfer((19 * (curs * msg.value) + (curs * msg.value) / 50), 0, owner);
                    else:
                        if stor12[address(msg.sender)] <= capTokens - totalTokens - (curs * msg.value):
                            require stor12[address(msg.sender)] >= 0
                            require (curs * msg.value) + stor12[address(msg.sender)] >= curs * msg.value
                            require totalTokens + (curs * msg.value) + stor12[address(msg.sender)] >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + stor12[address(msg.sender)]
                            require totalTokens + (curs * msg.value) + stor12[address(msg.sender)] <= capTokens
                            require totalSupply + (curs * msg.value) + stor12[address(msg.sender)] >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(msg.sender)]
                            require 19 * (curs * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(msg.sender)] + (19 * (curs * msg.value) + stor12[address(msg.sender)] / 50)
                            require balanceOf[address(msg.sender)] + (curs * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs * msg.value) + stor12[address(msg.sender)]
                            require balanceOf[stor3] + (19 * (curs * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + stor12[address(msg.sender)] / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + ((curs * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs * msg.value) + stor12[address(msg.sender)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + stor12[address(msg.sender)], curs, msg.sender);
                            emit Transfer(((curs * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                            emit Transfer((19 * (curs * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (curs * msg.value) >= 0
                            require (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) >= curs * msg.value
                            require (curs * msg.value) + capTokens - (curs * msg.value) >= totalTokens
                            totalTokens = (curs * msg.value) + capTokens - (curs * msg.value)
                            require (curs * msg.value) + capTokens - (curs * msg.value) <= capTokens
                            require totalSupply + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value)
                            require 19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) + (19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50)
                            require balanceOf[address(msg.sender)] + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs * msg.value) + capTokens - totalTokens - (curs * msg.value)
                            require balanceOf[stor3] + (19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + ((curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + capTokens - totalTokens - (curs * msg.value), curs, msg.sender);
                            emit Transfer(((curs * msg.value) + capTokens - totalTokens - (curs * msg.value)), 0, msg.sender);
                            emit Transfer((19 * (curs * msg.value) + capTokens - totalTokens - (curs * msg.value) / 50), 0, owner);
                else:
                    if curs * msg.value <= 0:
                        if stor12[address(msg.sender)] <= curs * msg.value:
                            require stor12[address(msg.sender)] >= 0
                            require (curs * msg.value) + stor12[address(msg.sender)] >= curs * msg.value
                            require totalTokens + (curs * msg.value) + stor12[address(msg.sender)] >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + stor12[address(msg.sender)]
                            require totalTokens + (curs * msg.value) + stor12[address(msg.sender)] <= capTokens
                            require totalSupply + (curs * msg.value) + stor12[address(msg.sender)] >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(msg.sender)]
                            require 19 * (curs * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(msg.sender)] + (19 * (curs * msg.value) + stor12[address(msg.sender)] / 50)
                            require balanceOf[address(msg.sender)] + (curs * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs * msg.value) + stor12[address(msg.sender)]
                            require balanceOf[stor3] + (19 * (curs * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + stor12[address(msg.sender)] / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + ((curs * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs * msg.value) + stor12[address(msg.sender)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + stor12[address(msg.sender)], curs, msg.sender);
                            emit Transfer(((curs * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                            emit Transfer((19 * (curs * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                        else:
                            require curs * msg.value >= 0
                            require (curs * msg.value) + (curs * msg.value) >= curs * msg.value
                            require totalTokens + (curs * msg.value) + (curs * msg.value) >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + (curs * msg.value)
                            require totalTokens + (curs * msg.value) + (curs * msg.value) <= capTokens
                            require totalSupply + (curs * msg.value) + (curs * msg.value) >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + (curs * msg.value)
                            require 19 * (curs * msg.value) + (curs * msg.value) / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + (curs * msg.value) + (19 * (curs * msg.value) + (curs * msg.value) / 50)
                            require balanceOf[address(msg.sender)] + (curs * msg.value) + (curs * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs * msg.value) + (curs * msg.value)
                            require balanceOf[stor3] + (19 * (curs * msg.value) + (curs * msg.value) / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + (curs * msg.value) / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + ((curs * msg.value) + (curs * msg.value) / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs * msg.value) + (curs * msg.value) / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + (curs * msg.value), curs, msg.sender);
                            emit Transfer(((curs * msg.value) + (curs * msg.value)), 0, msg.sender);
                            emit Transfer((19 * (curs * msg.value) + (curs * msg.value) / 50), 0, owner);
                    else:
                        if stor12[address(msg.sender)] > 0:
                            require curs * msg.value >= curs * msg.value
                            require totalTokens + (curs * msg.value) >= totalTokens
                            totalTokens += curs * msg.value
                            require totalTokens + (curs * msg.value) <= capTokens
                            require totalSupply + (curs * msg.value) >= totalSupply
                            totalSupply += curs * msg.value
                            require 19 * curs * msg.value / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + (19 * curs * msg.value / 50)
                            require balanceOf[address(msg.sender)] + (curs * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += curs * msg.value
                            require balanceOf[stor3] + (19 * curs * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * curs * msg.value / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + (curs * msg.value / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += curs * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, curs * msg.value, curs, msg.sender);
                            emit Transfer((curs * msg.value), 0, msg.sender);
                            emit Transfer((19 * curs * msg.value / 50), 0, owner);
                        else:
                            require stor12[address(msg.sender)] >= 0
                            require (curs * msg.value) + stor12[address(msg.sender)] >= curs * msg.value
                            require totalTokens + (curs * msg.value) + stor12[address(msg.sender)] >= totalTokens
                            totalTokens = totalTokens + (curs * msg.value) + stor12[address(msg.sender)]
                            require totalTokens + (curs * msg.value) + stor12[address(msg.sender)] <= capTokens
                            require totalSupply + (curs * msg.value) + stor12[address(msg.sender)] >= totalSupply
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(msg.sender)]
                            require 19 * (curs * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                            totalSupply = totalSupply + (curs * msg.value) + stor12[address(msg.sender)] + (19 * (curs * msg.value) + stor12[address(msg.sender)] / 50)
                            require balanceOf[address(msg.sender)] + (curs * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (curs * msg.value) + stor12[address(msg.sender)]
                            require balanceOf[stor3] + (19 * (curs * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * (curs * msg.value) + stor12[address(msg.sender)] / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + ((curs * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += (curs * msg.value) + stor12[address(msg.sender)] / 2
                            emit BoughtTokens(msg.value, totalEthers, (curs * msg.value) + stor12[address(msg.sender)], curs, msg.sender);
                            emit Transfer(((curs * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                            emit Transfer((19 * (curs * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
    else:
        if block.timestamp < startDate + 600:
            require 5 * curs / 6 * msg.value > 0
            require totalTokens + (5 * curs / 6 * msg.value) >= totalTokens
            if block.timestamp < startDate + 1200:
                totalTokens += 5 * curs / 6 * msg.value
                require totalTokens + (5 * curs / 6 * msg.value) <= capTokens
                require totalSupply + (5 * curs / 6 * msg.value) >= totalSupply
                totalSupply += 5 * curs / 6 * msg.value
                require 19 * 5 * curs / 6 * msg.value / 50 >= 0
                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (19 * 5 * curs / 6 * msg.value / 50)
                require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) >= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] += 5 * curs / 6 * msg.value
                require balanceOf[stor3] + (19 * 5 * curs / 6 * msg.value / 50) >= balanceOf[stor3]
                balanceOf[stor3] += 19 * 5 * curs / 6 * msg.value / 50
                if block.timestamp < startDate + 300:
                    require stor12[address(msg.sender)] + (5 * curs / 6 * msg.value / 2) >= stor12[address(msg.sender)]
                    stor12[address(msg.sender)] += 5 * curs / 6 * msg.value / 2
                emit BoughtTokens(msg.value, totalEthers, 5 * curs / 6 * msg.value, 5 * curs / 6, msg.sender);
                emit Transfer((5 * curs / 6 * msg.value), 0, msg.sender);
                emit Transfer((19 * 5 * curs / 6 * msg.value / 50), 0, owner);
            else:
                if block.timestamp > endDate:
                    totalTokens += 5 * curs / 6 * msg.value
                    require totalTokens + (5 * curs / 6 * msg.value) <= capTokens
                    require totalSupply + (5 * curs / 6 * msg.value) >= totalSupply
                    totalSupply += 5 * curs / 6 * msg.value
                    require 19 * 5 * curs / 6 * msg.value / 50 >= 0
                    totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (19 * 5 * curs / 6 * msg.value / 50)
                    require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 5 * curs / 6 * msg.value
                    require balanceOf[stor3] + (19 * 5 * curs / 6 * msg.value / 50) >= balanceOf[stor3]
                    balanceOf[stor3] += 19 * 5 * curs / 6 * msg.value / 50
                    if block.timestamp < startDate + 300:
                        require stor12[address(msg.sender)] + (5 * curs / 6 * msg.value / 2) >= stor12[address(msg.sender)]
                        stor12[address(msg.sender)] += 5 * curs / 6 * msg.value / 2
                    emit BoughtTokens(msg.value, totalEthers, 5 * curs / 6 * msg.value, 5 * curs / 6, msg.sender);
                    emit Transfer((5 * curs / 6 * msg.value), 0, msg.sender);
                    emit Transfer((19 * 5 * curs / 6 * msg.value / 50), 0, owner);
                else:
                    require capTokens - totalTokens - (5 * curs / 6 * msg.value) <= capTokens
                    if capTokens - totalTokens - (5 * curs / 6 * msg.value) > 0:
                        if 5 * curs / 6 * msg.value <= capTokens - totalTokens - (5 * curs / 6 * msg.value):
                            if stor12[address(msg.sender)] <= 5 * curs / 6 * msg.value:
                                require stor12[address(msg.sender)] >= 0
                                require (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require 19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] + (19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50)
                                require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(msg.sender)] + ((5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + stor12[address(msg.sender)], 5 * curs / 6, msg.sender);
                                emit Transfer(((5 * curs / 6 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                            else:
                                require 5 * curs / 6 * msg.value >= 0
                                require (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require 19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) + (19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50)
                                require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(msg.sender)] + ((5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value), 5 * curs / 6, msg.sender);
                                emit Transfer(((5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)), 0, msg.sender);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50), 0, owner);
                        else:
                            if stor12[address(msg.sender)] <= capTokens - totalTokens - (5 * curs / 6 * msg.value):
                                require stor12[address(msg.sender)] >= 0
                                require (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require 19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] + (19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50)
                                require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(msg.sender)] + ((5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + stor12[address(msg.sender)], 5 * curs / 6, msg.sender);
                                emit Transfer(((5 * curs / 6 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                            else:
                                require capTokens - totalTokens - (5 * curs / 6 * msg.value) >= 0
                                require (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) >= 5 * curs / 6 * msg.value
                                require (5 * curs / 6 * msg.value) + capTokens - (5 * curs / 6 * msg.value) >= totalTokens
                                totalTokens = (5 * curs / 6 * msg.value) + capTokens - (5 * curs / 6 * msg.value)
                                require (5 * curs / 6 * msg.value) + capTokens - (5 * curs / 6 * msg.value) <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value)
                                require 19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) + (19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50)
                                require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value)
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(msg.sender)] + ((5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value), 5 * curs / 6, msg.sender);
                                emit Transfer(((5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value)), 0, msg.sender);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + capTokens - totalTokens - (5 * curs / 6 * msg.value) / 50), 0, owner);
                    else:
                        if 5 * curs / 6 * msg.value <= 0:
                            if stor12[address(msg.sender)] <= 5 * curs / 6 * msg.value:
                                require stor12[address(msg.sender)] >= 0
                                require (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require 19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] + (19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50)
                                require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(msg.sender)] + ((5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + stor12[address(msg.sender)], 5 * curs / 6, msg.sender);
                                emit Transfer(((5 * curs / 6 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                            else:
                                require 5 * curs / 6 * msg.value >= 0
                                require (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require totalTokens + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require 19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) + (19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50)
                                require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(msg.sender)] + ((5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value), 5 * curs / 6, msg.sender);
                                emit Transfer(((5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value)), 0, msg.sender);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + (5 * curs / 6 * msg.value) / 50), 0, owner);
                        else:
                            if stor12[address(msg.sender)] > 0:
                                require 5 * curs / 6 * msg.value >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) >= totalTokens
                                totalTokens += 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) >= totalSupply
                                totalSupply += 5 * curs / 6 * msg.value
                                require 19 * 5 * curs / 6 * msg.value / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + (19 * 5 * curs / 6 * msg.value / 50)
                                require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 5 * curs / 6 * msg.value
                                require balanceOf[stor3] + (19 * 5 * curs / 6 * msg.value / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * 5 * curs / 6 * msg.value / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(msg.sender)] + (5 * curs / 6 * msg.value / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += 5 * curs / 6 * msg.value / 2
                                emit BoughtTokens(msg.value, totalEthers, 5 * curs / 6 * msg.value, 5 * curs / 6, msg.sender);
                                emit Transfer((5 * curs / 6 * msg.value), 0, msg.sender);
                                emit Transfer((19 * 5 * curs / 6 * msg.value / 50), 0, owner);
                            else:
                                require stor12[address(msg.sender)] >= 0
                                require (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= 5 * curs / 6 * msg.value
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                totalTokens = totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require totalTokens + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                require totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require 19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                totalSupply = totalSupply + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] + (19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50)
                                require balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 6 * msg.value) + stor12[address(msg.sender)]
                                require balanceOf[stor3] + (19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                balanceOf[stor3] += 19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50
                                if block.timestamp < startDate + 300:
                                    require stor12[address(msg.sender)] + ((5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                    stor12[address(msg.sender)] += (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 2
                                emit BoughtTokens(msg.value, totalEthers, (5 * curs / 6 * msg.value) + stor12[address(msg.sender)], 5 * curs / 6, msg.sender);
                                emit Transfer(((5 * curs / 6 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                emit Transfer((19 * (5 * curs / 6 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
        else:
            if block.timestamp < startDate + 900:
                require 10 * curs / 13 * msg.value > 0
                require totalTokens + (10 * curs / 13 * msg.value) >= totalTokens
                if block.timestamp < startDate + 1200:
                    totalTokens += 10 * curs / 13 * msg.value
                    require totalTokens + (10 * curs / 13 * msg.value) <= capTokens
                    require totalSupply + (10 * curs / 13 * msg.value) >= totalSupply
                    totalSupply += 10 * curs / 13 * msg.value
                    require 19 * 10 * curs / 13 * msg.value / 50 >= 0
                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (19 * 10 * curs / 13 * msg.value / 50)
                    require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) >= balanceOf[address(msg.sender)]
                    balanceOf[address(msg.sender)] += 10 * curs / 13 * msg.value
                    require balanceOf[stor3] + (19 * 10 * curs / 13 * msg.value / 50) >= balanceOf[stor3]
                    balanceOf[stor3] += 19 * 10 * curs / 13 * msg.value / 50
                    if block.timestamp < startDate + 300:
                        require stor12[address(msg.sender)] + (10 * curs / 13 * msg.value / 2) >= stor12[address(msg.sender)]
                        stor12[address(msg.sender)] += 10 * curs / 13 * msg.value / 2
                    emit BoughtTokens(msg.value, totalEthers, 10 * curs / 13 * msg.value, 10 * curs / 13, msg.sender);
                    emit Transfer((10 * curs / 13 * msg.value), 0, msg.sender);
                    emit Transfer((19 * 10 * curs / 13 * msg.value / 50), 0, owner);
                else:
                    if block.timestamp > endDate:
                        totalTokens += 10 * curs / 13 * msg.value
                        require totalTokens + (10 * curs / 13 * msg.value) <= capTokens
                        require totalSupply + (10 * curs / 13 * msg.value) >= totalSupply
                        totalSupply += 10 * curs / 13 * msg.value
                        require 19 * 10 * curs / 13 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (19 * 10 * curs / 13 * msg.value / 50)
                        require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 10 * curs / 13 * msg.value
                        require balanceOf[stor3] + (19 * 10 * curs / 13 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * 10 * curs / 13 * msg.value / 50
                        if block.timestamp < startDate + 300:
                            require stor12[address(msg.sender)] + (10 * curs / 13 * msg.value / 2) >= stor12[address(msg.sender)]
                            stor12[address(msg.sender)] += 10 * curs / 13 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, 10 * curs / 13 * msg.value, 10 * curs / 13, msg.sender);
                        emit Transfer((10 * curs / 13 * msg.value), 0, msg.sender);
                        emit Transfer((19 * 10 * curs / 13 * msg.value / 50), 0, owner);
                    else:
                        require capTokens - totalTokens - (10 * curs / 13 * msg.value) <= capTokens
                        if capTokens - totalTokens - (10 * curs / 13 * msg.value) > 0:
                            if 10 * curs / 13 * msg.value <= capTokens - totalTokens - (10 * curs / 13 * msg.value):
                                if stor12[address(msg.sender)] <= 10 * curs / 13 * msg.value:
                                    require stor12[address(msg.sender)] >= 0
                                    require (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require 19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] + (19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50)
                                    require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(msg.sender)] + ((10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + stor12[address(msg.sender)], 10 * curs / 13, msg.sender);
                                    emit Transfer(((10 * curs / 13 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                else:
                                    require 10 * curs / 13 * msg.value >= 0
                                    require (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require 19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) + (19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50)
                                    require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(msg.sender)] + ((10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value), 10 * curs / 13, msg.sender);
                                    emit Transfer(((10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)), 0, msg.sender);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50), 0, owner);
                            else:
                                if stor12[address(msg.sender)] <= capTokens - totalTokens - (10 * curs / 13 * msg.value):
                                    require stor12[address(msg.sender)] >= 0
                                    require (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require 19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] + (19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50)
                                    require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(msg.sender)] + ((10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + stor12[address(msg.sender)], 10 * curs / 13, msg.sender);
                                    emit Transfer(((10 * curs / 13 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                else:
                                    require capTokens - totalTokens - (10 * curs / 13 * msg.value) >= 0
                                    require (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) >= 10 * curs / 13 * msg.value
                                    require (10 * curs / 13 * msg.value) + capTokens - (10 * curs / 13 * msg.value) >= totalTokens
                                    totalTokens = (10 * curs / 13 * msg.value) + capTokens - (10 * curs / 13 * msg.value)
                                    require (10 * curs / 13 * msg.value) + capTokens - (10 * curs / 13 * msg.value) <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value)
                                    require 19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) + (19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50)
                                    require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value)
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(msg.sender)] + ((10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value), 10 * curs / 13, msg.sender);
                                    emit Transfer(((10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value)), 0, msg.sender);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + capTokens - totalTokens - (10 * curs / 13 * msg.value) / 50), 0, owner);
                        else:
                            if 10 * curs / 13 * msg.value <= 0:
                                if stor12[address(msg.sender)] <= 10 * curs / 13 * msg.value:
                                    require stor12[address(msg.sender)] >= 0
                                    require (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require 19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] + (19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50)
                                    require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(msg.sender)] + ((10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + stor12[address(msg.sender)], 10 * curs / 13, msg.sender);
                                    emit Transfer(((10 * curs / 13 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                else:
                                    require 10 * curs / 13 * msg.value >= 0
                                    require (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require totalTokens + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require 19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) + (19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50)
                                    require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(msg.sender)] + ((10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value), 10 * curs / 13, msg.sender);
                                    emit Transfer(((10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value)), 0, msg.sender);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + (10 * curs / 13 * msg.value) / 50), 0, owner);
                            else:
                                if stor12[address(msg.sender)] > 0:
                                    require 10 * curs / 13 * msg.value >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) >= totalTokens
                                    totalTokens += 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) >= totalSupply
                                    totalSupply += 10 * curs / 13 * msg.value
                                    require 19 * 10 * curs / 13 * msg.value / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + (19 * 10 * curs / 13 * msg.value / 50)
                                    require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] += 10 * curs / 13 * msg.value
                                    require balanceOf[stor3] + (19 * 10 * curs / 13 * msg.value / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * 10 * curs / 13 * msg.value / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(msg.sender)] + (10 * curs / 13 * msg.value / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += 10 * curs / 13 * msg.value / 2
                                    emit BoughtTokens(msg.value, totalEthers, 10 * curs / 13 * msg.value, 10 * curs / 13, msg.sender);
                                    emit Transfer((10 * curs / 13 * msg.value), 0, msg.sender);
                                    emit Transfer((19 * 10 * curs / 13 * msg.value / 50), 0, owner);
                                else:
                                    require stor12[address(msg.sender)] >= 0
                                    require (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= 10 * curs / 13 * msg.value
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                    totalTokens = totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require totalTokens + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                    require totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require 19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                    totalSupply = totalSupply + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] + (19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50)
                                    require balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (10 * curs / 13 * msg.value) + stor12[address(msg.sender)]
                                    require balanceOf[stor3] + (19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                    balanceOf[stor3] += 19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50
                                    if block.timestamp < startDate + 300:
                                        require stor12[address(msg.sender)] + ((10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                        stor12[address(msg.sender)] += (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 2
                                    emit BoughtTokens(msg.value, totalEthers, (10 * curs / 13 * msg.value) + stor12[address(msg.sender)], 10 * curs / 13, msg.sender);
                                    emit Transfer(((10 * curs / 13 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                    emit Transfer((19 * (10 * curs / 13 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
            else:
                if block.timestamp < startDate + 1200:
                    require 5 * curs / 7 * msg.value > 0
                    require totalTokens + (5 * curs / 7 * msg.value) >= totalTokens
                    if block.timestamp < startDate + 1200:
                        totalTokens += 5 * curs / 7 * msg.value
                        require totalTokens + (5 * curs / 7 * msg.value) <= capTokens
                        require totalSupply + (5 * curs / 7 * msg.value) >= totalSupply
                        totalSupply += 5 * curs / 7 * msg.value
                        require 19 * 5 * curs / 7 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (19 * 5 * curs / 7 * msg.value / 50)
                        require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 5 * curs / 7 * msg.value
                        require balanceOf[stor3] + (19 * 5 * curs / 7 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * 5 * curs / 7 * msg.value / 50
                        if block.timestamp < startDate + 300:
                            require stor12[address(msg.sender)] + (5 * curs / 7 * msg.value / 2) >= stor12[address(msg.sender)]
                            stor12[address(msg.sender)] += 5 * curs / 7 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, 5 * curs / 7 * msg.value, 5 * curs / 7, msg.sender);
                        emit Transfer((5 * curs / 7 * msg.value), 0, msg.sender);
                        emit Transfer((19 * 5 * curs / 7 * msg.value / 50), 0, owner);
                    else:
                        if block.timestamp > endDate:
                            totalTokens += 5 * curs / 7 * msg.value
                            require totalTokens + (5 * curs / 7 * msg.value) <= capTokens
                            require totalSupply + (5 * curs / 7 * msg.value) >= totalSupply
                            totalSupply += 5 * curs / 7 * msg.value
                            require 19 * 5 * curs / 7 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (19 * 5 * curs / 7 * msg.value / 50)
                            require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 5 * curs / 7 * msg.value
                            require balanceOf[stor3] + (19 * 5 * curs / 7 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * 5 * curs / 7 * msg.value / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + (5 * curs / 7 * msg.value / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += 5 * curs / 7 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, 5 * curs / 7 * msg.value, 5 * curs / 7, msg.sender);
                            emit Transfer((5 * curs / 7 * msg.value), 0, msg.sender);
                            emit Transfer((19 * 5 * curs / 7 * msg.value / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (5 * curs / 7 * msg.value) <= capTokens
                            if capTokens - totalTokens - (5 * curs / 7 * msg.value) > 0:
                                if 5 * curs / 7 * msg.value <= capTokens - totalTokens - (5 * curs / 7 * msg.value):
                                    if stor12[address(msg.sender)] <= 5 * curs / 7 * msg.value:
                                        require stor12[address(msg.sender)] >= 0
                                        require (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] + (19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + stor12[address(msg.sender)], 5 * curs / 7, msg.sender);
                                        emit Transfer(((5 * curs / 7 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require 5 * curs / 7 * msg.value >= 0
                                        require (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require 19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) + (19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value), 5 * curs / 7, msg.sender);
                                        emit Transfer(((5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(msg.sender)] <= capTokens - totalTokens - (5 * curs / 7 * msg.value):
                                        require stor12[address(msg.sender)] >= 0
                                        require (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] + (19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + stor12[address(msg.sender)], 5 * curs / 7, msg.sender);
                                        emit Transfer(((5 * curs / 7 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require capTokens - totalTokens - (5 * curs / 7 * msg.value) >= 0
                                        require (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) >= 5 * curs / 7 * msg.value
                                        require (5 * curs / 7 * msg.value) + capTokens - (5 * curs / 7 * msg.value) >= totalTokens
                                        totalTokens = (5 * curs / 7 * msg.value) + capTokens - (5 * curs / 7 * msg.value)
                                        require (5 * curs / 7 * msg.value) + capTokens - (5 * curs / 7 * msg.value) <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value)
                                        require 19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) + (19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value)
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value), 5 * curs / 7, msg.sender);
                                        emit Transfer(((5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + capTokens - totalTokens - (5 * curs / 7 * msg.value) / 50), 0, owner);
                            else:
                                if 5 * curs / 7 * msg.value <= 0:
                                    if stor12[address(msg.sender)] <= 5 * curs / 7 * msg.value:
                                        require stor12[address(msg.sender)] >= 0
                                        require (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] + (19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + stor12[address(msg.sender)], 5 * curs / 7, msg.sender);
                                        emit Transfer(((5 * curs / 7 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require 5 * curs / 7 * msg.value >= 0
                                        require (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require totalTokens + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require 19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) + (19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value), 5 * curs / 7, msg.sender);
                                        emit Transfer(((5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + (5 * curs / 7 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(msg.sender)] > 0:
                                        require 5 * curs / 7 * msg.value >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) >= totalTokens
                                        totalTokens += 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) >= totalSupply
                                        totalSupply += 5 * curs / 7 * msg.value
                                        require 19 * 5 * curs / 7 * msg.value / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + (19 * 5 * curs / 7 * msg.value / 50)
                                        require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 5 * curs / 7 * msg.value
                                        require balanceOf[stor3] + (19 * 5 * curs / 7 * msg.value / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * 5 * curs / 7 * msg.value / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + (5 * curs / 7 * msg.value / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += 5 * curs / 7 * msg.value / 2
                                        emit BoughtTokens(msg.value, totalEthers, 5 * curs / 7 * msg.value, 5 * curs / 7, msg.sender);
                                        emit Transfer((5 * curs / 7 * msg.value), 0, msg.sender);
                                        emit Transfer((19 * 5 * curs / 7 * msg.value / 50), 0, owner);
                                    else:
                                        require stor12[address(msg.sender)] >= 0
                                        require (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= 5 * curs / 7 * msg.value
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] + (19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (5 * curs / 7 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (5 * curs / 7 * msg.value) + stor12[address(msg.sender)], 5 * curs / 7, msg.sender);
                                        emit Transfer(((5 * curs / 7 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (5 * curs / 7 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                else:
                    require block.timestamp <= endDate
                    require 2 * curs / 3 * msg.value > 0
                    require totalTokens + (2 * curs / 3 * msg.value) >= totalTokens
                    if block.timestamp < startDate + 1200:
                        totalTokens += 2 * curs / 3 * msg.value
                        require totalTokens + (2 * curs / 3 * msg.value) <= capTokens
                        require totalSupply + (2 * curs / 3 * msg.value) >= totalSupply
                        totalSupply += 2 * curs / 3 * msg.value
                        require 19 * 2 * curs / 3 * msg.value / 50 >= 0
                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (19 * 2 * curs / 3 * msg.value / 50)
                        require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 2 * curs / 3 * msg.value
                        require balanceOf[stor3] + (19 * 2 * curs / 3 * msg.value / 50) >= balanceOf[stor3]
                        balanceOf[stor3] += 19 * 2 * curs / 3 * msg.value / 50
                        if block.timestamp < startDate + 300:
                            require stor12[address(msg.sender)] + (2 * curs / 3 * msg.value / 2) >= stor12[address(msg.sender)]
                            stor12[address(msg.sender)] += 2 * curs / 3 * msg.value / 2
                        emit BoughtTokens(msg.value, totalEthers, 2 * curs / 3 * msg.value, 2 * curs / 3, msg.sender);
                        emit Transfer((2 * curs / 3 * msg.value), 0, msg.sender);
                        emit Transfer((19 * 2 * curs / 3 * msg.value / 50), 0, owner);
                    else:
                        if block.timestamp > endDate:
                            totalTokens += 2 * curs / 3 * msg.value
                            require totalTokens + (2 * curs / 3 * msg.value) <= capTokens
                            require totalSupply + (2 * curs / 3 * msg.value) >= totalSupply
                            totalSupply += 2 * curs / 3 * msg.value
                            require 19 * 2 * curs / 3 * msg.value / 50 >= 0
                            totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (19 * 2 * curs / 3 * msg.value / 50)
                            require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 2 * curs / 3 * msg.value
                            require balanceOf[stor3] + (19 * 2 * curs / 3 * msg.value / 50) >= balanceOf[stor3]
                            balanceOf[stor3] += 19 * 2 * curs / 3 * msg.value / 50
                            if block.timestamp < startDate + 300:
                                require stor12[address(msg.sender)] + (2 * curs / 3 * msg.value / 2) >= stor12[address(msg.sender)]
                                stor12[address(msg.sender)] += 2 * curs / 3 * msg.value / 2
                            emit BoughtTokens(msg.value, totalEthers, 2 * curs / 3 * msg.value, 2 * curs / 3, msg.sender);
                            emit Transfer((2 * curs / 3 * msg.value), 0, msg.sender);
                            emit Transfer((19 * 2 * curs / 3 * msg.value / 50), 0, owner);
                        else:
                            require capTokens - totalTokens - (2 * curs / 3 * msg.value) <= capTokens
                            if capTokens - totalTokens - (2 * curs / 3 * msg.value) > 0:
                                if 2 * curs / 3 * msg.value <= capTokens - totalTokens - (2 * curs / 3 * msg.value):
                                    if stor12[address(msg.sender)] <= 2 * curs / 3 * msg.value:
                                        require stor12[address(msg.sender)] >= 0
                                        require (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] + (19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + stor12[address(msg.sender)], 2 * curs / 3, msg.sender);
                                        emit Transfer(((2 * curs / 3 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require 2 * curs / 3 * msg.value >= 0
                                        require (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require 19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) + (19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value), 2 * curs / 3, msg.sender);
                                        emit Transfer(((2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(msg.sender)] <= capTokens - totalTokens - (2 * curs / 3 * msg.value):
                                        require stor12[address(msg.sender)] >= 0
                                        require (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] + (19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + stor12[address(msg.sender)], 2 * curs / 3, msg.sender);
                                        emit Transfer(((2 * curs / 3 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require capTokens - totalTokens - (2 * curs / 3 * msg.value) >= 0
                                        require (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) >= 2 * curs / 3 * msg.value
                                        require (2 * curs / 3 * msg.value) + capTokens - (2 * curs / 3 * msg.value) >= totalTokens
                                        totalTokens = (2 * curs / 3 * msg.value) + capTokens - (2 * curs / 3 * msg.value)
                                        require (2 * curs / 3 * msg.value) + capTokens - (2 * curs / 3 * msg.value) <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value)
                                        require 19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) + (19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value)
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value), 2 * curs / 3, msg.sender);
                                        emit Transfer(((2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + capTokens - totalTokens - (2 * curs / 3 * msg.value) / 50), 0, owner);
                            else:
                                if 2 * curs / 3 * msg.value <= 0:
                                    if stor12[address(msg.sender)] <= 2 * curs / 3 * msg.value:
                                        require stor12[address(msg.sender)] >= 0
                                        require (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] + (19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + stor12[address(msg.sender)], 2 * curs / 3, msg.sender);
                                        emit Transfer(((2 * curs / 3 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
                                    else:
                                        require 2 * curs / 3 * msg.value >= 0
                                        require (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require totalTokens + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require 19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) + (19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50)
                                        require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value), 2 * curs / 3, msg.sender);
                                        emit Transfer(((2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value)), 0, msg.sender);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + (2 * curs / 3 * msg.value) / 50), 0, owner);
                                else:
                                    if stor12[address(msg.sender)] > 0:
                                        require 2 * curs / 3 * msg.value >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) >= totalTokens
                                        totalTokens += 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) >= totalSupply
                                        totalSupply += 2 * curs / 3 * msg.value
                                        require 19 * 2 * curs / 3 * msg.value / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + (19 * 2 * curs / 3 * msg.value / 50)
                                        require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] += 2 * curs / 3 * msg.value
                                        require balanceOf[stor3] + (19 * 2 * curs / 3 * msg.value / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * 2 * curs / 3 * msg.value / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + (2 * curs / 3 * msg.value / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += 2 * curs / 3 * msg.value / 2
                                        emit BoughtTokens(msg.value, totalEthers, 2 * curs / 3 * msg.value, 2 * curs / 3, msg.sender);
                                        emit Transfer((2 * curs / 3 * msg.value), 0, msg.sender);
                                        emit Transfer((19 * 2 * curs / 3 * msg.value / 50), 0, owner);
                                    else:
                                        require stor12[address(msg.sender)] >= 0
                                        require (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= 2 * curs / 3 * msg.value
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= totalTokens
                                        totalTokens = totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require totalTokens + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] <= capTokens
                                        require totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= totalSupply
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require 19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50 >= 0
                                        totalSupply = totalSupply + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] + (19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50)
                                        require balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (2 * curs / 3 * msg.value) + stor12[address(msg.sender)]
                                        require balanceOf[stor3] + (19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50) >= balanceOf[stor3]
                                        balanceOf[stor3] += 19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50
                                        if block.timestamp < startDate + 300:
                                            require stor12[address(msg.sender)] + ((2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 2) >= stor12[address(msg.sender)]
                                            stor12[address(msg.sender)] += (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 2
                                        emit BoughtTokens(msg.value, totalEthers, (2 * curs / 3 * msg.value) + stor12[address(msg.sender)], 2 * curs / 3, msg.sender);
                                        emit Transfer(((2 * curs / 3 * msg.value) + stor12[address(msg.sender)]), 0, msg.sender);
                                        emit Transfer((19 * (2 * curs / 3 * msg.value) + stor12[address(msg.sender)] / 50), 0, owner);
}



}
