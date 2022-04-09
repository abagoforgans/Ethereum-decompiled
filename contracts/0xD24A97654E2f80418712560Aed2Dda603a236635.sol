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
uint8 stor13; offset 152
address stor13;

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
    stor8 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor9 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    stor10 = 0xca83bd8c4c7b1c0409b25fbd7e70b1ef57629ff4
    stor11 = 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c
    stor12 = 0xd76b5c2a23ef78368d8e34288b5b65d616b746ae
    Mask(152, 0, stor13.field_0) = 0x847daa89786e1f6bf2d2d1db4152878e83e2bd
    uint8(stor13.field_152) = 0
    if not msg.value:
        stor0 = msg.sender
        require code.data[17754 len 20]
        stor3 = code.data[17754 len 20]
        stor4 = code.data[17786 len 20]
        if ext_code.size(stor3):
            call stor3.getReserveBalance(address rg1) with:
                 gas gas_remaining - 710 wei
                args stor4
            if ext_call.success:
                return code.data[1572 len 16170]
    revert
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
address stor9;
address stor10;
address stor11;
address stor12;
address stor13;

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

function sub_2663614c(?) {
    require msg.sender == owner
    delegate stor9 with:
       funct (Mask(32, 224, sha3('transfer(address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_c9fe5ade(?) {
    require msg.sender == owner
    delegate stor7 with:
       funct (Mask(32, 224, sha3('reserveTokens[0].transfer(addres', 's,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_1e24629b(?) {
    require msg.sender == owner
    delegate stor7 with:
       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args etherTokenAddress, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_7bafdf30(?) {
    require msg.sender == owner
    delegate stor9 with:
       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args etherTokenAddress, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8, address arg9) {
    require msg.sender == owner
    stor6 = arg1
    stor13 = arg2
    selfAddress = arg3
    stor7 = arg4
    stor8 = arg5
    stor9 = arg6
    stor10 = arg7
    stor11 = arg8
    stor12 = arg9
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

function sub_525260be(?) {
    require msg.sender == owner
    delegate stor6 with:
       funct (Mask(32, 224, sha3('etherToken.withdrawTokens(IERC20', 'Token,address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args etherTokenAddress, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_c5407cea(?) {
    require msg.sender == owner
    delegate stor6 with:
       funct (Mask(32, 224, sha3('tokenChanger.withdrawTokens(IERC', '20Token,address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args etherTokenAddress, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_7a3f2edf(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor7 with:
       funct (Mask(32, 224, sha3('withdrawFromToken(IERC20Token,ad', 'dress,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args etherTokenAddress, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_6c156049(?) {
    require msg.sender == owner
    delegate stor8 with:
       funct (Mask(32, 224, sha3('etherToken.approve(address,uint2', '56)')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require delegate.return_code
    delegate stor9 with:
       funct (Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224)
         gas gas_remaining - 710 wei
        args stor11, address(arg1), arg2
    return bool(delegate.return_data[0])
}

function sub_5b498122(?) {
    require msg.sender == owner
    delegate stor7 with:
       funct (Mask(32, 224, sha3('reserveTokens[0].approve(address', ',uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require delegate.return_code
    delegate stor9 with:
       funct (Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224)
         gas gas_remaining - 710 wei
        args stor10, address(arg1), arg2
    return bool(delegate.return_data[0])
}

function sub_2ea43766(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor9 with:
       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_57ac332a(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor7 with:
       funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_599f2401(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor6 with:
       funct (Mask(32, 224, sha3('tokenChanger.withdrawFromToken(I', 'ERC20Token,address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args etherTokenAddress, address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_5fa73b56(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor7 with:
       funct (Mask(32, 224, sha3('withdrawFromToken(IERC20Token,ad', 'dress,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_bb4e5472(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor6 with:
       funct (Mask(32, 224, sha3('etherToken.withdrawTokens(IERC20', 'Token,address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_fddccb5d(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor6 with:
       funct (Mask(32, 224, sha3('tokenChanger.withdrawTokens(IERC', '20Token,address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_f898f77a(?) {
    require msg.sender == owner
    require ext_code.size(tokenChangerAddress)
    call tokenChangerAddress.token() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    delegate stor6 with:
       funct (Mask(32, 224, sha3('tokenChanger.withdrawFromToken(I', 'ERC20Token,address,uint256)')) >> 224)
         gas gas_remaining - 710 wei
        args address(ext_call.return_data[0]), address(arg1), arg2
    require delegate.return_code
    return bool(delegate.return_data[0])
}

function sub_25277d3b(?) {
    require msg.sender == owner
    if not arg1:
        require msg.sender == owner
        require ext_code.size(tokenChangerAddress)
        call tokenChangerAddress.token() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        delegate stor7 with:
           funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 1:
        require msg.sender == owner
        require ext_code.size(tokenChangerAddress)
        call tokenChangerAddress.token() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        delegate stor6 with:
           funct (Mask(32, 224, sha3('tokenChanger.withdrawTokens(IERC', '20Token,address,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 2:
        require msg.sender == owner
        require ext_code.size(tokenChangerAddress)
        call tokenChangerAddress.token() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        delegate stor9 with:
           funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 3:
        require msg.sender == owner
        require ext_code.size(tokenChangerAddress)
        call tokenChangerAddress.token() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        delegate stor6 with:
           funct (Mask(32, 224, sha3('etherToken.withdrawTokens(IERC20', 'Token,address,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 4:
        require msg.sender == owner
        require ext_code.size(tokenChangerAddress)
        call tokenChangerAddress.token() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        delegate stor7 with:
           funct (Mask(32, 224, sha3('withdrawFromToken(IERC20Token,ad', 'dress,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args etherTokenAddress, stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 5:
        require msg.sender == owner
        require ext_code.size(tokenChangerAddress)
        call tokenChangerAddress.token() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        delegate stor6 with:
           funct (Mask(32, 224, sha3('tokenChanger.withdrawFromToken(I', 'ERC20Token,address,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args etherTokenAddress, stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 10:
        require msg.sender == owner
        delegate stor7 with:
           funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args etherTokenAddress, stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 11:
        require msg.sender == owner
        delegate stor6 with:
           funct (Mask(32, 224, sha3('tokenChanger.withdrawTokens(IERC', '20Token,address,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args etherTokenAddress, stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 12:
        require msg.sender == owner
        require ext_code.size(tokenChangerAddress)
        call tokenChangerAddress.token() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        delegate stor7 with:
           funct (Mask(32, 224, sha3('withdrawFromToken(IERC20Token,ad', 'dress,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 13:
        require msg.sender == owner
        require ext_code.size(tokenChangerAddress)
        call tokenChangerAddress.token() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        delegate stor6 with:
           funct (Mask(32, 224, sha3('tokenChanger.withdrawFromToken(I', 'ERC20Token,address,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args address(ext_call.return_data[0]), stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 14:
        require msg.sender == owner
        delegate stor9 with:
           funct (Mask(32, 224, sha3('withdrawTokens(IERC20Token,addre', 'ss,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args etherTokenAddress, stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 15:
        require msg.sender == owner
        delegate stor6 with:
           funct (Mask(32, 224, sha3('etherToken.withdrawTokens(IERC20', 'Token,address,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args etherTokenAddress, stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 16:
        require msg.sender == owner
        delegate stor9 with:
           funct (Mask(32, 224, sha3('transfer(address,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 17:
        require msg.sender == owner
        delegate stor7 with:
           funct (Mask(32, 224, sha3('reserveTokens[0].transfer(addres', 's,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 == 18:
        require msg.sender == owner
        delegate stor7 with:
           funct (Mask(32, 224, sha3('reserveTokens[0].transfer(addres', 's,uint256)')) >> 224)
             gas gas_remaining - 710 wei
            args stor13, arg2
        require delegate.return_code
        return bool(delegate.return_data[0])
    if arg1 != 19:
        return 0
    require msg.sender == owner
    delegate stor8 with:
       funct (Mask(32, 224, sha3('etherToken.approve(address,uint2', '56)')) >> 224)
         gas gas_remaining - 710 wei
        args stor13, arg2
    require delegate.return_code
    delegate stor9 with:
       funct (Mask(32, 224, sha3('transferFrom(address,address,uin', 't256)')) >> 224)
         gas gas_remaining - 710 wei
        args stor11, stor13, arg2
    return bool(delegate.return_data[0])
}



}
