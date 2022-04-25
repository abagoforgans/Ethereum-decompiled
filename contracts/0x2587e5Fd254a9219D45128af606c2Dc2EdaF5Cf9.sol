contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 634]
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
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function multisend(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _13 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = address(_13)
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(0x24cc07362acc08fd97cb39f158cf372d44650c99)
        call 0x24cc07362acc08fd97cb39f158cf372d44650c99.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 710 wei
            args address(_13), arg2
        require ext_call.success
        idx = idx + 1
        continue 
    return arg1.length
}



}
