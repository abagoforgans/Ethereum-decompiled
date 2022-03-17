contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    mem[96 len -1291] = code.data[1643 len -1291]
    mem[64] = -1195
    _2 = mem[96]
    _4 = mem[160]
    stor0 = msg.sender or Mask(96, 160, stor0)
    mem[-1195 len 477] = code.data[352 len 477]
    create contract with 0 wei
                    code: code.data[352 len 477]
    stor1 = create.new_address or Mask(96, 160, stor1)
    mem[-1163] = mem[mem[128] + 96]
    _9 = mem[mem[128] + 96]
    mem[-1131 len mem[mem[128] + 96]] = mem[mem[128] + 128 len mem[mem[128] + 96]]
    if not _9 % 32:
        emit 0x36fa7d5e: 32, mem[-1163 len _9 + 32]
    else:
        mem[floor32(_9) - 1131] = mem[floor32(_9) + -(_9 % 32) - 1099 len _9 % 32]
        emit 0x36fa7d5e: 32, mem[-1163 len floor32(_9) + 64]
    call address(_4).0xdce9a3fb with:
         gas gas_remaining - 25050 wei
        args _2
    require ext_call.success
    return code.data[829 len 814]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 441]
}



}
