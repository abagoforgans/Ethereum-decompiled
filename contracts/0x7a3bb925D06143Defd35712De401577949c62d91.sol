contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1268 len 20]
    return code.data[95 len 1161]
}



// =====================  Runtime code  =====================


address owner;
address sub_4fe870abAddress;

function sub_4fe870ab(?) {
    return sub_4fe870abAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_5bee6f92(?) {
    require owner == msg.sender
    sub_4fe870abAddress = arg1
}

function sub_10c42eaf(?) payable {
    if owner != msg.sender:
        require ext_code.size(sub_4fe870abAddress)
        call sub_4fe870abAddress.isAuthorized(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        require 1 == bool(ext_call.return_data[0])
    call arg1 with:
       value arg2 + msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function TransferTokens(address arg1, address arg2, uint256 arg3) {
    if owner != msg.sender:
        require ext_code.size(sub_4fe870abAddress)
        call sub_4fe870abAddress.isAuthorized(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    require ext_call.success
}

function sub_4d63a542(?) payable {
    if owner != msg.sender:
        require ext_code.size(sub_4fe870abAddress)
        call sub_4fe870abAddress.isAuthorized(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        require ext_call.success
        require 1 == bool(ext_call.return_data[0])
    require ext_code.size(arg1)
    call arg1.0x359d1f11 with:
       value msg.value + arg2 wei
         gas gas_remaining wei
        args Mask(128, 128, arg3)
    require ext_call.success
}



}
