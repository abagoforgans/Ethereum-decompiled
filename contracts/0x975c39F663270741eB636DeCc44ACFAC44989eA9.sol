contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
uint8 stor10; offset 152
address stor10;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = this.address
    stor6 = 0x51a3ac2399c89ffa893b0f627c740c05193875a6
    stor7 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    stor8 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    stor9 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    Mask(152, 0, stor10.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor10.field_152) = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[6557 len 20]
    stor3 = code.data[6557 len 20]
    stor4 = code.data[6589 len 20]
    return code.data[1062 len 5483]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
address etherTokenAddress;
address selfAddress;
address stor6;
address stor7;
address stor8;
address stor10;

function selfAddress() {
    return selfAddress
}

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
    revert
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

function sub_dff30895(?) {
    require msg.sender == owner
    call stor8 with:
       funct Mask(32, 224, sha3('send(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
    return bool(ext_call.success)
}

function sub_04072e8a(?) {
    require msg.sender == owner
    call stor8 with:
       funct Mask(32, 224, sha3('transfer(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
    return bool(ext_call.success)
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6) {
    require msg.sender == owner
    stor6 = arg1
    stor10 = arg2
    selfAddress = arg3
    stor7 = arg4
    stor8 = arg6
}

function sub_5be1abe9(?) {
    require msg.sender == owner
    call stor8 with:
       funct Mask(32, 224, sha3('msg.sender.transfer(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
    return bool(ext_call.success)
}

function sub_392a0d7d(?) {
    require msg.sender == owner
    call stor8 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args stor10, arg1
    return bool(ext_call.success)
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_bdf19cc9(?) {
    require msg.sender == owner
    call stor8 with:
       funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args stor10, 0
    call stor8 with:
       funct Mask(32, 224, sha3('approve(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args stor10, arg1
    return bool(ext_call.success)
}



}
