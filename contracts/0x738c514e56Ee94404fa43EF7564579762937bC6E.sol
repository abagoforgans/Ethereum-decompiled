contract main {


// =======================  Init code  ======================


address stor1;
address stor2;

function _fallback() payable {
    stor1 = 0x294caec1e7c1b674f409514af529af02e67cdb56
    require not msg.value
    stor2 = msg.sender
    return code.data[180 len 1134]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sendTokens() {
    require owner == msg.sender
    stor0 = stor1
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
    return ext_call.return_data[0]
}



}
