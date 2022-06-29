contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function sub_fe651a18(?) {
    require ext_code.size(0xd4b1e8dc98374b5037e545b82d8607f49f328062)
    call 0xd4b1e8dc98374b5037e545b82d8607f49f328062.0x69edaa0 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
        args eth.balance(this.address)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
