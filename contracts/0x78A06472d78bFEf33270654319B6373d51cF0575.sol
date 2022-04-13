contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 1124]
}



// =====================  Runtime code  =====================


const VESTING_PERIOD = (4320 * 24 * 3600)

const DAILY_FUNDS_RELEASE = 15000 * 10^18


address owner;
address withdrawalAddress;
address easyMineTokenAddress;
uint256 startTime;
uint256 totalWithdrawn;

function totalWithdrawn() {
    return totalWithdrawn
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function easyMineToken() {
    return easyMineTokenAddress
}

function withdrawalAddress() {
    return withdrawalAddress
}

function _fallback() payable {
    revert
}

function setup(address arg1, address arg2) {
    require owner == msg.sender
    require arg1
    require arg2
    easyMineTokenAddress = arg1
    withdrawalAddress = arg2
    startTime = block.timestamp
}

function maxPossibleWithdrawal() {
    if block.timestamp >= startTime + (4320 * 24 * 3600):
        if (15000 * 10^18 * block.timestamp + -startTime - (4320 * 24 * 3600) / 24 * 3600) - totalWithdrawn >= 0:
            return ((15000 * 10^18 * block.timestamp + -startTime - (4320 * 24 * 3600) / 24 * 3600) - totalWithdrawn)
        else:
            return 0
    else:
        return 0
}

function withdraw(uint256 arg1) {
    require owner == msg.sender
    if block.timestamp < startTime + (4320 * 24 * 3600):
        if arg1 <= 0:
            return arg1
        else:
            return 0
    if (15000 * 10^18 * block.timestamp + -startTime - (4320 * 24 * 3600) / 24 * 3600) - totalWithdrawn < 0:
        if arg1 <= 0:
            return arg1
        else:
            return 0
    if arg1 <= (15000 * 10^18 * block.timestamp + -startTime - (4320 * 24 * 3600) / 24 * 3600) - totalWithdrawn:
        if arg1 > 0:
            require ext_code.size(easyMineTokenAddress)
            call easyMineTokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args withdrawalAddress, arg1
            require ext_call.success
            require ext_call.return_data[0]
            totalWithdrawn += arg1
        return arg1
    if (15000 * 10^18 * block.timestamp + -startTime - (4320 * 24 * 3600) / 24 * 3600) - totalWithdrawn > 0:
        require ext_code.size(easyMineTokenAddress)
        call easyMineTokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args withdrawalAddress, (15000 * 10^18 * block.timestamp + -startTime - (4320 * 24 * 3600) / 24 * 3600) - totalWithdrawn
        require ext_call.success
        require ext_call.return_data[0]
        totalWithdrawn = 15000 * 10^18 * block.timestamp + -startTime - (4320 * 24 * 3600) / 24 * 3600
    return ((15000 * 10^18 * block.timestamp + -startTime - (4320 * 24 * 3600) / 24 * 3600) - totalWithdrawn)
}



}
