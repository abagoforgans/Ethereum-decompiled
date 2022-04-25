contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[83 len 1028]
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

function sub_627fe2bc(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _13 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_13)
        mem[(32 * arg1.length) + 164] = 2 * 10^11
        require ext_code.size(0x24cc07362acc08fd97cb39f158cf372d44650c99)
        call 0x24cc07362acc08fd97cb39f158cf372d44650c99.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_13), 2 * 10^11
        require ext_call.success
        idx = idx + 1
        continue 
    return arg1.length
}



}
