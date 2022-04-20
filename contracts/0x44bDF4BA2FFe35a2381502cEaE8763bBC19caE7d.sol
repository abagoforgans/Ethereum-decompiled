contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;
uint256 stor4;

function _fallback() {
    stor0 = msg.sender
    require code.data[1719 len 20]
    require code.data[1751 len 20]
    stor2 = code.data[1719 len 20]
    stor3 = code.data[1751 len 20]
    require ext_code.size(code.data[1751 len 20])
    call code.data[1751 len 20].0x3197cbb6 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0] + (4368 * 24 * 3600) >= ext_call.return_data[0]
    stor4 = ext_call.return_data[0] + (4368 * 24 * 3600)
    return code.data[362 len 1345]
}



// =====================  Runtime code  =====================


const currentTime = block.timestamp


address owner;
address proposedOwner;
address simpleTokenAddress;
address tokenSaleAddress;
uint256 unlockDate;

function simpleToken() {
    return simpleTokenAddress
}

function unlockDate() {
    return unlockDate
}

function owner() {
    return owner
}

function tokenSale() {
    return tokenSaleAddress
}

function proposedOwner() {
    return proposedOwner
}

function remove() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function hasUnlockDatePassed() {
    return block.timestamp >= unlockDate
}

function initiateOwnershipTransfer(address arg1) {
    require msg.sender == owner
    proposedOwner = arg1
    emit OwnershipTransferInitiated(arg1);
    return 1
}

function extendUnlockDate(uint256 arg1) {
    require msg.sender == owner
    require arg1 > unlockDate
    unlockDate = arg1
    emit UnlockDateExtended(arg1);
    return 1
}

function completeOwnershipTransfer() {
    require proposedOwner == msg.sender
    owner = proposedOwner
    proposedOwner = 0
    emit OwnershipTransferCompleted(proposedOwner);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp >= unlockDate
    require ext_code.size(simpleTokenAddress)
    call simpleTokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit TokensTransferred(arg2, arg1);
    return 1
}



}
