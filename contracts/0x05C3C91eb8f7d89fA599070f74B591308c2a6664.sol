contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    return code.data[93 len 2409]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function sub_e90dfdfa(?) {
    require msg.sender == owner
    stor1 = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require ext_code.size(stor1)
    call stor1.0x331e7280 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(stor1)
    call stor1.0xa5609597 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(stor1)
    call stor1.0xe0b376d8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(stor1)
    call stor1.0x6cf9cec7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(stor1)
    call stor1.0x4faea5d0 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(stor1)
    call stor1.0x66db33a7 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    call ext_call.return_data[12 len 20] with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(stor1)
    call stor1.0xd1aa94a3 with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value
    require ext_call.success
    emit Buy(msg.sender, msg.value);
}



}
