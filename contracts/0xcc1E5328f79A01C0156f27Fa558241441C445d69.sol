contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[2411 len 20]
    stor1 = code.data[2443 len 20]
    return code.data[106 len 2293]
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
    if uint8(var33009) < 0xc331051700000000000000000000000000000000000000000000000000000000:
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var35006)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var37003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var37003 + 4 len var37004 - 4]
        mem[var37005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0xaef3728400000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var41003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var41003 + 4 len var41004 - 4]
        mem[var41005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var43009)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var45003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var45003 + 4 len var45004 - 4]
        mem[var45005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0xf7c932a00000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var49003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var49003 + 4 len var49004 - 4]
        mem[var49005] = ext_call.return_data[0]
        require ext_call.success
        if var51007 > 0:
            require 10^var53003
            mem[96] = 0x66098d4f00000000000000000000000000000000000000000000000000000000
            mem[100] = var57009
            mem[132] = var57001 / 100
            require ext_code.size(0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d)
            delegate 0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d.mem[var59002 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var59002 + 4 len var59003 - 4]
            mem[var59004] = delegate.return_data[0]
            require delegate.return_code
            mem[128] = 0
            mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
            mem[100] = uint8(var61009)
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[var63003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var63003 + 4 len var63004 - 4]
            require ext_call.success
            require ext_code.size(tokenAddress)
            # nil
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xc3310517 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            s = 0xf7c932a00000000000000000000000000000000000000000000000000000000
            s = var51007
            s = var51008
            idx = var51009
            t = var51010
            while uint8(idx + 1) < ext_call.return_data[0]:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7386f0a7 with:
                     gas gas_remaining - 710 wei
                    args uint8(idx + 1)
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0xaef37284 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7386f0a7 with:
                     gas gas_remaining - 710 wei
                    args uint8(idx + 1)
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.getReservedTokensListValInPercentageDecimals(address rg1) with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    mem[128] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xc3310517 with:
                         gas gas_remaining - 710 wei
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    s = ext_call.return_data[0]
                    s = ext_call.return_data[0]
                    s = s
                    idx = idx + 1
                    t = t
                    continue 
                require 10^ext_call.return_data[0]
                require ext_code.size(0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d)
                delegate 0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args t, t * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                require delegate.return_code
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7386f0a7 with:
                     gas gas_remaining - 710 wei
                    args uint8(idx + 1)
                require ext_call.success
                mem[132] = t * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), t * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                require ext_call.success
                mem[128] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xc3310517 with:
                     gas gas_remaining - 710 wei
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                s = ext_call.return_data[0]
                s = ext_call.return_data[0]
                s = t * ext_call.return_data[0] / 10^ext_call.return_data[0] / 100
                idx = idx + 1
                t = delegate.return_data[0]
                continue 
            mem[128] = 0
            mem[96] = 0xc331051700000000000000000000000000000000000000000000000000000000
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[var55003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var55003 + 4 len var55004 - 4]
            mem[var55005] = ext_call.return_data[0]
            require ext_call.success
            if uint8(var57005) >= 0xc331051700000000000000000000000000000000000000000000000000000000:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x5f412d4f with:
                     gas gas_remaining - 710 wei
                require ext_call.success
            mem[128] = 0
            mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
            mem[100] = uint8(var59002)
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[var61003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var61003 + 4 len var61004 - 4]
            require ext_call.success
            require ext_code.size(tokenAddress)
            # nil
    else:
        mem[96] = 0xc331051700000000000000000000000000000000000000000000000000000000
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var32003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var32003 + 4 len var32004 - 4]
        mem[var32005] = ext_call.return_data[0]
        require ext_call.success
        if uint8(var34005) < 0xc331051700000000000000000000000000000000000000000000000000000000:
            mem[128] = 0
            mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
            mem[100] = uint8(var36002)
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[var38003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var38003 + 4 len var38004 - 4]
            mem[var38005] = ext_call.return_data[0]
            require ext_call.success
            mem[128] = 0
            mem[96] = 0x338f43a000000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[var42003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var42003 + 4 len var42004 - 4]
            mem[var42005] = ext_call.return_data[0]
            require ext_call.success
            mem[96] = 0x66098d4f00000000000000000000000000000000000000000000000000000000
            mem[100] = var46007
            mem[132] = var46001
            require ext_code.size(0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d)
            delegate 0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d.mem[var48002 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var48002 + 4 len var48003 - 4]
            mem[var48004] = delegate.return_data[0]
            require delegate.return_code
            mem[128] = 0
            mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
            mem[100] = uint8(var50005)
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[var52003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var52003 + 4 len var52004 - 4]
            mem[var52005] = ext_call.return_data[0]
            require ext_call.success
            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[100] = 0
            mem[132] = var54006
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[var56003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var56003 + 4 len var56004 - 4]
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0xc3310517 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            s = var58004
            idx = var58005
            s = var58010
            while uint8(idx + 1) < ext_call.return_data[0]:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7386f0a7 with:
                     gas gas_remaining - 710 wei
                    args uint8(idx + 1)
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x338f43a0 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0])
                require ext_call.success
                if ext_call.return_data[0] <= 0:
                    mem[128] = 0
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xc3310517 with:
                         gas gas_remaining - 710 wei
                    mem[96] = ext_call.return_data[0]
                    require ext_call.success
                    s = ext_call.return_data[0]
                    idx = idx + 1
                    s = s
                    continue 
                require ext_code.size(0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d)
                delegate 0xcd1279f36dbfd19d7ad917f5d86e375a8d7c970d.0x66098d4f with:
                     gas gas_remaining - 710 wei
                    args s, ext_call.return_data[0]
                require delegate.return_code
                require ext_code.size(tokenAddress)
                call tokenAddress.0x7386f0a7 with:
                     gas gas_remaining - 710 wei
                    args uint8(idx + 1)
                require ext_call.success
                mem[132] = ext_call.return_data[0]
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), ext_call.return_data[0]
                require ext_call.success
                mem[128] = 0
                require ext_code.size(tokenAddress)
                call tokenAddress.0xc3310517 with:
                     gas gas_remaining - 710 wei
                mem[96] = ext_call.return_data[0]
                require ext_call.success
                s = ext_call.return_data[0]
                idx = idx + 1
                s = delegate.return_data[0]
                continue 
        require ext_code.size(tokenAddress)
        call tokenAddress.0x5f412d4f with:
             gas gas_remaining - 710 wei
        require ext_call.success
}



}
