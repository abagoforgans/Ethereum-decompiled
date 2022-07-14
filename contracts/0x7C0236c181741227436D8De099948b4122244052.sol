contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address owner;
mapping of uint256 beneficiary;
array of address stor3;
uint256 releaseTime;

function beneficiary(address arg1) {
    return beneficiary[arg1]
}

function owner() {
    return owner
}

function releaseTime() {
    return releaseTime
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_d11728bd(?) {
    require msg.sender == owner
    require block.timestamp < releaseTime
    stor3.length++
    stor3[stor3.length] = arg1
    beneficiary[address(arg1)] = arg2
}

function sub_d9dcef6e(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function revoke() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function release() {
    require block.timestamp >= releaseTime
    s = 0
    s = 0
    idx = 0
    while idx < stor3.length:
        mem[100] = this.address
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] > 0
        require idx < stor3.length
        mem[0] = stor3[idx]
        mem[32] = 2
        if ext_call.return_data[0] >= beneficiary[stor3[idx]]:
            require idx < stor3.length
            mem[32] = 2
            beneficiary[stor3[idx]] = 0
            mem[0] = 3
            mem[100] = stor3[idx]
            mem[132] = beneficiary[stor3[idx]]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stor3[idx], beneficiary[stor3[idx]]
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        s = beneficiary[stor3[idx]]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
