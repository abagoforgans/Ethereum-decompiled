contract main {




// =====================  Runtime code  =====================


address tokenAddress;
address rootAddress;

function root() {
    return rootAddress
}

function token() {
    return tokenAddress
}

function kill() {
    require msg.sender == rootAddress
    selfdestruct(rootAddress)
}

function _fallback() payable {
    revert
}

function changeToken(address arg1) {
    require msg.sender == rootAddress
    tokenAddress = arg1
}

function transferRoot(address arg1) {
    require msg.sender == rootAddress
    rootAddress = arg1
}

function sub_486581ea(?) {
    require msg.sender == rootAddress
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_79ff6fee(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == rootAddress
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _16
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _16
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
