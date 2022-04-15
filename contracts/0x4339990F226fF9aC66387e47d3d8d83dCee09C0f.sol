contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
address stor3;

function _fallback() payable {
    stor2 = 0x728781e75735dc0962df3a51d7ef47e798a7107e
    stor3 = 0x728781e75735dc0962df3a51d7ef47e798a7107e
    stor0 = msg.sender
    return code.data[116 len 1063]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
address sub_b8363c8bAddress;
address sub_d7c31bf6Address;

function owner() {
    return owner
}

function sub_b8363c8b(?) {
    return sub_b8363c8bAddress
}

function newOwner() {
    return newOwner
}

function sub_d7c31bf6(?) {
    return sub_d7c31bf6Address
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
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

function withdraw() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value > 0
    require ext_code.size(sub_b8363c8bAddress)
    call sub_b8363c8bAddress.tokenGenerationEvent(address rg1) with:
       value msg.value wei
         gas gas_remaining wei
        args msg.sender
    require ext_call.success
}



}
