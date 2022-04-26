contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0xe2d82dc7da0e6f882e96846451f4fabcc8f90528
    return code.data[80 len 1066]
}



// =====================  Runtime code  =====================


address owner;
address stor1;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function changeToken(address arg1) {
    require owner == msg.sender
    require arg1
    stor1 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(stor1)
    call stor1.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_138c47bd(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        _21 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _21
        require ext_code.size(stor1)
        call stor1.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _21
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    return arg1.length
}



}
