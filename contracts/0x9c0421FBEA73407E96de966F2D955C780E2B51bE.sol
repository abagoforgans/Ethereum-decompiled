contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 755]




// =====================  Runtime code  =====================


function _fallback() payable {
  stop
}

function test() payable {
    call 0x8bbc48eee73d1caa9526ed4676febb852177297c.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    mem[356] = mem[385 len 3]
    mem[452] = mem[482 len 2]
    call address(ext_call.return_data[0]).0x504ac982 with:
       value msg.value wei
         gas gas_remaining - 34050 wei
        args 64, 128, 3, mem[356], 34, '1MCwBbhNGp5hRm5rC1Aims2YFRe2SXPY', 'Kt', mem[452]
    require ext_call.success
}

function shapeshiftTransfer(uint256 arg1, string arg2, string arg3) payable {
    call 0x8bbc48eee73d1caa9526ed4676febb852177297c.0x38cc4831 with:
         gas gas_remaining - 25050 wei
    require ext_call.success
    call address(ext_call.return_data[0]).0x504ac982 with:
       value arg1 wei
         gas gas_remaining - 34050 wei
        args Array(len=arg2.length, data=arg2[all]), arg2.length + 96
    require ext_call.success
    return ext_call.return_data[0]
}



}
