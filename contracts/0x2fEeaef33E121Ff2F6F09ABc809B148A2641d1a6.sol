contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = code.data[2522 len 20]
    stor1 = code.data[2554 len 20]
    return code.data[104 len 2406]
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
    call tokenAddress.mem[var32003 len 4] with:
         gas gas_remaining - 710 wei
        args mem[var32003 + 4 len var32004 - 4]
    mem[var32005] = ext_call.return_data[0]
    require ext_call.success
    mem[128] = 0
    if uint8(var34009) < 0xc331051700000000000000000000000000000000000000000000000000000000:
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var36006)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var38003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var38003 + 4 len var38004 - 4]
        mem[var38005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0xaef3728400000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var42003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var42003 + 4 len var42004 - 4]
        mem[var42005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
        mem[100] = uint8(var44009)
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var46003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var46003 + 4 len var46004 - 4]
        mem[var46005] = ext_call.return_data[0]
        require ext_call.success
        mem[128] = 0
        mem[96] = 0xf7c932a00000000000000000000000000000000000000000000000000000000
        mem[100] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var50003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var50003 + 4 len var50004 - 4]
        mem[var50005] = ext_call.return_data[0]
        require ext_call.success
        if var52007 > 0:
            require 10^var54003
            mem[96] = 0x66098d4f00000000000000000000000000000000000000000000000000000000
            mem[100] = var58009
            mem[132] = var58001 / 100
            require ext_code.size(0x7af999f594272da70ddc37f3f56fb122814bbab4)
            delegate 0x7af999f594272da70ddc37f3f56fb122814bbab4.mem[var60002 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var60002 + 4 len var60003 - 4]
            mem[var60004] = delegate.return_data[0]
            require delegate.return_code
            mem[128] = 0
            mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
            mem[100] = uint8(var62009)
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[var64003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var64003 + 4 len var64004 - 4]
            require ext_call.success
            require ext_code.size(tokenAddress)
            # nil
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xc3310517 with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            s = 0xf7c932a00000000000000000000000000000000000000000000000000000000
            s = var52007
            s = var52008
            idx = var52009
            t = var52010
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
                require ext_code.size(0x7af999f594272da70ddc37f3f56fb122814bbab4)
                delegate 0x7af999f594272da70ddc37f3f56fb122814bbab4.0x66098d4f with:
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
            call tokenAddress.mem[var57003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var57003 + 4 len var57004 - 4]
            mem[var57005] = ext_call.return_data[0]
            require ext_call.success
            if uint8(var59005) >= 0xc331051700000000000000000000000000000000000000000000000000000000:
                require ext_code.size(tokenAddress)
                call tokenAddress.'_A-O' with:
                     gas gas_remaining - 710 wei
                require ext_call.success
            mem[128] = 0
            mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
            mem[100] = uint8(var61002)
            require ext_code.size(tokenAddress)
            call tokenAddress.mem[var63003 len 4] with:
                 gas gas_remaining - 710 wei
                args mem[var63003 + 4 len var63004 - 4]
            require ext_call.success
            require ext_code.size(tokenAddress)
            # nil
    else:
        mem[96] = 0xc331051700000000000000000000000000000000000000000000000000000000
        require ext_code.size(tokenAddress)
        call tokenAddress.mem[var33003 len 4] with:
             gas gas_remaining - 710 wei
            args mem[var33003 + 4 len var33004 - 4]
        mem[var33005] = ext_call.return_data[0]
        require ext_call.success
        if uint8(var35005) >= 0xc331051700000000000000000000000000000000000000000000000000000000:
            if ext_code.size(tokenAddress):
                call tokenAddress.'_A-O' with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
        else:
            mem[128] = 0
            mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
            mem[100] = uint8(var37002)
            if ext_code.size(tokenAddress):
                call tokenAddress.mem[var39003 len 4] with:
                     gas gas_remaining - 710 wei
                    args mem[var39003 + 4 len var39004 - 4]
                mem[var39005] = ext_call.return_data[0]
                if ext_call.success:
                    mem[128] = 0
                    mem[96] = 0x338f43a000000000000000000000000000000000000000000000000000000000
                    mem[100] = 0
                    if ext_code.size(tokenAddress):
                        call tokenAddress.mem[var43003 len 4] with:
                             gas gas_remaining - 710 wei
                            args mem[var43003 + 4 len var43004 - 4]
                        mem[var43005] = ext_call.return_data[0]
                        if ext_call.success:
                            mem[96] = 0x66098d4f00000000000000000000000000000000000000000000000000000000
                            mem[100] = var47007
                            mem[132] = var47001
                            if ext_code.size(0x7af999f594272da70ddc37f3f56fb122814bbab4):
                                delegate 0x7af999f594272da70ddc37f3f56fb122814bbab4.mem[var49002 len 4] with:
                                     gas gas_remaining - 710 wei
                                    args mem[var49002 + 4 len var49003 - 4]
                                mem[var49004] = delegate.return_data[0]
                                if delegate.return_code:
                                    mem[128] = 0
                                    mem[96] = 0x7386f0a700000000000000000000000000000000000000000000000000000000
                                    mem[100] = uint8(var51005)
                                    if ext_code.size(tokenAddress):
                                        call tokenAddress.mem[var53003 len 4] with:
                                             gas gas_remaining - 710 wei
                                            args mem[var53003 + 4 len var53004 - 4]
                                        mem[var53005] = ext_call.return_data[0]
                                        if ext_call.success:
                                            mem[96] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                                            mem[100] = 0
                                            mem[132] = var55006
                                            if ext_code.size(tokenAddress):
                                                call tokenAddress.mem[var57003 len 4] with:
                                                     gas gas_remaining - 710 wei
                                                    args mem[var57003 + 4 len var57004 - 4]
                                                if ext_call.success:
                                                    require ext_code.size(tokenAddress)
                                                    call tokenAddress.0xc3310517 with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    s = var59004
                                                    idx = var59005
                                                    s = var59010
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
                                                        require ext_code.size(0x7af999f594272da70ddc37f3f56fb122814bbab4)
                                                        delegate 0x7af999f594272da70ddc37f3f56fb122814bbab4.0x66098d4f with:
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
                                                    if ext_code.size(tokenAddress):
                                                        call tokenAddress.'_A-O' with:
                                                             gas gas_remaining - 710 wei
                                                        if ext_call.success:
        revert
}



}
