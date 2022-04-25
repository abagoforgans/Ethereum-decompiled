contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = 0x6012c8cf97bead5deae237070f9587f8e7a266d
    return code.data[91 len 1057]
}



// =====================  Runtime code  =====================


address owner;
address kittyCoreAddress;

function kittyCoreAddress() {
    return kittyCoreAddress
}

function owner() {
    return owner
}

function close() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function setKittyCoreAddress(address arg1) {
    require owner == msg.sender
    kittyCoreAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function withdrawBalance() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function sub_b6d9d5e1(?) payable {
    require owner == msg.sender
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

function sub_6204bda7(?) payable {
    require owner == msg.sender
    idx = 0
    while idx < ('cd', 4).length:
        mem[96] = Mask(32, 224, sha3('giveBirth(uint256)'))
        mem[100] = cd[((32 * idx) + cd[4] + 36)]
        delegate kittyCoreAddress with:
           funct (Mask(32, 224, sha3('giveBirth(uint256)')) >> 224)
             gas gas_remaining - 25710 wei
            args cd[((32 * idx) + cd[4] + 36)]
        idx = idx + 1
        continue 
}



}
