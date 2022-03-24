contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = 0x2bd2326c993dfaef84f696526064ff22eba5b362
    return code.data[57 len 355]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
  stop
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    call stor0.forked() with:
         gas gas_remaining - 25050 wei
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require not ext_call.return_data[0]
    mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
    if not arg3.length % 32:
        call arg1 with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args arg3[all]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
}



}
