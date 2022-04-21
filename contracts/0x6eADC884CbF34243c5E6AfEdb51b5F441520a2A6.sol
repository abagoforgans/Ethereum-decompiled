contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    require code.data[1050 len 20]
    stor1 = code.data[1050 len 20]
    return code.data[129 len 909]
}



// =====================  Runtime code  =====================


address owner;
address bankAddress;

function bankAddress() {
    return bankAddress
}

function owner() {
    return owner
}

function setBankAddress(address arg1) {
    require owner == msg.sender
    require arg1
    bankAddress = arg1
}

function _fallback() payable {
    require msg.value > 0
    call bankAddress with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function transferEther() {
    require owner == msg.sender
    require eth.balance(this.address) > 0
    call bankAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function transferToken(address arg1) {
    require owner == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args bankAddress, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
