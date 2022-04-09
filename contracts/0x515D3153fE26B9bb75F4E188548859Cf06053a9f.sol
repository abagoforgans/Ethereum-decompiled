contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;
address stor5;
address stor6;
address stor8;
uint8 stor9; offset 152
address stor9;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor8 = 0x51a3ac2399c89ffa893b0f627c740c05193875a6
    Mask(152, 0, stor9.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor9.field_152) = 0
    if not msg.value:
        stor0 = msg.sender
        require code.data[8650 len 20]
        require code.data[8682 len 20]
        stor3 = code.data[8650 len 20]
        stor4 = code.data[8682 len 20]
        stor5 = code.data[8714 len 20]
        stor6 = code.data[8746 len 20]
        if ext_code.size(stor3):
            call stor3.getReserveBalance(address rg1) with:
                 gas gas_remaining - 710 wei
                args stor4
            if ext_call.success:
                return code.data[1190 len 7448]
    revert
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
uint32 stor4;
address etherTokenAddress;
address formulaAddress;
address sub_69eddbb6Address;
address sub_949e68a4Address;
address stor8;
address stor9;

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

function sub_949e68a4(?) {
    return sub_949e68a4Address
}

function etherToken() {
    return address(etherTokenAddress)
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

function sub_526011a7(?) {
    sub_949e68a4Address = arg1
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
    require arg2
    require arg2 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
    require ext_call.return_data[0]
}

function sub_25277d3b(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not arg1:
        delegate stor8 with:
           funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
             gas gas_remaining - 710 wei
            args sub_69eddbb6Address
        if delegate.return_code:
    else:
        if arg1 == 1:
            delegate stor8 with:
               funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
                 gas gas_remaining - 710 wei
                args formulaAddress
            if delegate.return_code:
        else:
            if arg1 == 2:
                if ext_code.size(address(etherTokenAddress)):
                    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args tokenChangerAddress, 0
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            if ext_code.size(address(etherTokenAddress)):
                                call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args tokenChangerAddress, arg2
                                if ext_call.success:
                                    if ext_call.return_data[0]:
            else:
                if arg1 != 3:
                    if arg1 == 4:
                        delegate stor8 with:
                           funct (Mask(32, 224, sha3('smartToken.transferOwnership(add', 'ress)')) >> 224)
                             gas gas_remaining - 710 wei
                            args stor9
                        require delegate.return_code
                        delegate stor9 with:
                           funct (Mask(32, 224, sha3('smartToken.acceptOwnership()')) >> 224)
                             gas gas_remaining - 710 wei
                            args 
                        delegate stor8 with:
                           funct (Mask(32, 224, sha3('tokenChanger.addReserve(IERC20To', 'ken,uint8,bool)')) >> 224)
                             gas gas_remaining - 710 wei
                            args sub_949e68a4Address, 10, 0
                        delegate stor9 with:
                           funct (Mask(32, 224, sha3('smartToken.transferOwnership(add', 'ress)')) >> 224)
                             gas gas_remaining - 710 wei
                            args stor9
                        delegate stor8 with:
                           funct (Mask(32, 224, sha3('smartToken.acceptOwnership()')) >> 224)
                             gas gas_remaining - 710 wei
                            args 
                delegate stor8 with:
                   funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
                     gas gas_remaining - 710 wei
                    args sub_69eddbb6Address
                if delegate.return_code:
                    if ext_code.size(tokenChangerAddress):
                        call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                             gas gas_remaining - 710 wei
                            args 0, uint32(stor4), address(ext_call.return_data[0]), arg2, 1
                        if ext_call.success:
                            delegate stor8 with:
                               funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
                                 gas gas_remaining - 710 wei
                                args formulaAddress
                            if delegate.return_code:
                                if ext_code.size(address(ext_call.return_data[0])):
                                    call address(ext_call.return_data[0]).0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, ext_call.return_data[0]
                                    if ext_call.success:
                                        if ext_call.return_data[0]:
    revert
}



}
