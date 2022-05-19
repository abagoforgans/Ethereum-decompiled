contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2219 len 20]
    return code.data[188 len 2019]
}



// =====================  Runtime code  =====================


address owner;
address tokenInstanceAddress;

function tokenInstance() {
    return tokenInstanceAddress
}

function owner() {
    return owner
}

function kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function transferEthToOnwer() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 0
}

function doAirDrop(address[] arg1, uint256[] arg2, uint256 arg3) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _26 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _26
        require ext_code.size(tokenInstanceAddress)
        call tokenInstanceAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _26
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        require idx < arg1.length
        if not eth.balance(mem[(32 * idx) + 128]):
            if eth.balance(this.address) >= arg3:
                require idx < arg1.length
                call mem[(32 * idx) + 140 len 20] with:
                   value arg3 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
        idx = idx + 1
        continue 
    return 0
}



}
