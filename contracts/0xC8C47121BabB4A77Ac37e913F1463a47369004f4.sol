contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[98 len 2574]
}



// =====================  Runtime code  =====================


address owner;
address saleContractAddress;
mapping of uint8 stor2;

function owner() {
    return owner
}

function saleContract() {
    return saleContractAddress
}

function destroy() {
    require msg.sender == owner
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require msg.sender == owner
    selfdestruct(arg1)
}

function _fallback() {
  stop
}

function sub_c82a808a(?) {
    require msg.sender == owner
    saleContractAddress = arg1
    return 1
}

function whitelistAddress(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 1
    return 1
}

function blacklistAddress(address arg1) {
    require msg.sender == owner
    stor2[address(arg1)] = 0
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function isWhitelisted(address arg1) {
    if owner != msg.sender:
        require msg.sender == saleContractAddress
    return bool(stor2[address(arg1)])
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
