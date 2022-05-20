contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
array of uint256 stor2;
array of address stor3;

function _fallback() payable {
    revert
}

function refund() {
    require ext_code.size(stor0)
    call stor0.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function drop() {
    idx = 0
    while idx < stor3.length:
        require idx < stor2.length
        mem[0] = 2
        mem[96] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[100] = stor3[idx]
        mem[132] = 10^18 * stor2[idx]
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args stor3[idx], 10^18 * stor2[idx]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
