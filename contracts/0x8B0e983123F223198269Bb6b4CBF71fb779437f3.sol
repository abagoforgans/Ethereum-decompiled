contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    require code.data[4262 len 20]
    require code.data[4294 len 20]
    stor3 = code.data[4262 len 20]
    stor4 = code.data[4294 len 20]
    return code.data[598 len 3652]
}



// =====================  Runtime code  =====================


const buy = 0


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
address etherTokenAddress;

function tokenChanger() {
    return tokenChangerAddress
}

function version() {
    return version[0 len version.length]
}

function owner() {
    return owner
}

function etherToken() {
    return etherTokenAddress
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1 != owner
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_6ad419a8(?) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require arg1 != etherTokenAddress
    etherTokenAddress = arg1
}

function setChanger(address arg1) {
    require msg.sender == owner
    require arg1
    require arg1 != this.address
    require arg1 != tokenChangerAddress
    tokenChangerAddress = arg1
}

function sub_85e2031f(?) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x21e6b53d with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0x38a5e016 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}



}
