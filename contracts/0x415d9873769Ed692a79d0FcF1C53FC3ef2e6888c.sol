contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor0 = code.data[985 len 20]
    stor3 = code.data[1017 len 20]
    stor2 = code.data[1049 len 20]
    return code.data[150 len 823]
}



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
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function issue(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor1[address(arg1)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 50 wei
        args allowerAddress, address(arg1), arg2
    require ext_call.success
    stor1[address(arg1)] = 1
    issuedCount += arg2
}



}
