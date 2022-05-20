contract main {




// =====================  Runtime code  =====================


address standardTokenAddress;
uint256 stor2;
address creatorAddress;

function creator() {
    return creatorAddress
}

function standardToken() {
    return standardTokenAddress
}

function _fallback() payable {
    revert
}

function sub_13d18f53(?) {
    if arg1 <= stor2:
        return 1
    else:
        return 0
}

function sub_63531b17(?) {
    if arg2 > stor2:
        return 0
    require ext_code.size(0x8c48060e5788518cd8e7097a432f5150b92d9809)
    call 0x8c48060e5788518cd8e7097a432f5150b92d9809.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function GetToken(uint256 arg1, address arg2) {
    require msg.sender == creatorAddress
    require ext_code.size(0x8c48060e5788518cd8e7097a432f5150b92d9809)
    call 0x8c48060e5788518cd8e7097a432f5150b92d9809.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenBalance(address arg1) {
    require ext_code.size(0x8c48060e5788518cd8e7097a432f5150b92d9809)
    call 0x8c48060e5788518cd8e7097a432f5150b92d9809.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_755b2110(?) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg1 > stor2:
        return 0
    idx = 0
    while uint32(idx) < arg2.length:
        require uint32(idx) < arg2.length
        _13 = mem[(32 * uint32(idx)) + 128]
        mem[(32 * arg2.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg2.length) + 132] = address(_13)
        mem[(32 * arg2.length) + 164] = arg1
        require ext_code.size(0x8c48060e5788518cd8e7097a432f5150b92d9809)
        call 0x8c48060e5788518cd8e7097a432f5150b92d9809.0xa9059cbb with:
             gas gas_remaining wei
            args address(_13), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    return 1
}



}
