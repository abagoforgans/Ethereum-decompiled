contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    mem[96 len -1289] = code.data[1641 len -1289]
    mem[64] = -1193
    stor0 = msg.sender or Mask(96, 160, stor0)
    mem[-1193 len 477] = code.data[352 len 477]
    create contract with 0 wei
                    code: code.data[352 len 477]
    stor1 = create.new_address or Mask(96, 160, stor1)
    call mem[172 len 20].0xdce9a3fb with:
         gas gas_remaining - 25050 wei
        args mem[96]
    require ext_call.success
    mem[-1161] = mem[mem[128] + 96]
    _11 = mem[mem[128] + 96]
    mem[-1129 len mem[mem[128] + 96]] = mem[mem[128] + 128 len mem[mem[128] + 96]]
    if not _11 % 32:
        emit 0x36fa7d5e: 32, mem[-1161 len _11 + 32]
    else:
        mem[floor32(_11) - 1129] = mem[floor32(_11) + -(_11 % 32) - 1097 len _11 % 32]
        emit 0x36fa7d5e: 32, mem[-1161 len floor32(_11) + 64]
    return code.data[829 len 812]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 441]
}



}
