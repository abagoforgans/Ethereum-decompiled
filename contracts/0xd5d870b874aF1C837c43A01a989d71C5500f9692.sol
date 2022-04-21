contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[60 len 831]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    require msg.value > 0
    emit EtherDeposit(msg.value, msg.sender);
}

function sub_94081e21(?) {
    require owner == msg.sender
    require arg1
    require eth.balance(this.address) > 0
    require arg2 > 0
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas gas_remaining - 34710 wei
    require ext_call.success
}

function transferTokenTo(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require arg1
    require arg2
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    require arg3 > 0
    require ext_call.return_data[0] >= arg3
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}



}
