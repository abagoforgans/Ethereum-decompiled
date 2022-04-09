contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
address stor7;
address stor10;
address stor11;
address stor12;
address stor13;
uint8 stor14; offset 152
address stor14;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '0.1' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 0
    stor6 = 100 * 10^18
    stor10 = 0x51a3ac2399c89ffa893b0f627c740c05193875a6
    stor11 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    stor12 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor13 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    Mask(152, 0, stor14.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor14.field_152) = 0
    if not msg.value:
        stor0 = msg.sender
        require code.data[12384 len 20]
        require code.data[12416 len 20]
        stor3 = code.data[12384 len 20]
        stor4 = code.data[12416 len 20]
        stor7 = code.data[12448 len 20]
        if ext_code.size(stor3):
            call stor3.getReserveBalance(address rg1) with:
                 gas gas_remaining - 710 wei
                args stor4
            if ext_call.success:
                return code.data[1388 len 10984]
    revert
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 version;
address tokenChangerAddress;
uint32 stor4;
address etherTokenAddress;
uint256 flag;
uint256 changeAmount;
address formulaAddress;
address sub_69eddbb6Address;
uint32 stor9;
address sub_949e68a4Address;
address stor10;
address stor14;

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

function flag() {
    return flag
}

function owner() {
    return owner
}

function sub_949e68a4(?) {
    return address(sub_949e68a4Address)
}

function changeAmount() {
    return changeAmount
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
    address(sub_949e68a4Address) = arg1
}

function setFlag(uint256 arg1) {
    require msg.sender == owner
    flag = arg1
}

function sub_6e1cf330(?) {
    require msg.sender == owner
    changeAmount = arg1
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

function buy() payable {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if flag:
        return 0
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).deposit() with:
       value msg.value wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tokenChangerAddress, 0
    require ext_call.success
    require ext_call.return_data[0]
    require ext_code.size(address(etherTokenAddress))
    call address(etherTokenAddress).approve(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args tokenChangerAddress, changeAmount
    require ext_call.success
    require ext_call.return_data[0]
    delegate stor10 with:
       funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
         gas gas_remaining - 710 wei
        args sub_69eddbb6Address
    require delegate.return_code
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args 0, uint32(stor4), address(ext_call.return_data[0]), changeAmount, 1
    require ext_call.success
    delegate stor10 with:
       funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
         gas gas_remaining - 710 wei
        args formulaAddress
    require delegate.return_code
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_25277d3b(?) {
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.0xfc0c546a with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not arg1:
        delegate stor10 with:
           funct (Mask(32, 224, sha3('tokenChanger.addReserve(IERC20To', 'ken,uint8,bool)')) >> 224)
             gas gas_remaining - 710 wei
            args address(sub_949e68a4Address), 10, 0
        if delegate.return_code:
    else:
        if arg1 == 1:
            delegate stor10 with:
               funct (Mask(32, 224, sha3('smartToken.transferOwnership(add', 'ress)')) >> 224)
                 gas gas_remaining - 710 wei
                args stor14
            require delegate.return_code
            delegate stor14 with:
               funct (Mask(32, 224, sha3('smartToken.acceptOwnership()')) >> 224)
                 gas gas_remaining - 710 wei
                args 
        if arg1 == 2:
            delegate stor10 with:
               funct (Mask(32, 224, sha3('etherToken.transferOwnership(add', 'ress)')) >> 224)
                 gas gas_remaining - 710 wei
                args stor14
            require delegate.return_code
            delegate stor14 with:
               funct (Mask(32, 224, sha3('etherToken.acceptOwnership()')) >> 224)
                 gas gas_remaining - 710 wei
                args 
        if arg1 == 3:
            delegate stor10 with:
               funct (Mask(32, 224, sha3('tokenChanger.transferOwnership(a', 'ddress)')) >> 224)
                 gas gas_remaining - 710 wei
                args stor14
            require delegate.return_code
            delegate stor14 with:
               funct (Mask(32, 224, sha3('tokenChanger.acceptOwnership()')) >> 224)
                 gas gas_remaining - 710 wei
                args 
        if arg1 != 4:
            if arg1 != 5:
            if ext_code.size(address(sub_949e68a4Address)):
                call address(sub_949e68a4Address).approve(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args tokenChangerAddress, 0
                if ext_call.success:
                    if ext_call.return_data[0]:
                        if ext_code.size(address(sub_949e68a4Address)):
                            call address(sub_949e68a4Address).approve(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args tokenChangerAddress, arg2
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    if ext_code.size(tokenChangerAddress):
                                        call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                             gas gas_remaining - 710 wei
                                            args 0, uint32(stor9), address(ext_call.return_data[0]), arg2, 1
                                        if ext_call.success:
                                            if ext_code.size(address(ext_call.return_data[0])):
                                                call address(ext_call.return_data[0]).0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, ext_call.return_data[0]
                                                if ext_call.success:
                                                    if ext_call.return_data[0]:
        else:
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
                                    delegate stor10 with:
                                       funct (Mask(32, 224, sha3('tokenChanger.setFormula(IBancorF', 'ormula)')) >> 224)
                                         gas gas_remaining - 710 wei
                                        args sub_69eddbb6Address
                                    if delegate.return_code:
                                        if ext_code.size(tokenChangerAddress):
                                            call tokenChangerAddress.change(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
                                                 gas gas_remaining - 710 wei
                                                args 0, uint32(stor4), address(ext_call.return_data[0]), arg2, 1
                                            if ext_call.success:
                                                delegate stor10 with:
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
