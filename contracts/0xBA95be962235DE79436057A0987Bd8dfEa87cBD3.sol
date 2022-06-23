contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of address wallets;
mapping of uint256 sub_eafa9920;
array of uint256 sub_3983e2d1;

function sub_2c4b1bd2(?) {
    return bool(stor1[arg1])
}

function wallets(address arg1, uint256 arg2) {
    require arg2 < uint256(wallets[arg1])
    return address(wallets[arg1][arg2])
}

function sub_3983e2d1(?) {
    return sub_3983e2d1[0 len sub_3983e2d1.length]
}

function owner() {
    return owner
}

function sub_eafa9920(?) {
    return sub_eafa9920[arg1]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'msg.sender is not Owner'
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_72eb5662(?) {
    if owner != msg.sender:
        revert with 0, 'msg.sender is not Owner'
    sub_3983e2d1[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    if owner != msg.sender:
        revert with 0, 'msg.sender is not Owner'
    if not arg1:
        revert with 0, 'Owner must not be zero-address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_42ea1206(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg3.length
    mem[(32 * arg1.length) + 160 len arg3.length] = arg3[all]
    mem[(32 * arg1.length) + ceil32(arg3.length) + 160 len 6491] = code.data[3531 len 6491]
    mem[(32 * arg1.length) + ceil32(arg3.length) + 6779 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[(64 * arg1.length) + ceil32(arg3.length) + 6779] = arg3.length
    mem[(64 * arg1.length) + ceil32(arg3.length) + 6811 len ceil32(arg3.length)] = arg3[all], mem[(32 * arg1.length) + arg3.length + 160 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        create contract with 0 wei
                        code: code.data[3531 len 6491], Array(len=(32 * arg1.length) + 128, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 6779 len (32 * arg1.length) + arg3.length + -floor32(arg1.length) + 32]), arg2
    else:
        mem[floor32(arg3.length) + (64 * arg1.length) + ceil32(arg3.length) + 6811] = mem[floor32(arg3.length) + (64 * arg1.length) + ceil32(arg3.length) + -(arg3.length % 32) + 6843 len arg3.length % 32]
        create contract with 0 wei
                        code: code.data[3531 len 6491], Array(len=(32 * arg1.length) + 128, data=arg1.length, call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + ceil32(arg3.length) + floor32(arg1.length) + 6779 len (32 * arg1.length) + floor32(arg3.length) + -floor32(arg1.length) + 64]), arg2
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stor1[address(create.new_address)] = 1
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        uint256(wallets[mem[(32 * idx) + 140 len 20]])++
        address(wallets[mem[(32 * idx) + 140 len 20]][uint256(wallets[mem[(32 * idx) + 140 len 20]])]) = address(create.new_address)
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        sub_eafa9920[mem[(32 * idx) + 140 len 20]]++
        idx = idx + 1
        continue 
    emit 0xce08025b: msg.sender, address(create.new_address)
    return address(create.new_address)
}



}
