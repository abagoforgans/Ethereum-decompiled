contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor4;

function _fallback() {
    stor0 = msg.sender
    require code.data[2030 len 20]
    stor1 = code.data[2030 len 20]
    stor4 = 0
    return code.data[157 len 1861]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address sub_002bae08Address;
uint256 interest;
uint8 status;
uint256 sub_bcabb7a9;

function sub_002bae08(?) {
    return sub_002bae08Address
}

function status() {
    require status <= 4
    return status
}

function getStatus() {
    require status <= 4
    return status
}

function owner() {
    return owner
}

function sub_bcabb7a9(?) {
    return sub_bcabb7a9
}

function interest() {
    return interest
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function sub_fa2190e6(?) {
    require sub_002bae08Address == msg.sender
    require status <= 4
    require status == 1
    status = 2
    emit 0xbda71ff1: msg.sender
}

function cancel() {
    require owner == msg.sender
    require status <= 4
    require status == 1
    require ext_code.size(stor1)
    call stor1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args owner, interest
    require ext_call.success
    status = 4
    emit Canceled()
}

function close() {
    require owner == msg.sender
    require status <= 4
    require status == 2
    require ext_code.size(stor1)
    call stor1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args sub_002bae08Address, interest
    require ext_call.success
    status = 3
    emit Closed()
}

function sub_03ef61cc(?) {
    require owner == msg.sender
    require status <= 4
    require not status
    require arg1
    require arg2
    require ext_code.size(stor1)
    call stor1.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor1)
    call stor1.0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg2
    require ext_call.success
    sub_002bae08Address = arg1
    interest = arg2
    sub_bcabb7a9 = arg3
    status = 1
}



}
