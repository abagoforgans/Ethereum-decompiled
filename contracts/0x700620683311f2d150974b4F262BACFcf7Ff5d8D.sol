contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor5;
uint256 stor7;
address stor8;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1702 len 20]
    stor2 = code.data[1722 len 32]
    stor3 = code.data[1754 len 32]
    stor7 = 0
    stor5 = 0
    stor8 = code.data[1670 len 20]
    return code.data[155 len 1503]
}



// =====================  Runtime code  =====================


address owner;
address beneficiaryAddress;
uint256 tranchePeriodInDays;
uint256 trancheAmountPct;
uint256 lockStart;
uint256 completeUnlockTime;
uint256 initialFunds;
uint256 tranchesSent;
address tokenAddress;

function beneficiary() {
    return beneficiaryAddress
}

function trancheAmountPct() {
    return trancheAmountPct
}

function tranchePeriodInDays() {
    return tranchePeriodInDays
}

function lockStart() {
    return lockStart
}

function owner() {
    return owner
}

function tranchesSent() {
    return tranchesSent
}

function completeUnlockTime() {
    return completeUnlockTime
}

function initialFunds() {
    return initialFunds
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function oneTrancheAmount() {
    return (initialFunds * trancheAmountPct / 100)
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    owner = arg1
}

function lock(uint256 arg1) {
    require owner == msg.sender
    require not lockStart
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    initialFunds = ext_call.return_data[0]
    lockStart = block.timestamp
    completeUnlockTime = (24 * 3600 * arg1) + block.timestamp
}

function amountAvailableToWithdraw() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] <= 0:
        return 0
    if block.timestamp > completeUnlockTime:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        return ext_call.return_data[0], 0
    require 24 * 3600 * tranchePeriodInDays
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if (initialFunds * trancheAmountPct / 100) + (block.timestamp - lockStart / 24 * 3600 * tranchePeriodInDays * initialFunds * trancheAmountPct / 100) - (tranchesSent * initialFunds * trancheAmountPct / 100) <= ext_call.return_data[0]:
        return (initialFunds * trancheAmountPct / 100) + (block.timestamp - lockStart / 24 * 3600 * tranchePeriodInDays * initialFunds * trancheAmountPct / 100) - (tranchesSent * initialFunds * trancheAmountPct / 100), 
               (block.timestamp - lockStart / 24 * 3600 * tranchePeriodInDays) + -tranchesSent + 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require initialFunds * trancheAmountPct / 100
    return ext_call.return_data[0], ext_call.return_data[0] / initialFunds * trancheAmountPct / 100
}

function sendToBeneficiary() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if block.timestamp > completeUnlockTime:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_call.return_data[0] > 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args beneficiaryAddress, ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit Withdraw(ext_call.return_data[0], tranchesSent);
    else:
        require 24 * 3600 * tranchePeriodInDays
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        if (initialFunds * trancheAmountPct / 100) + (block.timestamp - lockStart / 24 * 3600 * tranchePeriodInDays * initialFunds * trancheAmountPct / 100) - (tranchesSent * initialFunds * trancheAmountPct / 100) <= ext_call.return_data[0]:
            require (initialFunds * trancheAmountPct / 100) + (block.timestamp - lockStart / 24 * 3600 * tranchePeriodInDays * initialFunds * trancheAmountPct / 100) - (tranchesSent * initialFunds * trancheAmountPct / 100) > 0
            tranchesSent = (block.timestamp - lockStart / 24 * 3600 * tranchePeriodInDays) + 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, (initialFunds * trancheAmountPct / 100) + (block.timestamp - lockStart / 24 * 3600 * tranchePeriodInDays * initialFunds * trancheAmountPct / 100) - (tranchesSent * initialFunds * trancheAmountPct / 100)
            require ext_call.success
            require ext_call.return_data[0]
            emit Withdraw((initialFunds * trancheAmountPct / 100) + (block.timestamp - lockStart / 24 * 3600 * tranchePeriodInDays * initialFunds * trancheAmountPct / 100) - (tranchesSent * initialFunds * trancheAmountPct / 100), tranchesSent);
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require initialFunds * trancheAmountPct / 100
            require ext_call.return_data[0] > 0
            tranchesSent += ext_call.return_data[0] / initialFunds * trancheAmountPct / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args beneficiaryAddress, ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            emit Withdraw(ext_call.return_data[0], tranchesSent);
}



}
