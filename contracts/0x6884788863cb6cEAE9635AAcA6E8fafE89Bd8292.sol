contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
array of uint256 stor1;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = '0.9.0' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    address(stor0.field_0) = msg.sender
    Mask(96, 0, stor0.field_160) = 0
    return code.data[282 len 6420]
}



// =====================  Runtime code  =====================


array of uint256 version;

function version() {
    return version[0 len version.length]
}

function _fallback() payable {
    revert 
}

function sub_d58d10ff(?) {
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not arg3.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 1499 len arg1.length] = arg1[all]
        if not arg1.length % 32:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 1531 len arg2.length] = arg2[all]
            if not arg2.length % 32:
                create contract with 0 wei
                                code: code.data[1460 len 1211], Array(len=arg1.length + 96, data=arg1.length, arg1[all], arg2.length, arg2[all])
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 1531] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + -(arg2.length % 32) + 1563 len arg2.length % 32]
                create contract with 0 wei
                                code: code.data[1460 len 1211], Array(len=arg1.length + 96, data=arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + arg1.length + arg2.length + 1531 len -(arg2.length % 32) + 32])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 1499] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + -(arg1.length % 32) + 1531 len arg1.length % 32]
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 1563 len arg2.length] = arg2[all]
            if not arg2.length % 32:
                create contract with 0 wei
                                code: code.data[1460 len 1211], Array(len=floor32(arg1.length) + 128, data=arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + arg1.length + 1499 len -(arg1.length % 32) + 32], arg2.length, arg2[all])
            else:
                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 1563] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + -(arg2.length % 32) + 1595 len arg2.length % 32]
                create contract with 0 wei
                                code: code.data[1460 len 1211], Array(len=floor32(arg1.length) + 128, data=arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + arg1.length + 1499 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + floor32(arg1.length) + arg2.length + 1563 len -(arg2.length % 32) + 32])
        require create.new_address
        emit 0x13a975c9: address(create.new_address), Array(len=15, data='POE_CERTIFICATE')
    else:
        if arg3.length != 1:
            return 0
        require 0 < arg3.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 4069 len arg1.length] = arg1[all]
        if not arg1.length % 32:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 4101 len arg2.length] = arg2[all]
            if not arg2.length % 32:
                create contract with 0 wei
                                code: code.data[2671 len 3749], address(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]), Array(len=arg1.length + 128, data=arg1.length, arg1[all], arg2.length, arg2[all])
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 4101] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + -(arg2.length % 32) + 4133 len arg2.length % 32]
                create contract with 0 wei
                                code: code.data[2671 len 3749], address(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]), Array(len=arg1.length + 128, data=arg1.length, arg1[all], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + arg1.length + arg2.length + 4101 len -(arg2.length % 32) + 32])
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 4069] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + -(arg1.length % 32) + 4101 len arg1.length % 32]
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 4133 len arg2.length] = arg2[all]
            if not arg2.length % 32:
                create contract with 0 wei
                                code: code.data[2671 len 3749], address(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]), Array(len=floor32(arg1.length) + 160, data=arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + arg1.length + 4069 len -(arg1.length % 32) + 32], arg2.length, arg2[all])
            else:
                mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + 4133] = mem[floor32(arg2.length) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + -(arg2.length % 32) + 4165 len arg2.length % 32]
                create contract with 0 wei
                                code: code.data[2671 len 3749], address(mem[ceil32(arg1.length) + ceil32(arg2.length) + 192]), Array(len=floor32(arg1.length) + 160, data=arg1.length, arg1[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + arg1.length + 4069 len -(arg1.length % 32) + 32], arg2.length, arg2[all], mem[ceil32(arg1.length) + ceil32(arg2.length) + (32 * arg3.length) + floor32(arg1.length) + arg2.length + 4133 len -(arg2.length % 32) + 32])
        require create.new_address
        emit 0x13a975c9: address(create.new_address), Array(len=18, data='SIGNED_CERTIFICATE')
    return address(create.new_address)
}



}
