contract main {


// =======================  Init code  ======================


address stor0;
address stor4;
uint256 stor5;

function _fallback() payable {
    stor5 = 1
    require not msg.value
    stor0 = msg.sender
    stor4 = code.data[3303 len 20]
    return code.data[193 len 3098]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
mapping of uint256 deposits;
mapping of uint256 withdraws;
address tokenAddress;
uint256 minRelease;

function owner() {
    return owner
}

function getDeposits(address arg1) {
    return deposits[address(arg1)]
}

function minRelease() {
    return minRelease
}

function getWithdraws(address arg1) {
    return withdraws[address(arg1)]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setMinRelease(uint256 arg1) {
    require msg.sender == owner
    minRelease = arg1
}

function setAuthorized(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function revokeAuthorized(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deposit(uint256 arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg1
    require ext_call.success
    require deposits[address(msg.sender)] + arg1 >= deposits[address(msg.sender)]
    deposits[address(msg.sender)] += arg1
    emit Deposit(arg1, msg.sender);
    return 1
}

function release(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    require arg2 >= minRelease
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require withdraws[address(arg1)] + arg2 >= withdraws[address(arg1)]
    withdraws[address(arg1)] += arg2
    emit Release(arg2, arg1);
    return 0
}



}
