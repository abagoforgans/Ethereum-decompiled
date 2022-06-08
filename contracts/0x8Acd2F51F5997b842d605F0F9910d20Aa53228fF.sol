contract main {




// =====================  Runtime code  =====================


address owner;
address newOwner;
mapping of uint8 stor2;
address tokenAddress;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function crowdsales(address arg1) {
    return bool(stor2[arg1])
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function setToken(address arg1) {
    require msg.sender == owner
    tokenAddress = arg1
}

function addCrowdsales(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
}

function removeCrowdsales(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    newOwner = arg1
}

function tokensAvailable() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x69bb4dc2 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allocate(address arg1, uint256 arg2) {
    require 1 == bool(stor2[msg.sender])
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function isInitialized() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x9c7beb8a with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}



}
