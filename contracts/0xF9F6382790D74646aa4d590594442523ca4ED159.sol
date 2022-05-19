contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[1170 len 20]
    return code.data[95 len 1063]
}



// =====================  Runtime code  =====================


address owner;
address adminAddress;
address tokenAddress;

function owner() {
    return owner
}

function admin() {
    return adminAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function ownerSetOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function ownerSetAdmin(address arg1) {
    require owner == msg.sender
    adminAddress = arg1
}

function ownerTransfer(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
}

function executeBatchTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner == msg.sender:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _27 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _33 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_27)
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _33
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_27), 10^18 * _33
            require ext_call.success
            idx = idx + 1
            continue 
    else:
        require adminAddress == msg.sender
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _31 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _36 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_31)
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _36
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_31), 10^18 * _36
            require ext_call.success
            idx = idx + 1
            continue 
    return arg1.length
}



}
