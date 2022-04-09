contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;
address stor5;
address stor6;
uint8 stor7; offset 152
address stor7;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 0x51a3ac2399c89ffa893b0f627c740c05193875a6
    Mask(152, 0, stor7.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor7.field_152) = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[4855 len 20]
    stor3 = code.data[4855 len 20]
    stor4 = code.data[4887 len 20]
    stor5 = code.data[4919 len 20]
    return code.data[802 len 4041]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
address formulaAddress;
address sub_69eddbb6Address;
address stor6;
address stor7;

function tokenChanger() {
    return tokenChangerAddress
}

function formula() {
    return formulaAddress
}

function version() {
    return version[0 len version.length]
}

function sub_69eddbb6(?) {
    return sub_69eddbb6Address
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

function sub_09afff1a(?) {
    sub_69eddbb6Address = arg1
}

function setAddresses(address arg1, address arg2) {
    stor6 = arg1
    stor7 = arg2
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

function withdrawTokens(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_95cdf5ee(?) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x867904b4 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function sub_25277d3b(?) {
    require msg.sender == owner
    if not arg1:
        delegate stor6 with:
           funct (Mask(32, 224, sha3('setFormulaToChanger(IBancorFormu', 'la)')) >> 224)
             gas gas_remaining - 710 wei
            args sub_69eddbb6Address
    else:
        if arg1 != 1:
        delegate stor6 with:
           funct (Mask(32, 224, sha3('issueSmartToken(address,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(this.address), arg2
    require delegate.return_code
    require delegate.return_data[0]
}



}
