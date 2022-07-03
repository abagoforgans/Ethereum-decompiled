contract main {




// =====================  Runtime code  =====================


address synthetix_escrowAddress;

function synthetix_escrow() {
    return synthetix_escrowAddress
}

function _fallback() payable {
    revert
}

function checkAccountSchedule(address arg1) {
    mem[96 len 512] = code.data[871 len 512]
    mem[608 len 512] = code.data[871 len 512]
    mem[64] = 1184
    mem[1120 len 64] = code.data[871 len 64]
    mem[1188] = arg1
    require ext_code.size(synthetix_escrowAddress)
    call synthetix_escrowAddress.' Kgj' with:
         gas gas_remaining wei
        args arg1
    mem[1184] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 1120
    idx = 0
    while idx < ext_call.return_data[0]:
        mem[mem[64] + 36] = idx
        require ext_code.size(synthetix_escrowAddress)
        call synthetix_escrowAddress.getVestingScheduleEntry(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), idx
        mem[mem[64] len 64] = ext_call.return_data[0 len 64]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _18 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 64
        require 2 * idx < 16
        mem[(64 * idx) + 608] = mem[_18]
        require (2 * idx) + 1 < 16
        mem[(32 * (2 * idx) + 1) + 608] = mem[_18 + 32]
        s = _18
        idx = idx + 1
        continue 
    mem[mem[64] len 512] = mem[608 len 512]
    return memory
      from mem[64]
       len 512
}



}
