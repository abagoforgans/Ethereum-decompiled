contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[2713 len 20]
    stor1 = code.data[2745 len 20]
    return code.data[104 len 2597]
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
    if uint8(var33007) >= 0xc331051700000000000000000000000000000000000000000000000000000000:
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
        mem[96] = 0x338f43a000000000000000000000000000000000000000000000000000000000
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
        mem[96] = 0x338f43a000000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var57003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var57003 + 4 len var57004 - 4]
        mem[var57005] = ext_call.return_data[0]
        require ext_call.success
        mem[96] = 0x66098d4f00000000000000000000000000000000000000000000000000000000
        mem[100] = var59008
        mem[132] = 0x338f43a000000000000000000000000000000000000000000000000000000000
        require ext_code.size(0xb83e6612b8861a26f6bbfd62a43f39ba484758eb)
        delegate 0xb83e6612b8861a26f6bbfd62a43f39ba484758eb.mem[var61002 len 4] with:
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
    else:
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var35004)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var37003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var37003 + 4 len var37004 - 4]
        mem[var37005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x80c190cf00000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var41003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var41003 + 4 len var41004 - 4]
        mem[var41005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var45004)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var47003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var47003 + 4 len var47004 - 4]
        mem[var47005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x80c190cf00000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var51003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var51003 + 4 len var51004 - 4]
        mem[var51005] = ext_call.return_data[0]
        require ext_call.success
        mem[96] = 0x66098d4f00000000000000000000000000000000000000000000000000000000
        mem[100] = var55007
        mem[132] = var55001 / 100
        require ext_code.size(0xb83e6612b8861a26f6bbfd62a43f39ba484758eb)
        delegate 0xb83e6612b8861a26f6bbfd62a43f39ba484758eb.mem[var57002 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var57002 + 4 len var57003 - 4]
        mem[var57004] = delegate.return_data[0]
        require delegate.return_code
        mem[128] = 0
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var59007)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var61003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var61003 + 4 len var61004 - 4]
        mem[var61005] = ext_call.return_data[0]
        require ext_call.success
        mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        mem[132] = var63008
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var65003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var65003 + 4 len var65004 - 4]
        require ext_call.success
        # nil
}



}
