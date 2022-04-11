contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint256 stor5; offset 16
uint256 stor5; offset 8

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1767 len 20]
    stor2 = code.data[1787 len 32]
    stor3 = code.data[1819 len 32]
    stor4 = code.data[1851 len 32]
    uint8(stor5.field_0) = uint8(bool(code.data[1883 len 32]))
    Mask(248, 0, stor5.field_8) = Mask(248, 0, bool(code.data[1915 len 32]))
    Mask(240, 0, stor5.field_16) = Mask(240, 16, bool(code.data[1883 len 32])) >> 16
    emit ActivatedEvent(bool(uint8(bool(code.data[1883 len 32]))), bool(uint8(bool(code.data[1915 len 32]))));
    return code.data[271 len 1484]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 buyPrice;
uint256 sellPrice;
uint256 units;
uint8 buysTokens;
uint8 sellsTokens; offset 8
uint256 stor5; offset 16
uint256 stor5; offset 8

function sellPrice() {
    return sellPrice
}

function sellsTokens() {
    return bool(sellsTokens)
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function units() {
    return units
}

function tokenAddress() {
    return tokenAddress
}

function buysTokens() {
    return bool(buysTokens)
}

function _fallback() payable {
    revert
}

function ownerDepositEther() payable {
    require owner == msg.sender
    emit MakerDepositedEther(msg.value);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_49e1a72e(?) {
    require owner == msg.sender
    if eth.balance(this.address) < arg1:
        return 0
    emit MakerWithdrewEther(arg1);
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function activate(bool arg1, bool arg2) {
    require owner == msg.sender
    buysTokens = uint8(arg1)
    Mask(248, 0, stor5.field_8) = Mask(248, 0, arg2)
    Mask(240, 0, stor5.field_16) = Mask(240, 16, arg1) >> 16
    emit ActivatedEvent(bool(uint8(arg1)), bool(uint8(arg2)));
}

function sub_60e5b760(?) {
    require owner == msg.sender
    emit MakerWithdrewAsset(arg1);
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}



}
