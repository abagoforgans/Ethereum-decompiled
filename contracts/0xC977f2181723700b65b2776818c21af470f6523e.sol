contract main {




// =====================  Runtime code  =====================


const sub_e0b0c60d(?) = 0xf880d3c6dcda42a7b2f6640703c5748557865b35


address stor0;

function _fallback() payable {
  stop
}

function transferEth() {
    require ext_code.size(stor0)
    call stor0.claimEth() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call 0xf880d3c6dcda42a7b2f6640703c5748557865b35 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function transferToken(address arg1) {
    require ext_code.size(stor0)
    call stor0.claimToken(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(arg1), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args 0xf880d3c6dcda42a7b2f6640703c5748557865b35, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}



}
