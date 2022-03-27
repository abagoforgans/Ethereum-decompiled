contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[1075 len 20]
    stor1 = code.data[1107 len 20]
    stor2 = code.data[1043 len 20]
    return code.data[136 len 895]
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

function sub_83554df5(?) payable {
    mem[64] = 96
    require not msg.value
    mem[128] = 0
    mem[96] = 0xf39c219700000000000000000000000000000000000000000000000000000000
    require ext_code.size(allBalancesAddress)
    call allBalancesAddress.mem[var21003 len 4] with:
         gas gas_remaining - 50 wei
        args mem[var21003 + 4 len var21004 - 4]
    mem[var21005] = ext_call.return_data[0]
    require ext_call.success
    if var23005 <= 0xf39c219700000000000000000000000000000000000000000000000000000000:
        mem[128] = 0
        mem[96] = 0xe8a96b4600000000000000000000000000000000000000000000000000000000
        mem[100] = var25002
        require ext_code.size(allBalancesAddress)
        call allBalancesAddress.mem[var27003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var27003 + 4 len var27004 - 4]
        mem[var27005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x3b3e67c500000000000000000000000000000000000000000000000000000000
        mem[100] = var29005
        require ext_code.size(allBalancesAddress)
        call allBalancesAddress.mem[var31003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var31003 + 4 len var31004 - 4]
        mem[var31005] = ext_call.return_data[0]
        require ext_call.success
        mem[96] = 0x4665328700000000000000000000000000000000000000000000000000000000
        mem[100] = address(var33004)
        mem[132] = 0x3b3e67c500000000000000000000000000000000000000000000000000000000
        require ext_code.size(sub_5c60173dAddress)
        call sub_5c60173dAddress.mem[var35003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var35003 + 4 len var35004 - 4]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x9105d74800000000000000000000000000000000000000000000000000000000
        mem[100] = var37005
        require ext_code.size(allBalancesAddress)
        call allBalancesAddress.mem[var39003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var39003 + 4 len var39004 - 4]
        mem[var39005] = ext_call.return_data[0]
        require ext_call.success
        mem[96] = 0x4665328700000000000000000000000000000000000000000000000000000000
        mem[100] = address(var41004)
        mem[132] = 0x9105d74800000000000000000000000000000000000000000000000000000000
        require ext_code.size(tokenManagerAddress)
        call tokenManagerAddress.mem[var43003 len 4] with:
             gas gas_remaining - 50 wei
            args mem[var43003 + 4 len var43004 - 4]
        require ext_call.success
        require ext_code.size(allBalancesAddress)
        call allBalancesAddress.numberOfPartners() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        s = var45004
        idx = var45005
        while idx + 1 <= ext_call.return_data[0]:
            require ext_code.size(allBalancesAddress)
            call allBalancesAddress.getHolder(uint256 rg1) with:
                 gas gas_remaining - 50 wei
                args (idx + 1)
            require ext_call.success
            require ext_code.size(allBalancesAddress)
            call allBalancesAddress.0x3b3e67c5 with:
                 gas gas_remaining - 50 wei
                args (idx + 1)
            require ext_call.success
            require ext_code.size(sub_5c60173dAddress)
            call sub_5c60173dAddress.0x46653287 with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            require ext_call.success
            require ext_code.size(allBalancesAddress)
            call allBalancesAddress.getTokenBalance(uint256 rg1) with:
                 gas gas_remaining - 50 wei
                args (idx + 1)
            require ext_call.success
            mem[132] = ext_call.return_data[0]
            require ext_code.size(tokenManagerAddress)
            call tokenManagerAddress.0x46653287 with:
                 gas gas_remaining - 50 wei
                args address(ext_call.return_data[0]), ext_call.return_data[0]
            require ext_call.success
            mem[128] = 0
            require ext_code.size(allBalancesAddress)
            call allBalancesAddress.numberOfPartners() with:
                 gas gas_remaining - 50 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            s = ext_call.return_data[0]
            idx = idx + 1
            continue 
}



}
