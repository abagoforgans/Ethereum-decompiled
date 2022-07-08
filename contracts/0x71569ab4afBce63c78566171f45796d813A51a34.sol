contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() payable {
    stor2 = 0x4a14d10195d42ffb5f326df7a7e4a3e8b6b71290
    require not msg.value
    stor0 = msg.sender
    return code.data[213 len 2344]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
address stor2;

function owner() {
    return owner
}

function owned() {
    owner = msg.sender
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sendTokens() {
    require owner == msg.sender
    stor1 = stor2
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    return ext_call.return_data[0]
}

function retrieveTokens(address arg1) {
    require owner == msg.sender
    stor1 = arg1
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    return ext_call.return_data[0]
}



}
