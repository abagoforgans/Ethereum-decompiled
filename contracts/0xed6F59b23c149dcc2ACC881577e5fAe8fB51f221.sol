contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;

function owner() {
    return owner
}

function sub_f6b4b2d5(?) {
    return bool(stor1[address(arg1)][Mask(32, 224, arg2)])
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    if not arg1:
        revert with 0, 'Address must not be null'
    owner = arg1
    emit OwnerChanged(arg1);
}

function sub_c051518a(?) {
    idx = 0
    while idx < ('cd', 36).length:
        mem[0] = Mask(32, 224, cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(address(cd[4]), 1)
        if stor1[address(cd[4])][Mask(32, 224, cd[((32 * idx) + cd[36] + 36)])]:
            idx = idx + 1
            continue 
        else:
            return 0
    return 1
}

function sub_e559e420(?) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    idx = 0
    while idx < ('cd', 36).length:
        mem[0] = Mask(32, 224, cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(address(cd[4]), 1)
        stor1[address(cd[4])][Mask(32, 224, cd[((32 * idx) + cd[36] + 36)])] = 1
        idx = idx + 1
        continue 
    emit 0x2cddded8: Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len 32 * ('cd', 36).length]), address(cd[4])
}

function sub_fe5ed89d(?) {
    if owner != msg.sender:
        revert with 0, 'Must be owner'
    idx = 0
    while idx < ('cd', 36).length:
        mem[0] = Mask(32, 224, cd[((32 * idx) + cd[36] + 36)])
        mem[32] = sha3(address(cd[4]), 1)
        stor1[address(cd[4])][Mask(32, 224, cd[((32 * idx) + cd[36] + 36)])] = 0
        idx = idx + 1
        continue 
    emit 0xda90c268: Array(len=('cd', 36).length, data=call.data[cd[36] + 36 len 32 * ('cd', 36).length]), address(cd[4])
}



}
