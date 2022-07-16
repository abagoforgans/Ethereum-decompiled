contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() payable {
  stop
}

function load(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == stor0
    mem[96] = arg3 + -arg2 + 1
    if arg3 + -arg2 + 1:
        mem[128 len 32 * arg3 + -arg2 + 1] = code.data[860 len 32 * arg3 + -arg2 + 1]
    mem[(32 * arg3 + -arg2 + 1) + 128] = arg3 + -arg2 + 1
    if arg3 + -arg2 + 1:
        mem[(32 * arg3 + -arg2 + 1) + 160 len 32 * arg3 + -arg2 + 1] = code.data[860 len 32 * arg3 + -arg2 + 1]
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        mem[(32 * idx) + 128] = arg2
        require idx < mem[(32 * arg3 + -arg2 + 1) + 128]
        mem[(32 * idx) + (32 * arg3 + -arg2 + 1) + 160] = stor1
        idx = idx + 1
        continue 
    mem[(64 * arg3 + -arg2 + 1) + 160] = 0x62eb78db00000000000000000000000000000000000000000000000000000000
    mem[(64 * arg3 + -arg2 + 1) + 164] = 64
    mem[(64 * arg3 + -arg2 + 1) + 228] = mem[(32 * arg3 + -arg2 + 1) + 128]
    mem[(64 * arg3 + -arg2 + 1) + 260 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])] = mem[(32 * arg3 + -arg2 + 1) + 160 len floor32(mem[(32 * arg3 + -arg2 + 1) + 128])]
    mem[(64 * arg3 + -arg2 + 1) + 196] = (32 * mem[(32 * arg3 + -arg2 + 1) + 128]) + 96
    mem[(32 * mem[(32 * arg3 + -arg2 + 1) + 128]) + (64 * arg3 + -arg2 + 1) + 260] = mem[96]
    mem[(32 * mem[(32 * arg3 + -arg2 + 1) + 128]) + (64 * arg3 + -arg2 + 1) + 292 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    require ext_code.size(arg1)
    call arg1.0x62eb78db with:
         gas gas_remaining wei
        args mem[(64 * arg3 + -arg2 + 1) + 164 len (32 * mem[96]) + (32 * mem[(32 * arg3 + -arg2 + 1) + 128]) + (127 * arg3) + (-127 * arg2) + 255]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
