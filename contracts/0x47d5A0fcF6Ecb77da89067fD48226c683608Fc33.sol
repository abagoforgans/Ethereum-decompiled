contract main {




// =====================  Runtime code  =====================


const name = Array(len=34, data='Digital Economic Model Of MceCha', 'in', Mask(16, -256, 'Digital Economic Model Of MceCha', 'in') << 256)

const decimals = 8

const symbol = 'MCE'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 stor3;
array of uint256 stor4;
array of uint256 stor5;
array of uint256 stor8;
mapping of uint256 stor12;
mapping of uint256 stor13;
address stor14;
uint256 exchangeRate;
address stor16;
mapping of uint256 stor17;

function totalSupply() {
    return totalSupply
}

function exchangeRate() {
    return exchangeRate
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getLockInfo(address arg1) {
    return stor13[address(arg1)], stor12[address(arg1)]
}

function isAdministrator(address arg1) {
    require arg1
    if stor17[address(arg1)] == 1:
        return True
    return (arg1 == stor16)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(address(arg1), arg2, msg.sender);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == stor16
    require arg1
    stor16 = arg1
    emit OwnershipTransferred(stor16, arg1);
    return 1
}

function addAdministrator(address arg1) {
    require msg.sender == stor16
    require arg1
    require stor17[address(arg1)] <= 0
    stor17[address(arg1)] = 1
    emit AddAdministrator(arg1);
    return 1
}

function removeAdministrator(address arg1) {
    require msg.sender == stor16
    require arg1
    require stor17[address(arg1)] > 0
    stor17[address(arg1)] = 0
    emit RemoveAdministrator(arg1);
    return 1
}

function setExchangeRate(uint256 arg1) {
    if stor16 != msg.sender:
        require stor17[address(msg.sender)] > 0
    require arg1 > 0
    exchangeRate = arg1
    emit ExchangeRateChanged(exchangeRate, exchangeRate);
    return 1
}

function unlock(address arg1) {
    if stor16 != msg.sender:
        require stor17[address(msg.sender)] > 0
    require arg1
    stor12[address(arg1)] = 0
    stor13[address(arg1)] = 0
    emit UnLock(stor13[address(arg1)], stor12[address(arg1)], arg1);
    return 1
}

function getDeveloperReservedLockInfo(uint256 arg1) {
    if stor16 != msg.sender:
        require stor17[address(msg.sender)] > 0
    require arg1 >= 0
    require arg1 < 4
    emit DeveloperReservedLockInfo(arg1, stor4[arg1], stor8[arg1], address(stor3.length));
    return stor4[arg1], stor8[arg1]
}

function lock(address arg1, uint256 arg2, uint256 arg3) {
    if stor16 != msg.sender:
        require stor17[address(msg.sender)] > 0
    require arg1
    require arg3 > 0
    require arg2 >= block.timestamp
    stor12[address(arg1)] = arg3
    stor13[address(arg1)] = arg2
    emit Lock(arg2, arg3, arg1);
    return arg2, arg3
}

function changeUnlockTime(uint256 arg1, uint256 arg2) {
    if stor16 != msg.sender:
        require stor17[address(msg.sender)] > 0
    require arg1 >= 0
    require arg1 < 4
    require arg2 > 0
    if arg1 > 0:
        require arg1 - 1 < 4
        if uint256(stor3[arg1]):
            require uint256(stor3[arg1]) < arg2
    if arg1 < 3:
        require arg1 + 1 < 4
        if stor5[arg1]:
            require arg2 < stor5[arg1]
    require arg1 < 4
    stor4[arg1] = arg2
    emit DeveloperReservedUnlockTimeChanged(arg1, stor4[arg1], arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender
    require arg1
    require arg2 > 0
    if msg.sender == address(stor3.length):
        idx = 0
        while idx < 4:
            if not stor4[idx]:
                idx = idx + 1
                continue 
            require idx < 4
            require idx < 4
            if block.timestamp > stor4[idx]:
                stor4[idx] = 0
                idx = idx + 1
                continue 
            require stor8[idx] <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - stor8[idx] >= arg2
            if stor13[address(msg.sender)] > block.timestamp:
                if stor13[address(msg.sender)]:
                    if stor12[address(msg.sender)] > 0:
                        require stor12[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - stor12[address(msg.sender)] >= arg2
            else:
                if stor13[address(msg.sender)]:
                    stor13[address(msg.sender)] = 0
                    stor12[address(msg.sender)] = 0
                    emit UnLock(0, stor12[address(msg.sender)], msg.sender);
            require arg2 > 0
            require balanceOf[address(msg.sender)] >= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        require 0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= arg2
    if stor13[address(msg.sender)] > block.timestamp:
        if stor13[address(msg.sender)]:
            if stor12[address(msg.sender)] > 0:
                require stor12[address(msg.sender)] <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - stor12[address(msg.sender)] >= arg2
    else:
        if stor13[address(msg.sender)]:
            stor13[address(msg.sender)] = 0
            stor12[address(msg.sender)] = 0
            emit UnLock(0, stor12[address(msg.sender)], msg.sender);
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg3 > 0
    if arg1 == address(stor3.length):
        idx = 0
        while idx < 4:
            if not stor4[idx]:
                idx = idx + 1
                continue 
            require idx < 4
            require idx < 4
            if block.timestamp > stor4[idx]:
                stor4[idx] = 0
                idx = idx + 1
                continue 
            require stor8[idx] <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - stor8[idx] >= arg3
            if stor13[address(arg1)] > block.timestamp:
                if stor13[address(arg1)]:
                    if stor12[address(arg1)] > 0:
                        require stor12[address(arg1)] <= balanceOf[address(arg1)]
                        require balanceOf[address(arg1)] - stor12[address(arg1)] >= arg3
            else:
                if stor13[address(arg1)]:
                    stor13[address(arg1)] = 0
                    stor12[address(arg1)] = 0
                    emit UnLock(0, stor12[address(arg1)], arg1);
            require arg3 > 0
            require allowance[address(arg1)][address(msg.sender)] >= arg3
            require balanceOf[address(arg1)] >= arg3
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
            balanceOf[address(arg2)] += arg3
            require arg3 <= allowance[address(arg1)][address(msg.sender)]
            allowance[address(arg1)][address(msg.sender)] -= arg3
            emit Transfer(arg3, arg1, arg2);
            return 1
        require 0 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= arg3
    if stor13[address(arg1)] > block.timestamp:
        if stor13[address(arg1)]:
            if stor12[address(arg1)] > 0:
                require stor12[address(arg1)] <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] - stor12[address(arg1)] >= arg3
    else:
        if stor13[address(arg1)]:
            stor13[address(arg1)] = 0
            stor12[address(arg1)] = 0
            emit UnLock(0, stor12[address(arg1)], arg1);
    require arg3 > 0
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transferAndLock(address arg1, uint256 arg2, uint256 arg3) {
    if stor16 != msg.sender:
        require stor17[address(msg.sender)] > 0
    require arg1
    require arg2 > 0
    require arg3 >= block.timestamp
    require arg2 <= balanceOf[address(msg.sender)]
    if stor16 != msg.sender:
        require stor17[address(msg.sender)] > 0
    require arg1
    require arg2 > 0
    require arg3 >= block.timestamp
    stor12[address(arg1)] = arg2
    stor13[address(arg1)] = arg3
    emit Lock(arg3, arg2, arg1);
    require msg.sender
    require arg1
    require arg2 > 0
    if msg.sender == address(stor3.length):
        idx = 0
        while idx < 4:
            if not stor4[idx]:
                idx = idx + 1
                continue 
            require idx < 4
            require idx < 4
            if block.timestamp > stor4[idx]:
                stor4[idx] = 0
                idx = idx + 1
                continue 
            require stor8[idx] <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - stor8[idx] >= arg2
            if stor13[address(msg.sender)] > block.timestamp:
                if stor13[address(msg.sender)]:
                    if stor12[address(msg.sender)] > 0:
                        require stor12[address(msg.sender)] <= balanceOf[address(msg.sender)]
                        require balanceOf[address(msg.sender)] - stor12[address(msg.sender)] >= arg2
            else:
                if stor13[address(msg.sender)]:
                    stor13[address(msg.sender)] = 0
                    stor12[address(msg.sender)] = 0
                    emit UnLock(0, stor12[address(msg.sender)], msg.sender);
            require arg2 > 0
            require balanceOf[address(msg.sender)] >= arg2
            require arg2 <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += arg2
            emit Transfer(arg2, msg.sender, arg1);
            return 1
        require 0 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] >= arg2
    if stor13[address(msg.sender)] > block.timestamp:
        if stor13[address(msg.sender)]:
            if stor12[address(msg.sender)] > 0:
                require stor12[address(msg.sender)] <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - stor12[address(msg.sender)] >= arg2
    else:
        if stor13[address(msg.sender)]:
            stor13[address(msg.sender)] = 0
            stor12[address(msg.sender)] = 0
            emit UnLock(0, stor12[address(msg.sender)], msg.sender);
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.sender
    require stor14
    require exchangeRate > 0
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
    require msg.value * exchangeRate == (10^10 * msg.value * exchangeRate / 10^10) + (msg.value * exchangeRate % 10^10)
    call stor14 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor14
    require msg.sender
    require msg.value * exchangeRate / 10^10 > 0
    if stor14 == address(stor3.length):
        idx = 0
        while idx < 4:
            if not stor4[idx]:
                idx = idx + 1
                continue 
            require idx < 4
            require idx < 4
            if block.timestamp > stor4[idx]:
                stor4[idx] = 0
                idx = idx + 1
                continue 
            require stor8[idx] <= balanceOf[stor14]
            require balanceOf[stor14] - stor8[idx] >= msg.value * exchangeRate / 10^10
            if stor13[stor14] > block.timestamp:
                if stor13[stor14]:
                    if stor12[stor14] > 0:
                        require stor12[stor14] <= balanceOf[stor14]
                        require balanceOf[stor14] - stor12[stor14] >= msg.value * exchangeRate / 10^10
            else:
                if stor13[stor14]:
                    stor13[stor14] = 0
                    stor12[stor14] = 0
                    emit UnLock(0, stor12[stor14], stor14);
            require msg.value * exchangeRate / 10^10 > 0
            require balanceOf[stor14] >= msg.value * exchangeRate / 10^10
            require msg.value * exchangeRate / 10^10 <= balanceOf[stor14]
            balanceOf[stor14] -= msg.value * exchangeRate / 10^10
            require balanceOf[address(msg.sender)] + (msg.value * exchangeRate / 10^10) >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * exchangeRate / 10^10
            emit Transfer((msg.value * exchangeRate / 10^10), stor14, msg.sender);
        require 0 <= balanceOf[stor14]
        require balanceOf[stor14] >= msg.value * exchangeRate / 10^10
    if stor13[stor14] > block.timestamp:
        if stor13[stor14]:
            if stor12[stor14] > 0:
                require stor12[stor14] <= balanceOf[stor14]
                require balanceOf[stor14] - stor12[stor14] >= msg.value * exchangeRate / 10^10
    else:
        if stor13[stor14]:
            stor13[stor14] = 0
            stor12[stor14] = 0
            emit UnLock(0, stor12[stor14], stor14);
    require msg.value * exchangeRate / 10^10 > 0
    require balanceOf[stor14] >= msg.value * exchangeRate / 10^10
    require msg.value * exchangeRate / 10^10 <= balanceOf[stor14]
    balanceOf[stor14] -= msg.value * exchangeRate / 10^10
    require balanceOf[address(msg.sender)] + (msg.value * exchangeRate / 10^10) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * exchangeRate / 10^10
    emit Transfer((msg.value * exchangeRate / 10^10), stor14, msg.sender);
}



}
