contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
mapping of address winners;
mapping of uint256 balances;
uint256 minBet;
uint256 startTime;
uint256 roundTime;
address walletAddress;
address jackpotAddress;
uint256 pool;
uint256 sub_680c63b3;
uint256 sub_e082a8b3;
uint256 jackpotPercent;
uint256 lastRound;

function pool() {
    return pool
}

function getRoundBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function balances(uint256 arg1) {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function wallet() {
    return walletAddress
}

function sub_680c63b3(?) {
    return sub_680c63b3
}

function jackpot() {
    return jackpotAddress
}

function startTime() {
    return startTime
}

function lastRound() {
    return lastRound
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function winners(uint256 arg1) {
    require calldata.size - 4 >= 32
    return winners[arg1]
}

function jackpotPercent() {
    return jackpotPercent
}

function sub_e082a8b3(?) {
    return sub_e082a8b3
}

function pendingOwner() {
    return pendingOwner
}

function roundTime() {
    return roundTime
}

function sub_0de94fd5(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minBet = arg1
}

function sub_626a99a8(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    roundTime = arg1
}

function sub_d1d16834(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    jackpotAddress = arg1
}

function changeStartTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    startTime = arg1
}

function changeWallet(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    walletAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pendingOwner = arg1
}

function getWinner(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not winners[arg1]:
        return walletAddress
    return winners[arg1]
}

function sub_776e831b(?) {
    require calldata.size - 4 >= 32
    require startTime <= arg1
    require roundTime
    return (arg1 - startTime / roundTime)
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function getCurrentRound() {
    require startTime <= block.timestamp
    require roundTime
    require (block.timestamp - startTime / roundTime) + 1 >= block.timestamp - startTime / roundTime
    return ((block.timestamp - startTime / roundTime) + 1)
}

function sub_a7327ea8(?) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    require arg2 + arg1 >= arg1
    require arg3 >= 0
    require arg4 >= 0
    require 100 == arg4 + arg3 + arg2 + arg1
    sub_680c63b3 = arg3
    sub_e082a8b3 = arg2
    jackpotPercent = arg4
}

function sub_831711a1(?) {
    require startTime <= block.timestamp
    require roundTime
    require (block.timestamp - startTime / roundTime) + 1 >= block.timestamp - startTime / roundTime
    require 1 <= (block.timestamp - startTime / roundTime) + 1
    return (block.timestamp - startTime / roundTime)
}

function sub_c07904ac(?) payable {
    require calldata.size - 4 >= 32
    require msg.value >= minBet
    require startTime <= block.timestamp
    require roundTime
    require (block.timestamp - startTime / roundTime) + 1 >= block.timestamp - startTime / roundTime
    if (block.timestamp - startTime / roundTime) + 1 > 1:
        if not balances[(block.timestamp - stor5 / stor6) + 1]:
            balances[stor13] = 0
            require pool + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
            balances[(block.timestamp - stor5 / stor6) + 1] += pool
            pool = 0
            if not winners[stor13]:
                call walletAddress with:
                   value balances[stor13] wei
                     gas 2300 * is_zero(value) wei
            else:
                call winners[stor13] with:
                   value balances[stor13] wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    lastRound = (block.timestamp - startTime / roundTime) + 1
    if not msg.value:
        if not msg.value:
            if not msg.value:
                winners[(block.timestamp - stor5 / stor6) + 1] = arg1
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                balances[(block.timestamp - stor5 / stor6) + 1] += msg.value
                require pool >= pool
                call jackpotAddress with:
                     gas 2300 wei
            else:
                require jackpotPercent * msg.value / msg.value == jackpotPercent
                winners[(block.timestamp - stor5 / stor6) + 1] = arg1
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require jackpotPercent * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (jackpotPercent * msg.value / 100)
                require pool >= pool
                call jackpotAddress with:
                   value jackpotPercent * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
        else:
            require sub_e082a8b3 * msg.value / msg.value == sub_e082a8b3
            if not msg.value:
                winners[(block.timestamp - stor5 / stor6) + 1] = arg1
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_e082a8b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_e082a8b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_e082a8b3 * msg.value / 100)
                require (sub_e082a8b3 * msg.value / 100) + pool >= pool
                pool += sub_e082a8b3 * msg.value / 100
                call jackpotAddress with:
                     gas 2300 wei
            else:
                require jackpotPercent * msg.value / msg.value == jackpotPercent
                winners[(block.timestamp - stor5 / stor6) + 1] = arg1
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_e082a8b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require jackpotPercent * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_e082a8b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_e082a8b3 * msg.value / 100) - (jackpotPercent * msg.value / 100)
                require (sub_e082a8b3 * msg.value / 100) + pool >= pool
                pool += sub_e082a8b3 * msg.value / 100
                call jackpotAddress with:
                   value jackpotPercent * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call walletAddress with:
             gas 2300 wei
    else:
        require sub_680c63b3 * msg.value / msg.value == sub_680c63b3
        if not msg.value:
            if not msg.value:
                winners[(block.timestamp - stor5 / stor6) + 1] = arg1
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_680c63b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                require pool >= pool
                call jackpotAddress with:
                     gas 2300 wei
            else:
                require jackpotPercent * msg.value / msg.value == jackpotPercent
                winners[(block.timestamp - stor5 / stor6) + 1] = arg1
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_680c63b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                require jackpotPercent * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (jackpotPercent * msg.value / 100)
                require pool >= pool
                call jackpotAddress with:
                   value jackpotPercent * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
        else:
            require sub_e082a8b3 * msg.value / msg.value == sub_e082a8b3
            if not msg.value:
                winners[(block.timestamp - stor5 / stor6) + 1] = arg1
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_680c63b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_e082a8b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (sub_e082a8b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (sub_e082a8b3 * msg.value / 100)
                require (sub_e082a8b3 * msg.value / 100) + pool >= pool
                pool += sub_e082a8b3 * msg.value / 100
                call jackpotAddress with:
                     gas 2300 wei
            else:
                require jackpotPercent * msg.value / msg.value == jackpotPercent
                winners[(block.timestamp - stor5 / stor6) + 1] = arg1
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_680c63b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_e082a8b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                require jackpotPercent * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (sub_e082a8b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (sub_e082a8b3 * msg.value / 100) - (jackpotPercent * msg.value / 100)
                require (sub_e082a8b3 * msg.value / 100) + pool >= pool
                pool += sub_e082a8b3 * msg.value / 100
                call jackpotAddress with:
                   value jackpotPercent * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call walletAddress with:
           value sub_680c63b3 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require gas_remaining > 150000
    require msg.value >= minBet
    require startTime <= block.timestamp
    require roundTime
    require (block.timestamp - startTime / roundTime) + 1 >= block.timestamp - startTime / roundTime
    if (block.timestamp - startTime / roundTime) + 1 > 1:
        if not balances[(block.timestamp - stor5 / stor6) + 1]:
            balances[stor13] = 0
            require pool + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
            balances[(block.timestamp - stor5 / stor6) + 1] += pool
            pool = 0
            if not winners[stor13]:
                call walletAddress with:
                   value balances[stor13] wei
                     gas 2300 * is_zero(value) wei
            else:
                call winners[stor13] with:
                   value balances[stor13] wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    lastRound = (block.timestamp - startTime / roundTime) + 1
    if not msg.value:
        if not msg.value:
            if not msg.value:
                winners[(block.timestamp - stor5 / stor6) + 1] = msg.sender
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                balances[(block.timestamp - stor5 / stor6) + 1] += msg.value
                require pool >= pool
                call jackpotAddress with:
                     gas 2300 wei
            else:
                require jackpotPercent * msg.value / msg.value == jackpotPercent
                winners[(block.timestamp - stor5 / stor6) + 1] = msg.sender
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require jackpotPercent * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (jackpotPercent * msg.value / 100)
                require pool >= pool
                call jackpotAddress with:
                   value jackpotPercent * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
        else:
            require sub_e082a8b3 * msg.value / msg.value == sub_e082a8b3
            if not msg.value:
                winners[(block.timestamp - stor5 / stor6) + 1] = msg.sender
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_e082a8b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_e082a8b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_e082a8b3 * msg.value / 100)
                require (sub_e082a8b3 * msg.value / 100) + pool >= pool
                pool += sub_e082a8b3 * msg.value / 100
                call jackpotAddress with:
                     gas 2300 wei
            else:
                require jackpotPercent * msg.value / msg.value == jackpotPercent
                winners[(block.timestamp - stor5 / stor6) + 1] = msg.sender
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_e082a8b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require jackpotPercent * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_e082a8b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_e082a8b3 * msg.value / 100) - (jackpotPercent * msg.value / 100)
                require (sub_e082a8b3 * msg.value / 100) + pool >= pool
                pool += sub_e082a8b3 * msg.value / 100
                call jackpotAddress with:
                   value jackpotPercent * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call walletAddress with:
             gas 2300 wei
    else:
        require sub_680c63b3 * msg.value / msg.value == sub_680c63b3
        if not msg.value:
            if not msg.value:
                winners[(block.timestamp - stor5 / stor6) + 1] = msg.sender
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_680c63b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                require pool >= pool
                call jackpotAddress with:
                     gas 2300 wei
            else:
                require jackpotPercent * msg.value / msg.value == jackpotPercent
                winners[(block.timestamp - stor5 / stor6) + 1] = msg.sender
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_680c63b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                require jackpotPercent * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (jackpotPercent * msg.value / 100)
                require pool >= pool
                call jackpotAddress with:
                   value jackpotPercent * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
        else:
            require sub_e082a8b3 * msg.value / msg.value == sub_e082a8b3
            if not msg.value:
                winners[(block.timestamp - stor5 / stor6) + 1] = msg.sender
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_680c63b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_e082a8b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                require 0 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (sub_e082a8b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (sub_e082a8b3 * msg.value / 100)
                require (sub_e082a8b3 * msg.value / 100) + pool >= pool
                pool += sub_e082a8b3 * msg.value / 100
                call jackpotAddress with:
                     gas 2300 wei
            else:
                require jackpotPercent * msg.value / msg.value == jackpotPercent
                winners[(block.timestamp - stor5 / stor6) + 1] = msg.sender
                require msg.value + balances[(block.timestamp - stor5 / stor6) + 1] >= balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_680c63b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1]
                require sub_e082a8b3 * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100)
                require jackpotPercent * msg.value / 100 <= msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (sub_e082a8b3 * msg.value / 100)
                balances[(block.timestamp - stor5 / stor6) + 1] = msg.value + balances[(block.timestamp - stor5 / stor6) + 1] - (sub_680c63b3 * msg.value / 100) - (sub_e082a8b3 * msg.value / 100) - (jackpotPercent * msg.value / 100)
                require (sub_e082a8b3 * msg.value / 100) + pool >= pool
                pool += sub_e082a8b3 * msg.value / 100
                call jackpotAddress with:
                   value jackpotPercent * msg.value / 100 wei
                     gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call walletAddress with:
           value sub_680c63b3 * msg.value / 100 wei
             gas 2300 * is_zero(value) wei
}



}
