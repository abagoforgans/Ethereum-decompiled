contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1426]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function query(uint256 arg1, string arg2, string arg3) payable {
    call 0xfa5186a0af28454ba31bfc7b1100880b01b2051d.0x34f939c5 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    emit 0x10e5a063: ext_call.return_data[0], arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
    return ext_call.return_data[0]
}

function sub_a4c8a1c1(?) payable {
    call 0xfa5186a0af28454ba31bfc7b1100880b01b2051d.0x34f939c5 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    if not arg3.length % 32:
        emit 0x97b98c12: ext_call.return_data[0], arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, arg3.length + arg2.length + 224
    else:
        emit 0x97b98c12: ext_call.return_data[0], arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 192, floor32(arg3.length) + arg2.length + 256
    return ext_call.return_data[0]
}



}
