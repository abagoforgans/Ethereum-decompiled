contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor1 = 0xf36ccb6465fa93bf90771b5459b0b210a2d82392
    require not msg.value
    stor0 = msg.sender
    return code.data[97 len 896]
}



// =====================  Runtime code  =====================


address owner;
address stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;

function airdropAdmins(address arg1) {
    return bool(stor2[arg1])
}

function airdrops(address arg1) {
    return bool(stor3[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function airdropTokens(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if owner == msg.sender:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _30 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _30
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], 10^18 * _30
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
    else:
        require stor2[address(msg.sender)]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require idx < arg2.length
            _33 = mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
            mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _33
            require ext_code.size(stor1)
            call stor1.0xa9059cbb with:
                 gas gas_remaining wei
                args mem[(32 * arg1.length) + (32 * arg2.length) + 164], 10^18 * _33
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
            require ext_call.success
            require ext_call.return_data[0]
            idx = idx + 1
            continue 
}



}
