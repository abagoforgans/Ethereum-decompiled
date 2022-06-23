contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address tokenAddress;
address allowerAddress;
uint256 issuedCount;

function issuedCount() {
    return issuedCount
}

function owner() {
    return owner
}

function allower() {
    return allowerAddress
}

function issued(address arg1) {
    return bool(stor1[arg1])
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function issue(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor1[address(arg1)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining wei
        args allowerAddress, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor1[address(arg1)] = 1
    issuedCount += arg2
}



}
