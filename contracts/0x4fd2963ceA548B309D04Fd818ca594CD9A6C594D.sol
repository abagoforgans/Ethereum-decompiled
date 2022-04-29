contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1393]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function customers(address arg1) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function addCustomer(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
    emit 0xc52f4771: arg1
}

function deleteCustomer(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
    emit 0xaf508782: arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}



}
