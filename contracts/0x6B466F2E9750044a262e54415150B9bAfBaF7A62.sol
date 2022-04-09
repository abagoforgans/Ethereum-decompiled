contract main {


// =======================  Init code  ======================


const _fallback = code.data[28 len 851]




// =====================  Runtime code  =====================


mapping of uint256 stor0;

function _fallback() payable {
    revert
}

function sub_aed9f4c6(?) {
    if stor0[address(msg.sender)] <= 0:
    call msg.sender with:
       value stor0[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_18d15719(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require ext_code.size(arg2)
    call arg2.0x7321a80d with:
         gas gas_remaining - 710 wei
        args msg.value, msg.sender
    require ext_call.success
    if not arg3:
        stor0[address(arg2)] += ext_call.return_data[0]
    else:
        require ext_code.size(arg2)
        call arg2.0xaf1a2814 with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
    if msg.value - ext_call.return_data[0] > 0:
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    mem[ceil32(arg1.length) + 160] = arg2
    mem[ceil32(arg1.length) + 192] = msg.sender
    mem[ceil32(arg1.length) + 224] = ext_call.return_data[0]
    mem[ceil32(arg1.length) + 128] = 128
    mem[ceil32(arg1.length) + 256] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 288] = mem[128]
        mem[ceil32(arg1.length) + 320 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit 0xd0482643: Array(len=arg1.length, data=mem[ceil32(arg1.length) + 288 len arg1.length]), address(arg2), msg.sender, ext_call.return_data[0]
}



}
