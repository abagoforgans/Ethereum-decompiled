contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    stor2 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[264 len 3911]
}



// =====================  Runtime code  =====================


address owner;
address sub_3d115334Address;
address kittyCoreAddress;

function kittyCoreAddress() {
    return kittyCoreAddress
}

function sub_3d115334(?) {
    return sub_3d115334Address
}

function owner() {
    return owner
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function sub_96ce255d(?) {
    require msg.sender == owner
    sub_3d115334Address = arg1
    kittyCoreAddress = arg1
}

function withdrawBalance() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function giveBirth(uint256 arg1) {
    require msg.sender == owner
    require ext_code.size(sub_3d115334Address)
    call sub_3d115334Address.0x88c2a0bf with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function sub_31144a80(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        call kittyCoreAddress with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas 85 * 3600 wei
            args cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_668059a9(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        call kittyCoreAddress with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas 85 * 3600 wei
            args cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_470a9cd7(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        call kittyCoreAddress with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_5bf6e5b0(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        call kittyCoreAddress with:
           funct Mask(32, 224, sha3('giveBirth(uint256)')) >> 224
             gas gas_remaining - 25710 wei
            args cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        continue 
}

function sub_4734966a(?) {
    require msg.sender == owner
    idx = 0
    while idx < ('cd', 4).length:
        mem[128] = 0
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        require ext_code.size(sub_3d115334Address)
        call sub_3d115334Address.0x88c2a0bf with:
             gas gas_remaining - 710 wei
            args cd[((32 * idx) + cd[4] + 36)]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        idx = idx + 1
        continue 
}



}
