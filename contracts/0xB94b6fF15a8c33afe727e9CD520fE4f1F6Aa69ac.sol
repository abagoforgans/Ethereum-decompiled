contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 646]




// =====================  Runtime code  =====================


function _fallback() payable {
    emit receivedEther(msg.sender, msg.value);
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    require ext_code.size(arg3)
    call arg3.0x23b872dd with:
         gas gas_remaining - 50 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    require ext_call.return_data[0]
    mem[ceil32(arg4.length) + 128] = arg1
    mem[ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg4.length) + 192] = arg3
    mem[ceil32(arg4.length) + 224] = 128
    mem[ceil32(arg4.length) + 256] = arg4.length
    if arg4.length:
        mem[ceil32(arg4.length) + 288] = mem[128]
        mem[ceil32(arg4.length) + 320 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
    emit receivedTokens(address(arg1), arg2, address(arg3), Array(len=arg4.length, data=mem[ceil32(arg4.length) + 288 len arg4.length]));
}



}
