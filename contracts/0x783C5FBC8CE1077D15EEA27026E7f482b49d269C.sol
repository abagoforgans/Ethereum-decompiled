contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor1 = code.data[1991 len 20]
    stor2 = code.data[2023 len 20]
    stor0 = msg.sender
    return code.data[263 len 1716]
}



// =====================  Runtime code  =====================


address owner;
address destinationAddress;
address tokenAddress;

function owner() {
    return owner
}

function destination() {
    return destinationAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function setDestination(address arg1) {
    require msg.sender == owner
    destinationAddress = arg1
    emit DestinationChanged(destinationAddress, arg1);
    return 1
}

function sweep() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args destinationAddress, ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0]:
        emit LogSweep(ext_call.return_data[0], msg.sender, destinationAddress, tokenAddress);
    return bool(ext_call.return_data[0])
}



}
