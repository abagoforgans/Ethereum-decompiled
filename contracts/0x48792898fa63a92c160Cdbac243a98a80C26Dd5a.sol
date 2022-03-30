contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x209c4784ab1e8183cf58ca33cb740efbf3fc18ef
    return code.data[115 len 942]
}



// =====================  Runtime code  =====================


address stor0;

function sub_82c90ac0(?) {
    require msg.sender == 0xb42b20ddbeabdc2a288be7ff847ff94fb48d2579
    stor0 = arg1
}

function _fallback() payable {
    call stor0 with:
       value msg.value wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function sweep(address arg1, address arg2) {
    require msg.sender == 0xb42b20ddbeabdc2a288be7ff847ff94fb48d2579
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
