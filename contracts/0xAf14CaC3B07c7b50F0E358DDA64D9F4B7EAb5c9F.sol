contract main {


// =======================  Init code  ======================


array of uint256 stor2;
address stor3;
address stor4;
uint8 stor5; offset 152
address stor5;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0x51a3ac2399c89ffa893b0f627c740c05193875a6
    stor4 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    Mask(152, 0, stor5.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor5.field_152) = 0
    if not msg.value:
        return code.data[530 len 1513]
    revert
}



// =====================  Runtime code  =====================


address senderAddress;
address owner;
array of uint256 version;
address stor4;
address stor5;

function version() {
    return version[0 len version.length]
}

function sender() {
    return senderAddress
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function sub_04072e8a(?) {
    senderAddress = stor4
    owner = stor4
    call stor4 with:
       funct Mask(32, 224, sha3('transfer(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
    call stor4 with:
       funct Mask(32, 224, sha3('tx.origin.transfer(uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
    owner = stor5
    return bool(ext_call.success)
}



}
