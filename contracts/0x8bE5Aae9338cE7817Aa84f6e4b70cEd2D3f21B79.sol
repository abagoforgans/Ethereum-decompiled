contract main {




// =====================  Runtime code  =====================


address owner;
address wallet1Address;
address wallet2Address;
address wallet3Address;
address newWallet1Address;
address newWallet2Address;
address sub_522d1a0eAddress;

function wallet2() {
    return wallet2Address
}

function wallet1() {
    return wallet1Address
}

function newWallet2() {
    return newWallet2Address
}

function wallet3() {
    return wallet3Address
}

function sub_522d1a0e(?) {
    return sub_522d1a0eAddress
}

function newWallet1() {
    return newWallet1Address
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_eb5860ab(?) {
    require msg.sender == owner
    sub_522d1a0eAddress = arg1
}

function setNewWallet1(address arg1) {
    require msg.sender == owner
    newWallet1Address = arg1
}

function setNewWallet2(address arg1) {
    require msg.sender == owner
    newWallet2Address = arg1
}

function sub_ef90ddae(?) {
    require msg.sender == wallet3Address
    require sub_522d1a0eAddress == arg1
    wallet3Address = arg1
}

function setWallet2(address arg1) {
    require msg.sender == wallet2Address
    require newWallet2Address == arg1
    wallet2Address = arg1
}

function setWallet1(address arg1) {
    require msg.sender == wallet1Address
    require newWallet1Address == arg1
    wallet1Address = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    if wallet1Address != msg.sender:
        if wallet2Address != msg.sender:
            require msg.sender == wallet3Address
    call wallet1Address with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    call wallet2Address with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
    call wallet3Address with:
       value eth.balance(this.address) / 3 wei
         gas 2300 * is_zero(value) wei
}



}
