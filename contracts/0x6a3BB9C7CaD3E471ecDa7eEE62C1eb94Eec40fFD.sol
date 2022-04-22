contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    require code.data[1146 len 20]
    stor1 = code.data[1146 len 20]
    return code.data[129 len 1005]
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

function sub_6c3b58e0(?) {
    require owner == msg.sender
    require arg1
    require mulmod(arg2, arg3, arg4) == arg5
    bankAddress = arg1
}

function _fallback() payable {
    require msg.value > 0
    call bankAddress with:
       value msg.value wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function transferEther(uint256 arg1) {
    require owner == msg.sender
    require eth.balance(this.address) > 0
    require arg1 > 0
    require eth.balance(this.address) >= arg1
    call bankAddress with:
       value arg1 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function transferToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require arg2 > 0
    require ext_call.return_data[0] >= arg2
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args bankAddress, arg2
    require ext_call.success
    require ext_call.return_data[0]
}



}
