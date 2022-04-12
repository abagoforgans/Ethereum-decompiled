contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 394]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function Run() {
    require ext_code.size(0xd64de830995c7407b09cf96ec59f76701d4dbcf9)
    call 0xd64de830995c7407b09cf96ec59f76701d4dbcf9.0xddfae529 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(0x68c8d804fab87b3d2cf3f02914ef2be6b199436)
    call 0x068c8d804fab87b3d2cf3f02914ef2be6b199436.0xddfae529 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[0]
}



}
