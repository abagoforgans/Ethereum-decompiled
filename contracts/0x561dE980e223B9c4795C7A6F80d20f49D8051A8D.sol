contract main {




// =====================  Runtime code  =====================


address getBuyingTokenAddress;
uint256 getAskingUnitPrice;
uint256 stor2;
uint256 getAskingTokenBought;
uint8 stor4; offset 160
address stor4;
uint256 getEscrowBalance;
array of uint256 getEscrowTokenSymbol;
address getEscrowOwner;
uint256 getEscrowCreationDate;

function GetAskingTokenBought() {
    return getAskingTokenBought
}

function GetEscrowOwner() {
    return getEscrowOwner
}

function GetEscrowBalance() {
    return getEscrowBalance
}

function GetEscrowCreationDate() {
    return getEscrowCreationDate
}

function GetEscrowTokenSymbol() {
    return getEscrowTokenSymbol[0 len getEscrowTokenSymbol.length]
}

function GetBuyingTokenAddress() {
    return getBuyingTokenAddress
}

function GetAskingUnitPrice() {
    return getAskingUnitPrice
}

function IsEscrowActive() {
    return bool(uint8(stor4.field_160))
}

function cancel() {
    require ext_code.size(address(stor4.field_0))
    call address(stor4.field_0).0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(stor4.field_0))
        call address(stor4.field_0).0x70a08231 with:
             gas gas_remaining wei
            args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor4.field_0))
        call address(stor4.field_0).0xa9059cbb with:
             gas gas_remaining wei
            args getEscrowOwner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
    uint8(stor4.field_160) = 0
    selfdestruct(getEscrowOwner)
}

function _fallback() payable {
    revert
}

function NotifyMe(address arg1, uint256 arg2) {
    require ext_code.size(arg1)
    call arg1.GetSellingTokenContractAddress() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20] == getBuyingTokenAddress
    require ext_code.size(arg1)
    call arg1.GetSellingTokenUnitPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= getAskingUnitPrice
    require ext_code.size(arg1)
    call arg1.GetSellingTokenUnitPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_call.return_data[0]
    require getEscrowBalance == (ext_call.return_data[0] * getEscrowBalance / ext_call.return_data[0]) + (getEscrowBalance % ext_call.return_data[0])
    if getEscrowBalance / ext_call.return_data[0]:
        require getEscrowBalance / ext_call.return_data[0]
        require stor2 * getEscrowBalance / ext_call.return_data[0] / getEscrowBalance / ext_call.return_data[0] == stor2
    require ext_code.size(arg1)
    call arg1.Purchase(uint256 arg1, address arg2) with:
       value getEscrowBalance wei
         gas gas_remaining wei
        args getAskingUnitPrice, getEscrowOwner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        emit PurchaseRejected(arg2, this.address, arg1);
    else:
        require (stor2 * getEscrowBalance / ext_call.return_data[0]) + getAskingTokenBought >= getAskingTokenBought
        require (stor2 * getEscrowBalance / ext_call.return_data[0]) + getAskingTokenBought >= stor2 * getEscrowBalance / ext_call.return_data[0]
        getAskingTokenBought += stor2 * getEscrowBalance / ext_call.return_data[0]
        emit PurchaseAccepted(arg2, this.address, arg1);
}



}
