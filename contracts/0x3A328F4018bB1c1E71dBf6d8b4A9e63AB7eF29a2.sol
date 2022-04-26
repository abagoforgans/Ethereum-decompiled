contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2745 len 20]
    return code.data[188 len 2545]
}



// =====================  Runtime code  =====================


address owner;
address sub_82ca37f1Address;
mapping of uint8 stor2;

function sub_82ca37f1(?) {
    return sub_82ca37f1Address
}

function owner() {
    return owner
}

function sub_b78f1b4d(?) {
    return bool(stor2[arg1])
}

function sub_b95803e8(?) {
    return bool(stor2[address(arg1)])
}

function _fallback() payable {
    revert
}

function sub_b8ad26da(?) {
    if msg.sender == owner:
        stor2[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) {
    if msg.sender == owner:
        if arg1:
            owner = arg1
}

function sub_bfd24f40(?) {
    if not stor2[address(msg.sender)]:
        require msg.sender == owner
    require ext_code.size(sub_82ca37f1Address)
    call sub_82ca37f1Address.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function sub_bbc88c5d(?) {
    if not stor2[address(msg.sender)]:
        require msg.sender == owner
    require ext_code.size(sub_82ca37f1Address)
    call sub_82ca37f1Address.0x23b872dd with:
         gas gas_remaining - 710 wei
        args tx.origin, address(this.address), arg1
    require ext_call.success
    require ext_call.return_data[0]
    return 1
}

function sub_097c0b0a(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == owner:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            if msg.sender == owner:
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 2
                stor2[mem[(32 * idx) + 140 len 20]] = uint8(arg2)
            idx = idx + 1
            continue 
}



}
