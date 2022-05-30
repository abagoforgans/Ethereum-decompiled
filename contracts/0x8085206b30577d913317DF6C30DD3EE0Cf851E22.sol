contract main {




// =====================  Runtime code  =====================


array of address addrs;
array of uint256 shares;
uint256 denom;

function addrs(uint256 arg1) {
    require arg1 < addrs.length
    return addrs[arg1]
}

function shares(uint256 arg1) {
    require arg1 < shares.length
    return shares[arg1]
}

function denom() {
    return denom
}

function _fallback() payable {
    idx = 0
    while idx < addrs.length:
        require idx < shares.length
        mem[0] = 1
        require denom
        call addrs[idx] with:
           value msg.value * shares[idx] / denom wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}



}
