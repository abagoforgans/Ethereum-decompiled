contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1535 len 20]
    stor2 = 1000
    stor3 = msg.sender
    return code.data[140 len 1383]
}



// =====================  Runtime code  =====================


address owner;
address sub_ad30c18dAddress;
uint256 sub_352a3a1a;
address receiverAddress;

function sub_352a3a1a(?) {
    return sub_352a3a1a
}

function owner() {
    return owner
}

function sub_ad30c18d(?) {
    return sub_ad30c18dAddress
}

function receiver() {
    return receiverAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function changeReceiver(address arg1) {
    require owner == msg.sender
    require arg1
    receiverAddress = arg1
}

function withdrawToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_1aef3376(?) {
    require owner == msg.sender
    require ext_code.size(sub_ad30c18dAddress)
    call sub_ad30c18dAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require msg.sender
    require ext_code.size(sub_ad30c18dAddress)
    call sub_ad30c18dAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value * sub_352a3a1a <= ext_call.return_data[0]
    require ext_code.size(sub_ad30c18dAddress)
    call sub_ad30c18dAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * sub_352a3a1a
    require ext_call.success
    call receiverAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit LogBought((msg.value * sub_352a3a1a));
}

function buy(address arg1) payable {
    require arg1
    require ext_code.size(sub_ad30c18dAddress)
    call sub_ad30c18dAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require msg.value * sub_352a3a1a <= ext_call.return_data[0]
    require ext_code.size(sub_ad30c18dAddress)
    call sub_ad30c18dAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * sub_352a3a1a
    require ext_call.success
    call receiverAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    emit LogBought((msg.value * sub_352a3a1a));
}



}
