contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() {
    stor2 = code.data[1005 len 20]
    return code.data[79 len 914]
}



// =====================  Runtime code  =====================


address sub_5c60173dAddress;
address tokenManagerAddress;
address allBalancesAddress;

function tokenManager() {
    return tokenManagerAddress
}

function allBalances() {
    return allBalancesAddress
}

function sub_5c60173d(?) {
    return sub_5c60173dAddress
}

function _fallback() payable {
    revert 
}

function sub_a92e29bc(?) {
    sub_5c60173dAddress = arg1
    tokenManagerAddress = arg2
}

function sub_48682df8(?) {
    s = 0
    idx = arg1
    while idx <= arg2:
        require ext_code.size(allBalancesAddress)
        call allBalancesAddress.getHolder(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        require ext_call.success
        require ext_code.size(allBalancesAddress)
        call allBalancesAddress.0x3b3e67c5 with:
             gas gas_remaining - 50 wei
            args idx
        require ext_call.success
        require ext_code.size(sub_5c60173dAddress)
        call sub_5c60173dAddress.0x46653287 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(allBalancesAddress)
        call allBalancesAddress.getTokenBalance(uint256 rg1) with:
             gas gas_remaining - 50 wei
            args idx
        require ext_call.success
        mem[96] = 0x4665328700000000000000000000000000000000000000000000000000000000
        mem[100] = address(ext_call.return_data[0])
        mem[132] = ext_call.return_data[0]
        require ext_code.size(tokenManagerAddress)
        call tokenManagerAddress.0x46653287 with:
             gas gas_remaining - 50 wei
            args address(ext_call.return_data[0]), ext_call.return_data[0]
        require ext_call.success
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
