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
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
uint8 stor15; offset 152
address stor15;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor7 = this.address
    stor8 = 0x51a3ac2399c89ffa893b0f627c740c05193875a6
    stor9 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    stor10 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor11 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    stor12 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    stor13 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor14 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    Mask(152, 0, stor15.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor15.field_152) = 0
    if not msg.value:
        stor0 = msg.sender
        require code.data[8747 len 20]
        stor3 = code.data[8747 len 20]
        stor4 = code.data[8779 len 20]
        stor5 = code.data[8811 len 20]
        stor6 = code.data[8843 len 20]
        if ext_code.size(stor3):
            call stor3.getReserveBalance(address rg1) with:
                 gas gas_remaining - 710 wei
                args stor4
            if ext_call.success:
                return code.data[1722 len 7013]
    revert
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
address etherTokenAddress;
address formulaAddress;
address sub_69eddbb6Address;
address selfAddress;
address stor8;
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;

function selfAddress() {
    return selfAddress
}

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

function etherToken() {
    return etherTokenAddress
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

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9) {
    require msg.sender == owner
    stor8 = arg1
    stor15 = arg2
    selfAddress = arg3
    stor9 = arg4
    stor10 = arg5
    stor11 = arg6
    stor12 = arg7
    stor13 = arg8
    stor14 = arg9
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

function sub_35d86662(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not arg1:
        delegate stor8 with:
           funct (Mask(32, 224, sha3('L.withdrawSmartTokens(address,ui', 'nt256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(arg2), arg3
    else:
        if arg1 == 1:
            delegate stor8 with:
               funct (Mask(32, 224, sha3('L.withdrawEtherTokens(address,ui', 'nt256)')) >> 224)
                 gas gas_remaining - 710 wei
                args address(arg2), arg3
        else:
            if arg1 == 2:
                delegate stor8 with:
                   funct (Mask(32, 224, sha3('L.withdrawSmartTokens2(address,u', 'int256)')) >> 224)
                     gas gas_remaining - 710 wei
                    args address(arg2), arg3
            else:
                if arg1 == 3:
                    delegate stor8 with:
                       funct (Mask(32, 224, sha3('L.withdrawEtherTokens2(address,u', 'int256)')) >> 224)
                         gas gas_remaining - 710 wei
                        args address(arg2), arg3
                else:
                    if arg1 == 4:
                        delegate stor8 with:
                           funct (Mask(32, 224, sha3('L.transferSmartToken(address,uin', 't256)')) >> 224)
                             gas gas_remaining - 710 wei
                            args address(arg2), arg3
                    else:
                        if arg1 == 5:
                            delegate stor8 with:
                               funct (Mask(32, 224, sha3('L.transferEtherToken(address,uin', 't256)')) >> 224)
                                 gas gas_remaining - 710 wei
                                args address(arg2), arg3
                        else:
                            if arg1 == 6:
                                delegate stor8 with:
                                   funct (Mask(32, 224, sha3('L.issueSmartToken(address,uint25', '6)')) >> 224)
                                     gas gas_remaining - 710 wei
                                    args address(arg2), arg3
                            else:
                                if arg1 != 7:
                                    return 0
                                delegate stor8 with:
                                   funct (Mask(32, 224, sha3('L.setFormulaToChanger(IBancorFor', 'mula)')) >> 224)
                                     gas gas_remaining - 710 wei
                                    args sub_69eddbb6Address
    require delegate.return_code
    return bool(delegate.return_data[0])
}



}
