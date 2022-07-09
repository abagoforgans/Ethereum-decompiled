contract main {




// =====================  Runtime code  =====================


address tokenAddress;
uint32 stor1;
address beneficiaryAddress;
uint256 stor1;
uint256 releaseTime;

function beneficiary() payable {
    return address(beneficiaryAddress)
}

function releaseTime() payable {
    return releaseTime
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function release() payable {
    require block.timestamp >= releaseTime
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress) > 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor1), uint32(stor1), ext_call.return_data[0 len 28]
    call tokenAddress with:
       funct uint32(stor1)
         gas gas_remaining wei
        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), Mask(224, 0, stor1)
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[228]
}



}
