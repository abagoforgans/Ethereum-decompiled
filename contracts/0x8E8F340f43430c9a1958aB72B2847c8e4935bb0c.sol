contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1106]
}



// =====================  Runtime code  =====================


const wolkAddress = 0x728781e75735dc0962df3a51d7ef47e798a7107e


address owner;
address newOwner;

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require owner != arg1
    newOwner = arg1
}

function acceptOwnership() {
    require newOwner == msg.sender
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function multisend(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require owner == msg.sender
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _18 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = address(_16)
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = 10^18 * _18
        require ext_code.size(0x728781e75735dc0962df3a51d7ef47e798a7107e)
        call 0x728781e75735dc0962df3a51d7ef47e798a7107e.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(_16), 10^18 * _18
        require ext_call.success
        idx = idx + 1
        continue 
    return arg1.length
}



}
