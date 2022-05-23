contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1127 len 20]
    return code.data[95 len 1020]
}



// =====================  Runtime code  =====================


address owner;
address GGAddress;

function GG() {
    return GGAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_ffb7be05(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require owner == msg.sender
    if not arg1.length:
        mem[(32 * arg1.length) + 132] = msg.sender
        require ext_code.size(GGAddress)
        call GGAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require 0 <= ext_call.return_data[0]
    else:
        require arg2 * arg1.length / arg1.length == arg2
        mem[(32 * arg1.length) + 132] = msg.sender
        require ext_code.size(GGAddress)
        call GGAddress.0x70a08231 with:
             gas gas_remaining wei
            args msg.sender
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        require arg2 * arg1.length <= ext_call.return_data[0]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = arg2
        require ext_code.size(GGAddress)
        call GGAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], arg2
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
    mem[(32 * arg1.length) + 128] = 64
    s = 0
    while arg1.length < 32 * arg1.length:
        mem[(34 * arg1.length) + 224] = mem[arg1.length + 128]
        s = arg1.length + 32
        continue 
    emit 0x43758323: Array(len=arg1.length, data=mem[(32 * arg1.length) + 224 len 32 * arg1.length]), arg2
    return 1
}



}
