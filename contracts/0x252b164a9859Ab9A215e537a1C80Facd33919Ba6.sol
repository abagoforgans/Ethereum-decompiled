contract main {




// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
address beneficiaryAddress;
array of struct stor4;
uint256 sub_6180c609;

function getBeneficiary() {
    return beneficiaryAddress
}

function sub_6180c609(?) {
    return sub_6180c609
}

function _fallback() payable {
    revert
}

function claim() {
    mem[64] = 192
    require msg.sender == beneficiaryAddress
    s = 0
    t = 96
    idx = 0
    while idx < stor4.length:
        mem[0] = 4
        _19 = mem[64]
        mem[64] = mem[64] + 96
        mem[_19] = stor4[idx].field_0
        mem[_19 + 32] = stor4[idx].field_256
        mem[_19 + 64] = bool(stor4[idx].field_512)
        if stor4[idx].field_512:
            s = s
            t = _19
            idx = idx + 1
            continue 
        require stor4[idx].field_256 + stor1 >= stor4[idx].field_256
        if stor4[idx].field_256 + stor1 >= block.timestamp:
            s = s
            t = _19
            idx = idx + 1
            continue 
        mem[mem[64] + 36] = 10^18 * stor4[idx].field_0
        require ext_code.size(stor0)
        call stor0.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 10^18 * stor4[idx].field_0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require idx < stor4.length
        mem[0] = 4
        stor4[idx].field_512 = 1
        mem[mem[64]] = 10^18 * stor4[idx].field_0
        mem[mem[64] + 32] = block.timestamp
        emit Claimed(10^18 * stor4[idx].field_0, block.timestamp, msg.sender);
        s = 10^18 * stor4[idx].field_0
        t = _19
        idx = idx + 1
        continue 
    return 0
}



}
