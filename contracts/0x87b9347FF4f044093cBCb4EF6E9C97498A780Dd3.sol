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
uint8 stor12; offset 152
address stor12;

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
    Mask(152, 0, stor12.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor12.field_152) = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[13251 len 20]
    stor3 = code.data[13251 len 20]
    stor4 = code.data[13283 len 20]
    stor5 = code.data[13315 len 20]
    stor6 = code.data[13347 len 20]
    return code.data[1212 len 12027]
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
address stor12;

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

function setAddresses(address arg1, address arg2, address arg3) {
    require msg.sender == owner
    stor8 = arg1
    stor12 = arg2
    selfAddress = arg3
}

function sub_fdc6476d(?) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.setFormula(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
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

function sub_b3c82dc1(?) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x867904b4 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return 0
}

function sub_185f1078(?) {
    require msg.sender == owner
    delegate stor9 with:
       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args etherTokenAddress, address(arg1), arg2
    require delegate.return_code
    delegate tokenChangerAddress with:
       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args etherTokenAddress, address(arg1), arg2
    return bool(delegate.return_data[0])
}

function sub_3396dbf2(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor9 with:
       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(arg1), arg2
    require delegate.return_code
    delegate tokenChangerAddress with:
       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(arg1), arg2
    return bool(delegate.return_data[0])
}

function sub_2390aa70(?) {
    delegate stor8 with:
       funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
         gas gas_remaining - 710 wei
        args arg1
    require delegate.return_code
    delegate tokenChangerAddress with:
       funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
         gas gas_remaining - 710 wei
        args arg1
    delegate tokenChangerAddress with:
       funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
         gas gas_remaining - 710 wei
        args arg1
    codecall stor8 with:
       funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
         gas gas_remaining - 710 wei
        args arg1
    codecall tokenChangerAddress with:
       funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
         gas gas_remaining - 710 wei
        args arg1
    codecall tokenChangerAddress with:
       funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
         gas gas_remaining - 710 wei
        args arg1
    if delegate.return_data[0]:
        return bool(delegate.return_data[0])
    if delegate.return_data[0]:
        return bool(delegate.return_data[0])
    if delegate.return_data[0]:
        return bool(delegate.return_data[0])
    return bool(callcode.return_code)
}

