contract main {




// =====================  Runtime code  =====================


address owner;
mapping of address receiversMap;
uint256 stor2;

function owner() {
    return owner
}

function receiversMap(uint256 arg1) {
    return receiversMap[arg1]
}

function _fallback() payable {
    revert
}

function sendFundsFromReceiverTo(uint256 arg1, address arg2, uint256 arg3, address arg4) {
    require msg.sender == owner
    require ext_code.size(receiversMap[arg1])
    call receiversMap[arg1].sendFundsTo(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function createReceivers(uint8 arg1) {
    require msg.sender == owner
    idx = 0
    while uint8(idx) < arg1:
        mem[96 len 802] = code.data[1976 len 802]
        create contract with 0 wei
                        code: code.data[1976 len 802]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        stor2++
        mem[0] = stor2 + 1
        mem[32] = 1
        receiversMap[stor2 + 1] = address(create.new_address)
        idx = idx + 1
        continue 
}

function batchCollect(address arg1, address arg2, address[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _16 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg1
        mem[(32 * arg3.length) + (32 * arg4.length) + 196] = _16
        mem[(32 * arg3.length) + (32 * arg4.length) + 228] = arg2
        require ext_code.size(address(_14))
        call address(_14).sendFundsTo(address arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args address(arg1), _16, arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
