contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[3016 len 20]
    stor2 = code.data[3036 len 32]
    stor3 = code.data[3068 len 32]
    stor4 = code.data[3100 len 32]
    uint8(stor5.field_0) = uint8(bool(code.data[3132 len 32]))
    Mask(248, 0, stor5.field_8) = Mask(248, 0, bool(code.data[3164 len 32]))
    emit ActivatedEvent(bool(uint8(stor5.field_0)), bool(uint8(stor5.field_8)));
    return code.data[417 len 2587]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 buyPrice;
uint256 sellPrice;
uint256 units;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 8

function sellPrice() {
    return sellPrice
}

function sellsTokens() {
    return bool(uint8(stor5.field_8))
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
    return bool(uint8(stor5.field_0))
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function activate(bool arg1, bool arg2) {
    require msg.sender == owner
    uint8(stor5.field_0) = uint8(arg1)
    Mask(248, 0, stor5.field_8) = Mask(248, 0, arg2)
    emit ActivatedEvent(bool(uint8(stor5.field_0)), bool(uint8(stor5.field_8)));
}

function sub_49e1a72e(?) {
    require msg.sender == owner
    if eth.balance(this.address) < arg1:
        return 0
    emit MakerWithdrewEther(arg1);
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sub_60e5b760(?) {
    require msg.sender == owner
    emit MakerWithdrewAsset(arg1);
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function ownerDepositEther() payable {
    require msg.sender == owner
    require ext_code.size(msg.sender)
    call msg.sender.0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == owner
    emit MakerDepositedEther(msg.value);
}



}
