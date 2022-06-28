contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[2716 len 20]
    stor1 = code.data[2748 len 20]
    return code.data[104 len 2600]
}



// =====================  Runtime code  =====================


const isFinalizeAgent = 1


address tokenAddress;
address crowdsaleAddress;

function crowdsale() {
    return crowdsaleAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isSane() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0xd1f276d3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[12 len 20] == this.address)
}

function finalizeCrowdsale() payable {
    mem[64] = 96
    require not msg.value
    require crowdsaleAddress == msg.sender
    require ext_code.size(crowdsaleAddress)
    call crowdsaleAddress.0x518ab2a8 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[128] = 0
    mem[96] = 0xc331051700000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenAddress)
    call tokenAddress.mem[var31003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var31003 + 4 len var31004 - 4]
    mem[var31005] = ext_call.return_data[0]
    require ext_call.success
    mem[128] = 0
    if uint8(var33007) < 0xc331051700000000000000000000000000000000000000000000000000000000:
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var35004)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var37003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var37003 + 4 len var37004 - 4]
        mem[var37005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0xe4dd105a00000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var41003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var41003 + 4 len var41004 - 4]
        mem[var41005] = ext_call.return_data[0]
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.0xc3310517 with:
             gas gas_remaining - 710 wei
        require ext_call.success
        s = var43006
        idx = var43007
        t = var43008
        while uint8(idx + 1) < ext_call.return_data[0]:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x7386f0a7 with:
                 gas gas_remaining - 710 wei
                args uint8(idx + 1)
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0xe4dd105a with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            if ext_call.return_data[0]:
                mem[128] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xc3310517 with:
                     gas gas_remaining - 710 wei
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                s = s
                idx = idx + 1
                t = t
                continue 
            require ext_code.size(tokenAddress)
            call tokenAddress.0x7386f0a7 with:
                 gas gas_remaining - 710 wei
                args uint8(idx + 1)
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x4b360c47 with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0])
            require ext_call.success
            require ext_code.size(0xe9ae538ffea453eae179e45a787ca76db619d40d)
            delegate 0xe9ae538ffea453eae179e45a787ca76db619d40d.plus(uint256 arg1, uint256 arg2) with:
                 gas gas_remaining - 710 wei
                args t, t * ext_call.return_data[0] / 100
            require delegate.return_code
            require ext_code.size(tokenAddress)
            call tokenAddress.0x7386f0a7 with:
                 gas gas_remaining - 710 wei
                args uint8(idx + 1)
            require ext_call.success
            mem[132] = t * ext_call.return_data[0] / 100
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), t * ext_call.return_data[0] / 100
            require ext_call.success
            mem[128] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xc3310517 with:
                 gas gas_remaining - 710 wei
            mem[96] = ext_call.return_data[0]
            require ext_call.success
            s = t * ext_call.return_data[0] / 100
            idx = idx + 1
            t = delegate.return_data[0]
            continue 
        mem[128] = 0
        mem[96] = 0xc331051700000000000000000000000000000000000000000000000000000000
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var53003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var53003 + 4 len var53004 - 4]
        mem[var53005] = ext_call.return_data[0]
        require ext_call.success
        if uint8(var55005) >= 0xc331051700000000000000000000000000000000000000000000000000000000:
            require ext_code.size(tokenAddress)
            call tokenAddress.'_A-O' with:
                 gas gas_remaining - 710 wei
            require ext_call.success
        mem[128] = 0
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var57002)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var59003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var59003 + 4 len var59004 - 4]
        mem[var59005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0xe4dd105a00000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var63003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var63003 + 4 len var63004 - 4]
        mem[var63005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var67002)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var69003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var69003 + 4 len var69004 - 4]
        require ext_call.success
        # nil
    else:
        mem[96] = 0xc331051700000000000000000000000000000000000000000000000000000000
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var37003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var37003 + 4 len var37004 - 4]
        mem[var37005] = ext_call.return_data[0]
        require ext_call.success
        if uint8(var39005) >= 0xc331051700000000000000000000000000000000000000000000000000000000:
            require ext_code.size(tokenAddress)
            call tokenAddress.'_A-O' with:
                 gas gas_remaining - 710 wei
            require ext_call.success
        mem[128] = 0
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var41002)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var43003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var43003 + 4 len var43004 - 4]
        mem[var43005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0xe4dd105a00000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var47003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var47003 + 4 len var47004 - 4]
        mem[var47005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var51002)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var53003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var53003 + 4 len var53004 - 4]
        mem[var53005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x4b360c4700000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var57003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var57003 + 4 len var57004 - 4]
        mem[var57005] = ext_call.return_data[0]
        require ext_call.success
        mem[96] = 0x66098d4f00000000000000000000000000000000000000000000000000000000
        mem[100] = var59008
        mem[132] = 0x4b360c4700000000000000000000000000000000000000000000000000000000
        require ext_code.size(0xe9ae538ffea453eae179e45a787ca76db619d40d)
        delegate 0xe9ae538ffea453eae179e45a787ca76db619d40d.mem[var61002 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var61002 + 4 len var61003 - 4]
        mem[var61004] = delegate.return_data[0]
        require delegate.return_code
        mem[128] = 0
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var63005)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var65003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var65003 + 4 len var65004 - 4]
        require ext_call.success
        # nil
}



}
