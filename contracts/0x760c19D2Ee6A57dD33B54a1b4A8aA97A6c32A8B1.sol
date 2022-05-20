contract main {


// =======================  Init code  ======================


address stor0;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor2 = code.data[1435 len 20]
    return code.data[95 len 1328]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
address tokenAddress;

function admins(address arg1) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
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

function ownerModAdmin(address arg1, bool arg2) {
    require owner == msg.sender
    stor1[address(arg1)] = uint8(arg2)
}

function ownerTransfer(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
}

function ownerSetAdmin(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 1
        stor1[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
}

function executeBatchTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner == msg.sender:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _28 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _34 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_28)
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _34
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_28), 10^18 * _34
            require ext_call.success
            idx = idx + 1
            continue 
    else:
        require bool(stor1[address(msg.sender)]) == 1
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _32 = mem[(32 * idx) + 128]
            require idx < arg2.length
            _37 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_32)
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _37
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(_32), 10^18 * _37
            require ext_call.success
            idx = idx + 1
            continue 
    return arg1.length
}



}
