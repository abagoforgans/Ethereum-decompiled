contract main {




// =====================  Runtime code  =====================


const name = 'Ticket Alliances  Token'

const decimals = 18

const symbol = 'TA'


array of address pools;
address owner;
uint256 totalSupply;
mapping of uint256 balance;
mapping of uint256 allowance;
mapping of address stor5;
mapping of uint256 stor6;
uint256 stor7;

function getBalance() {
    return balance[address(msg.sender)]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balance[address(arg1)]
}

function owner() {
    return owner
}

function pools(uint256 arg1) {
    require arg1 < pools.length
    return address(pools[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function addPool(address arg1) {
    require msg.sender == owner
    require arg1
    idx = 0
    while idx < pools.length:
        mem[0] = 0
        require address(pools[idx]) != arg1
        idx = idx + 1
        continue 
    pools.length++
    address(pools[pools.length]) = arg1
}

function setPoolAndAmount(address arg1, uint256 arg2) {
    require 0 < pools.length
    idx = 0
    while address(pools[idx]) != msg.sender:
        require idx + 1 < pools.length
        mem[0] = 0
        idx = idx + 1
        continue 
    require balance[address(msg.sender)] >= arg2
    if owner != arg1:
        if stor5[address(arg1)] != msg.sender:
            require not stor6[address(arg1)]
        stor5[address(arg1)] = msg.sender
        stor6[address(arg1)] += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balance[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balance[address(arg2)] + arg3 >= balance[address(arg2)]
    require balance[address(arg2)] + arg3 >= arg3
    require balance[address(arg2)] + arg3 > balance[address(arg2)]
    require balance[address(arg2)] + arg3 >= balance[address(arg2)]
    require balance[address(arg2)] + arg3 >= arg3
    balance[address(arg2)] += arg3
    require arg3 <= balance[address(arg1)]
    balance[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function removePool(address arg1) {
    require msg.sender == owner
    require arg1
    require 0 < pools.length
    idx = 0
    while address(pools[idx]) != arg1:
        require idx + 1 < pools.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < pools.length - 1:
        mem[0] = 0
        if address(pools[idx]) != arg1:
            idx = idx + 1
            continue 
        require pools.length - 1 < pools.length
        require idx < pools.length
        address(pools[idx]) = address(pools[pools.length])
        pools.length--
        if pools.length > pools.length - 1:
            idx = sha3(0) + pools.length - 1
            while sha3(0) + pools.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
    pools.length--
    if pools.length > pools.length - 1:
        idx = pools.length - 1
        while pools.length > idx:
            uint256(pools[idx]) = 0
            idx = idx + 1
            continue 
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require owner
    require 0 < pools.length
    idx = 0
    while address(pools[idx]) != owner:
        require idx + 1 < pools.length
        mem[0] = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < pools.length - 1:
        mem[0] = 0
        if address(pools[idx]) != owner:
            idx = idx + 1
            continue 
        require pools.length - 1 < pools.length
        require idx < pools.length
        address(pools[idx]) = address(pools[pools.length])
        pools.length--
        if pools.length > pools.length - 1:
            idx = sha3(0) + pools.length - 1
            while sha3(0) + pools.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        require msg.sender == owner
        require arg1
        idx = 0
        while idx < pools.length:
            mem[0] = 0
            require address(pools[idx]) != arg1
            idx = idx + 1
            continue 
        pools.length++
        address(pools[pools.length]) = arg1
        owner = arg1
    pools.length--
    if pools.length > pools.length - 1:
        idx = pools.length - 1
        while pools.length > idx:
            uint256(pools[idx]) = 0
            idx = idx + 1
            continue 
    require msg.sender == owner
    require arg1
    idx = 0
    while idx < pools.length:
        mem[0] = 0
        require address(pools[idx]) != arg1
        idx = idx + 1
        continue 
    pools.length++
    address(pools[pools.length]) = arg1
    owner = arg1
}

function shouldHadBalance(address arg1) {
    idx = 0
    while idx < pools.length:
        mem[0] = 0
        if address(pools[idx]) != arg1:
            idx = idx + 1
            continue 
        else:
            return 0
    if not stor5[address(arg1)]:
        return 0
    if not stor6[address(arg1)]:
        return 0
    require ext_code.size(stor5[address(arg1)])
    call stor5[address(arg1)].getStartLockTime() with:
         gas gas_remaining wei
    require ext_call.success
    require return_data.size >= 32
    require ext_code.size(stor5[address(arg1)])
    call stor5[address(arg1)].getStopLockTime() with:
         gas gas_remaining wei
    require ext_call.success
    require return_data.size >= 32
    if block.timestamp > ext_call.return_data[0]:
        return 0
    require ext_code.size(stor5[address(arg1)])
    call stor5[address(arg1)].getBaseLockPercent() with:
         gas gas_remaining wei
    require ext_call.success
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    require ext_code.size(stor5[address(arg1)])
    call stor5[address(arg1)].getBaseLockPercent() with:
         gas gas_remaining wei
    require ext_call.success
    require return_data.size >= 32
    if stor6[address(arg1)]:
        require stor6[address(arg1)]
        require stor6[address(arg1)] * ext_call.return_data[0] / stor6[address(arg1)] == ext_call.return_data[0]
    require stor6[address(arg1)] * ext_call.return_data[0] == (100 * stor6[address(arg1)] * ext_call.return_data[0] / 100) + (stor6[address(arg1)] * ext_call.return_data[0] % 100)
    if block.timestamp < ext_call.return_data[0]:
        return (stor6[address(arg1)] * ext_call.return_data[0] / 100)
    require ext_code.size(stor5[address(arg1)])
    call stor5[address(arg1)].getLinearRelease() with:
         gas gas_remaining wei
    require ext_call.success
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if block.timestamp >= ext_call.return_data[0]:
            return 0
        return (stor6[address(arg1)] * ext_call.return_data[0] / 100)
    if block.timestamp < ext_call.return_data[0] + stor7:
        return (stor6[address(arg1)] * ext_call.return_data[0] / 100)
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require stor7 > 0
    require stor7
    require 0 == (stor7 * 0 / stor7) + (0 % stor7)
    if 0 / stor7 <= 0:
        if block.timestamp < ext_call.return_data[0]:
            return (stor6[address(arg1)] * ext_call.return_data[0] / 100)
        else:
            return 0
    require 0 / stor7
    require stor6[address(arg1)] * ext_call.return_data[0] / 100 == (0 / stor7 * stor6[address(arg1)] * ext_call.return_data[0] / 100 / 0 / stor7) + (stor6[address(arg1)] * ext_call.return_data[0] / 100 % 0 / stor7)
    require ext_call.return_data[0] <= block.timestamp
    require stor7 > 0
    require stor7
    require block.timestamp - ext_call.return_data[0] == (stor7 * block.timestamp - ext_call.return_data[0] / stor7) + (block.timestamp - ext_call.return_data[0] % stor7)
    if block.timestamp - ext_call.return_data[0] / stor7:
        require block.timestamp - ext_call.return_data[0] / stor7
        require block.timestamp - ext_call.return_data[0] / stor7 * stor6[address(arg1)] * ext_call.return_data[0] / 100 / 0 / stor7 / block.timestamp - ext_call.return_data[0] / stor7 == stor6[address(arg1)] * ext_call.return_data[0] / 100 / 0 / stor7
    require block.timestamp - ext_call.return_data[0] / stor7 * stor6[address(arg1)] * ext_call.return_data[0] / 100 / 0 / stor7 <= stor6[address(arg1)] * ext_call.return_data[0] / 100
    return ((stor6[address(arg1)] * ext_call.return_data[0] / 100) - (block.timestamp - ext_call.return_data[0] / stor7 * stor6[address(arg1)] * ext_call.return_data[0] / 100 / 0 / stor7))
}

function approve(address arg1, uint256 arg2) {
    idx = 0
    while idx < pools.length:
        mem[0] = 0
        if address(pools[idx]) != msg.sender:
            idx = idx + 1
            continue 
        require arg2 <= balance[address(msg.sender)]
        require balance[address(msg.sender)] - arg2 >= 0
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
        return 1
    if not stor5[address(msg.sender)]:
        require arg2 <= balance[address(msg.sender)]
        require balance[address(msg.sender)] - arg2 >= 0
    else:
        if not stor6[address(msg.sender)]:
            require arg2 <= balance[address(msg.sender)]
            require balance[address(msg.sender)] - arg2 >= 0
        else:
            require ext_code.size(stor5[address(msg.sender)])
            call stor5[address(msg.sender)].getStartLockTime() with:
                 gas gas_remaining wei
            require ext_call.success
            require return_data.size >= 32
            require ext_code.size(stor5[address(msg.sender)])
            call stor5[address(msg.sender)].getStopLockTime() with:
                 gas gas_remaining wei
            require ext_call.success
            require return_data.size >= 32
            if block.timestamp > ext_call.return_data[0]:
                require arg2 <= balance[address(msg.sender)]
                require balance[address(msg.sender)] - arg2 >= 0
            else:
                require ext_code.size(stor5[address(msg.sender)])
                call stor5[address(msg.sender)].getBaseLockPercent() with:
                     gas gas_remaining wei
                require ext_call.success
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require arg2 <= balance[address(msg.sender)]
                    require balance[address(msg.sender)] - arg2 >= 0
                else:
                    require ext_code.size(stor5[address(msg.sender)])
                    call stor5[address(msg.sender)].getBaseLockPercent() with:
                         gas gas_remaining wei
                    require ext_call.success
                    require return_data.size >= 32
                    if stor6[address(msg.sender)]:
                        require stor6[address(msg.sender)]
                        require stor6[address(msg.sender)] * ext_call.return_data[0] / stor6[address(msg.sender)] == ext_call.return_data[0]
                    require stor6[address(msg.sender)] * ext_call.return_data[0] == (100 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100) + (stor6[address(msg.sender)] * ext_call.return_data[0] % 100)
                    if block.timestamp < ext_call.return_data[0]:
                        require arg2 <= balance[address(msg.sender)]
                        require balance[address(msg.sender)] - arg2 >= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                    else:
                        require ext_code.size(stor5[address(msg.sender)])
                        call stor5[address(msg.sender)].getLinearRelease() with:
                             gas gas_remaining wei
                        require ext_call.success
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require arg2 <= balance[address(msg.sender)]
                            if block.timestamp >= ext_call.return_data[0]:
                                require balance[address(msg.sender)] - arg2 >= 0
                            else:
                                require balance[address(msg.sender)] - arg2 >= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                        else:
                            if block.timestamp < ext_call.return_data[0] + stor7:
                                require arg2 <= balance[address(msg.sender)]
                                require balance[address(msg.sender)] - arg2 >= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                            else:
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                require stor7 > 0
                                require stor7
                                require 0 == (stor7 * 0 / stor7) + (0 % stor7)
                                if 0 / stor7 <= 0:
                                    require arg2 <= balance[address(msg.sender)]
                                    if block.timestamp < ext_call.return_data[0]:
                                        require balance[address(msg.sender)] - arg2 >= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                                    else:
                                        require balance[address(msg.sender)] - arg2 >= 0
                                else:
                                    require 0 / stor7
                                    require stor6[address(msg.sender)] * ext_call.return_data[0] / 100 == (0 / stor7 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7) + (stor6[address(msg.sender)] * ext_call.return_data[0] / 100 % 0 / stor7)
                                    require ext_call.return_data[0] <= block.timestamp
                                    require stor7 > 0
                                    require stor7
                                    require block.timestamp - ext_call.return_data[0] == (stor7 * block.timestamp - ext_call.return_data[0] / stor7) + (block.timestamp - ext_call.return_data[0] % stor7)
                                    if block.timestamp - ext_call.return_data[0] / stor7:
                                        require block.timestamp - ext_call.return_data[0] / stor7
                                        require block.timestamp - ext_call.return_data[0] / stor7 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7 / block.timestamp - ext_call.return_data[0] / stor7 == stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7
                                    require block.timestamp - ext_call.return_data[0] / stor7 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7 <= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                                    require arg2 <= balance[address(msg.sender)]
                                    require balance[address(msg.sender)] - arg2 >= (stor6[address(msg.sender)] * ext_call.return_data[0] / 100) - (block.timestamp - ext_call.return_data[0] / stor7 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    idx = 0
    while idx < pools.length:
        mem[0] = 0
        if address(pools[idx]) != msg.sender:
            idx = idx + 1
            continue 
        require arg2 <= balance[address(msg.sender)]
        require balance[address(msg.sender)] - arg2 >= 0
        require balance[address(msg.sender)] >= arg2
        require arg2 > 0
        require arg2 <= balance[address(msg.sender)]
        balance[address(msg.sender)] -= arg2
        require balance[address(arg1)] + arg2 >= balance[address(arg1)]
        require balance[address(arg1)] + arg2 >= arg2
        balance[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
        return 1
    if not stor5[address(msg.sender)]:
        require arg2 <= balance[address(msg.sender)]
        require balance[address(msg.sender)] - arg2 >= 0
    else:
        if not stor6[address(msg.sender)]:
            require arg2 <= balance[address(msg.sender)]
            require balance[address(msg.sender)] - arg2 >= 0
        else:
            require ext_code.size(stor5[address(msg.sender)])
            call stor5[address(msg.sender)].getStartLockTime() with:
                 gas gas_remaining wei
            require ext_call.success
            require return_data.size >= 32
            require ext_code.size(stor5[address(msg.sender)])
            call stor5[address(msg.sender)].getStopLockTime() with:
                 gas gas_remaining wei
            require ext_call.success
            require return_data.size >= 32
            if block.timestamp > ext_call.return_data[0]:
                require arg2 <= balance[address(msg.sender)]
                require balance[address(msg.sender)] - arg2 >= 0
            else:
                require ext_code.size(stor5[address(msg.sender)])
                call stor5[address(msg.sender)].getBaseLockPercent() with:
                     gas gas_remaining wei
                require ext_call.success
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    require arg2 <= balance[address(msg.sender)]
                    require balance[address(msg.sender)] - arg2 >= 0
                else:
                    require ext_code.size(stor5[address(msg.sender)])
                    call stor5[address(msg.sender)].getBaseLockPercent() with:
                         gas gas_remaining wei
                    require ext_call.success
                    require return_data.size >= 32
                    if stor6[address(msg.sender)]:
                        require stor6[address(msg.sender)]
                        require stor6[address(msg.sender)] * ext_call.return_data[0] / stor6[address(msg.sender)] == ext_call.return_data[0]
                    require stor6[address(msg.sender)] * ext_call.return_data[0] == (100 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100) + (stor6[address(msg.sender)] * ext_call.return_data[0] % 100)
                    if block.timestamp < ext_call.return_data[0]:
                        require arg2 <= balance[address(msg.sender)]
                        require balance[address(msg.sender)] - arg2 >= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                    else:
                        require ext_code.size(stor5[address(msg.sender)])
                        call stor5[address(msg.sender)].getLinearRelease() with:
                             gas gas_remaining wei
                        require ext_call.success
                        require return_data.size >= 32
                        if not ext_call.return_data[0]:
                            require arg2 <= balance[address(msg.sender)]
                            if block.timestamp >= ext_call.return_data[0]:
                                require balance[address(msg.sender)] - arg2 >= 0
                            else:
                                require balance[address(msg.sender)] - arg2 >= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                        else:
                            if block.timestamp < ext_call.return_data[0] + stor7:
                                require arg2 <= balance[address(msg.sender)]
                                require balance[address(msg.sender)] - arg2 >= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                            else:
                                require ext_call.return_data[0] <= ext_call.return_data[0]
                                require stor7 > 0
                                require stor7
                                require 0 == (stor7 * 0 / stor7) + (0 % stor7)
                                if 0 / stor7 <= 0:
                                    require arg2 <= balance[address(msg.sender)]
                                    if block.timestamp < ext_call.return_data[0]:
                                        require balance[address(msg.sender)] - arg2 >= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                                    else:
                                        require balance[address(msg.sender)] - arg2 >= 0
                                else:
                                    require 0 / stor7
                                    require stor6[address(msg.sender)] * ext_call.return_data[0] / 100 == (0 / stor7 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7) + (stor6[address(msg.sender)] * ext_call.return_data[0] / 100 % 0 / stor7)
                                    require ext_call.return_data[0] <= block.timestamp
                                    require stor7 > 0
                                    require stor7
                                    require block.timestamp - ext_call.return_data[0] == (stor7 * block.timestamp - ext_call.return_data[0] / stor7) + (block.timestamp - ext_call.return_data[0] % stor7)
                                    if block.timestamp - ext_call.return_data[0] / stor7:
                                        require block.timestamp - ext_call.return_data[0] / stor7
                                        require block.timestamp - ext_call.return_data[0] / stor7 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7 / block.timestamp - ext_call.return_data[0] / stor7 == stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7
                                    require block.timestamp - ext_call.return_data[0] / stor7 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7 <= stor6[address(msg.sender)] * ext_call.return_data[0] / 100
                                    require arg2 <= balance[address(msg.sender)]
                                    require balance[address(msg.sender)] - arg2 >= (stor6[address(msg.sender)] * ext_call.return_data[0] / 100) - (block.timestamp - ext_call.return_data[0] / stor7 * stor6[address(msg.sender)] * ext_call.return_data[0] / 100 / 0 / stor7)
    require balance[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg2 <= balance[address(msg.sender)]
    balance[address(msg.sender)] -= arg2
    require balance[address(arg1)] + arg2 >= balance[address(arg1)]
    require balance[address(arg1)] + arg2 >= arg2
    balance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
