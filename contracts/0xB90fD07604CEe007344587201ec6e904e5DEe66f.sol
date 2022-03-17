contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 652]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function query(uint256 arg1, string arg2, string arg3) payable {
    call 0xfa5186a0af28454ba31bfc7b1100880b01b2051d.0x34f939c5 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    emit 0x8e06c3a6: ext_call.return_data[0], arg1, Array(len=arg2.length, data=arg2[all]), arg2.length + 160
    return ext_call.return_data[0]
}



}
