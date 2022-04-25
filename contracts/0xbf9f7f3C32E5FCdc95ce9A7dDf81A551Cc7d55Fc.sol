contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 996]
}



// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function multisend(address[] arg1) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _13 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_13)
        mem[(32 * arg1.length) + 164] = 2 * 10^11
        require ext_code.size(0x31705aa4933c106f3d15f64df0eb70d8d37fc36e)
        call 0x31705aa4933c106f3d15f64df0eb70d8d37fc36e.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_13), 2 * 10^11
        require ext_call.success
        idx = idx + 1
        continue 
    return arg1.length
}



}