function sub_95cdf5ee(?) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor8 with:
       funct (Mask(32, 224, sha3('smartToken.issue(address,uint256', ')')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require delegate.return_code
    delegate address(ext_call.return_data[0]) with:
       funct (Mask(32, 224, sha3('issue(address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    delegate address(ext_call.return_data[0]) with:
       funct (Mask(32, 224, sha3('issue(address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    delegate stor8 with:
       funct (Mask(32, 224, sha3('smartToken.issue(address,uint256', ')')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    delegate address(ext_call.return_data[0]) with:
       funct (Mask(32, 224, sha3('issue(address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    delegate address(ext_call.return_data[0]) with:
       funct (Mask(32, 224, sha3('issue(address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    if delegate.return_data[0]:
        return bool(delegate.return_data[0])
    else:
        if delegate.return_data[0]:
            return bool(delegate.return_data[0])
        else:
            if delegate.return_data[0]:
                return bool(delegate.return_data[0])
            else:
                if delegate.return_data[0]:
                    return bool(delegate.return_data[0])
                else:
                    if delegate.return_data[0]:
                        return bool(delegate.return_data[0])
                    else:
                        return bool(delegate.return_data[0])
}

function sub_25277d3b(?) {
    require msg.sender == owner
    if arg1:
        if arg1 != 1:
            if arg1 != 2:
                if arg1 != 3:
                    if arg1 != 4:
                        if arg1 != 5:
                            if arg1 != 6:
                                if arg1 != 7:
                                    return 0
                                else:
                                    require msg.sender == owner
                                    delegate stor9 with:
                                       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
                                         gas gas_remaining - 710 wei
                                        args etherTokenAddress, selfAddress, arg2
                                    require delegate.return_code
                                    delegate tokenChangerAddress with:
                                       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
                                         gas gas_remaining - 710 wei
                                        args etherTokenAddress, selfAddress, arg2
                                    if delegate.return_data[0]:
                                        return bool(delegate.return_data[0])
                                    else:
                                        return bool(delegate.return_data[0])
                            else:
                                require msg.sender == owner
                                require ext_code.size(tokenChangerAddress)
                                call tokenChangerAddress.0xfc0c546a with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                delegate stor9 with:
                                   funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), selfAddress, arg2
                                require delegate.return_code
                                delegate tokenChangerAddress with:
                                   funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
                                     gas gas_remaining - 710 wei
                                    args address(ext_call.return_data[0]), selfAddress, arg2
                                if delegate.return_data[0]:
                                    return bool(delegate.return_data[0])
                                else:
                                    return bool(delegate.return_data[0])
                        else:
                            codecall stor8 with:
                               funct (Mask(32, 224, sha3('issueSmartToken2(address,uint256', ')')) >> 224)
                                 gas gas_remaining - 710 wei
                                args selfAddress, arg2
                            return bool(callcode.return_code)
                    else:
                        codecall stor8 with:
                           funct (Mask(32, 224, sha3('setFormulaToChanger2(IBancorForm', 'ula)')) >> 224)
                             gas gas_remaining - 710 wei
                            args sub_69eddbb6Address
                        return bool(callcode.return_code)
                else:
                    delegate stor8 with:
                       funct (Mask(32, 224, sha3('issueSmartToken2(address,uint256', ')')) >> 224)
                         gas gas_remaining - 710 wei
                        args selfAddress, arg2
                    require delegate.return_code
                    return bool(delegate.return_data[0])
            else:
                delegate stor8 with:
                   funct (Mask(32, 224, sha3('setFormulaToChanger2(IBancorForm', 'ula)')) >> 224)
                     gas gas_remaining - 710 wei
                    args sub_69eddbb6Address
                require delegate.return_code
                return bool(delegate.return_data[0])
        else:
            require ext_code.size(tokenChangerAddress)
            call tokenChangerAddress.0xfc0c546a with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            delegate stor8 with:
               funct (Mask(32, 224, sha3('smartToken.issue(address,uint256', ')')) >> 224)
                 gas gas_remaining - 710 wei
                args selfAddress, arg2
            require delegate.return_code
            delegate address(ext_call.return_data[0]) with:
               funct (Mask(32, 224, sha3('issue(address,uint256)')) >> 224)
                 gas gas_remaining - 710 wei
                args selfAddress, arg2
            delegate address(ext_call.return_data[0]) with:
               funct (Mask(32, 224, sha3('issue(address,uint256)')) >> 224)
                 gas gas_remaining - 710 wei
                args selfAddress, arg2
            delegate stor8 with:
               funct (Mask(32, 224, sha3('smartToken.issue(address,uint256', ')')) >> 224)
                 gas gas_remaining - 710 wei
                args selfAddress, arg2
            delegate address(ext_call.return_data[0]) with:
               funct (Mask(32, 224, sha3('issue(address,uint256)')) >> 224)
                 gas gas_remaining - 710 wei
                args selfAddress, arg2
            delegate address(ext_call.return_data[0]) with:
               funct (Mask(32, 224, sha3('issue(address,uint256)')) >> 224)
                 gas gas_remaining - 710 wei
                args selfAddress, arg2
            if delegate.return_data[0]:
                return 0
            else:
                if delegate.return_data[0]:
                    return 0
                else:
                    if delegate.return_data[0]:
                        return 0
                    else:
                        if delegate.return_data[0]:
                            return 0
                        else:
                            if delegate.return_data[0]:
                                return 0
                            else:
                                return 0
    else:
        delegate stor8 with:
           funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
             gas gas_remaining - 710 wei
            args sub_69eddbb6Address
        require delegate.return_code
        delegate tokenChangerAddress with:
           funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
             gas gas_remaining - 710 wei
            args sub_69eddbb6Address
        delegate tokenChangerAddress with:
           funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
             gas gas_remaining - 710 wei
            args sub_69eddbb6Address
        codecall stor8 with:
           funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
             gas gas_remaining - 710 wei
            args sub_69eddbb6Address
        codecall tokenChangerAddress with:
           funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
             gas gas_remaining - 710 wei
            args sub_69eddbb6Address
        codecall tokenChangerAddress with:
           funct (Mask(32, 224, sha3('setFormula(IBancorFormula)')) >> 224)
             gas gas_remaining - 710 wei
            args sub_69eddbb6Address
        if delegate.return_data[0]:
            return 0
        else:
            if delegate.return_data[0]:
                return 0
            else:
                if delegate.return_data[0]:
                    return 0
                else:
                    if callcode.return_code:
                        return 0
                    else:
                        return 0
}



}
