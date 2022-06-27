contract main {




// =====================  Runtime code  =====================


address owner;
address investTokenAddress;

function owner() {
    return owner
}

function investToken() {
    return investTokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sendDividends(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0x52f1365c with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
