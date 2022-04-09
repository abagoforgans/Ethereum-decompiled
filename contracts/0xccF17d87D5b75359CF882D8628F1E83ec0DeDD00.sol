contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor4;
address stor5;
address stor6;
address stor7;
address stor8;
address stor9;
address stor10;
uint8 stor11; offset 152
address stor11;

function _fallback() payable {
    bool(stor4.length) = 0
    stor4.length.field_1 = 3
    stor4.length.field_8 = '0.1' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = this.address
    stor7 = 0x51a3ac2399c89ffa893b0f627c740c05193875a6
    stor8 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    stor9 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    stor10 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    Mask(152, 0, stor11.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor11.field_152) = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[4275 len 20]
    stor5 = code.data[4275 len 20]
    return code.data[970 len 3293]
}



// =====================  Runtime code  =====================


address stor0;
address newOwner;
address senderAddress;
address owner;
array of uint256 version;
address tokenChangerAddress;
address selfAddress;
address stor9;
address stor11;

function selfAddress() {
    return selfAddress
}

function tokenChanger() {
    return tokenChangerAddress
}

function version() {
    return version[0 len version.length]
}

function sender() {
    return senderAddress
}

function owner() {
    return owner
}

function newOwner() {
    return newOwner
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == stor0
    require arg1 != stor0
    newOwner = arg1
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnerUpdate(stor0, newOwner);
    stor0 = newOwner
    newOwner = 0
}

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_04072e8a(?) {
    require msg.sender == stor0
    senderAddress = stor9
    owner = stor9
    call stor9 with:
       funct Mask(32, 224, sha3('transfer(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
    call stor9 with:
       funct Mask(32, 224, sha3('msg.sender.transfer(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
    owner = stor11
    return bool(ext_call.success)
}



}
