contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1351 len 32]
    return code.data[130 len 1221]
}



// =====================  Runtime code  =====================


address stor0;
uint32 stor1;
address stor2;

function remove() {
    require msg.sender == stor2
    selfdestruct(this.address)
}

function _fallback() payable {
    revert
}

function tip(address arg1, uint256 arg2) payable {
    require msg.sender == stor0
    stor2 = arg1
    require ext_code.size(stor2)
    call stor2.0x18d9adab with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.users(uint256 arg1) with:
         gas gas_remaining - 710 wei
        args ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] > 0
    require ext_call.return_data[12 len 20]
    require msg.value > 0
    call ext_call.return_data[12 len 20] with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(stor2)
    call stor2.0x2f32651b with:
         gas gas_remaining - 710 wei
        args 0, 0, stor1, ext_call.return_data[0], msg.value, msg.sender
    require ext_call.success
}



}
