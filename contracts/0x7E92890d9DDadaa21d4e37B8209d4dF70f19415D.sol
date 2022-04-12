contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
uint256 stor6; offset 16
uint256 stor6; offset 8

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[2506 len 20]
    stor2 = code.data[2538 len 20]
    stor3 = code.data[2558 len 32]
    stor4 = code.data[2590 len 32]
    stor5 = code.data[2622 len 32]
    uint8(stor6.field_0) = uint8(bool(code.data[2654 len 32]))
    Mask(248, 0, stor6.field_8) = Mask(248, 0, bool(code.data[2686 len 32]))
    Mask(240, 0, stor6.field_16) = Mask(240, 16, bool(code.data[2654 len 32])) >> 16
    require stor0 == msg.sender
    emit OwnershipTransferred(stor0, code.data[2506 len 20]);
    stor0 = code.data[2506 len 20]
    return code.data[370 len 2124]
}



// =====================  Runtime code  =====================


address owner;
address sub_1e04c9cbAddress;
address assetAddress;
uint256 buyPrice;
uint256 sellPrice;
uint256 units;
uint8 stor6;
uint8 stor6; offset 8

function sub_1e04c9cb(?) {
    return sub_1e04c9cbAddress
}

function asset() {
    return assetAddress
}

function sellPrice() {
    return sellPrice
}

function sellsTokens() {
    return bool(uint8(stor6.field_8))
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

function buysTokens() {
    return bool(uint8(stor6.field_0))
}

function ownerDepositEther() payable {
    require owner == msg.sender
    emit 0x39242e7f: msg.value
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
    call owner with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function sub_60e5b760(?) {
    require owner == msg.sender
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function takerSellAsset(uint256 arg1) {
    if uint8(stor6.field_0):
        if owner != msg.sender:
            require buyPrice
            require units
            if arg1 / units <= eth.balance(this.address) / buyPrice:
                if arg1 / units > 0:
                    require ext_code.size(assetAddress)
                    call assetAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), arg1 / units * units
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value arg1 / units * buyPrice wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
            else:
                if eth.balance(this.address) / buyPrice > 0:
                    require ext_code.size(assetAddress)
                    call assetAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), eth.balance(this.address) / buyPrice * units
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value eth.balance(this.address) / buyPrice * buyPrice wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
}

function _fallback() payable {
    if not uint8(stor6.field_8):
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if owner == msg.sender:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require sellPrice
            require ext_code.size(assetAddress)
            call assetAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require units
            if msg.value <= ext_call.return_data[0] / units * sellPrice:
                if msg.value / sellPrice > 0:
                    require ext_code.size(assetAddress)
                    call assetAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / sellPrice * units
                    require ext_call.success
                    require ext_call.return_data[0]
            else:
                if msg.value - (ext_call.return_data[0] / units * sellPrice) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[0] / units * sellPrice) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if ext_call.return_data[0] / units > 0:
                    require ext_code.size(assetAddress)
                    call assetAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0] / units * units
                    require ext_call.success
                    require ext_call.return_data[0]
}

function takerBuyAsset() payable {
    if not uint8(stor6.field_8):
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if owner == msg.sender:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require sellPrice
            require ext_code.size(assetAddress)
            call assetAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require units
            if msg.value <= ext_call.return_data[0] / units * sellPrice:
                if msg.value / sellPrice > 0:
                    require ext_code.size(assetAddress)
                    call assetAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / sellPrice * units
                    require ext_call.success
                    require ext_call.return_data[0]
            else:
                if msg.value - (ext_call.return_data[0] / units * sellPrice) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[0] / units * sellPrice) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if ext_call.return_data[0] / units > 0:
                    require ext_code.size(assetAddress)
                    call assetAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0] / units * units
                    require ext_call.success
                    require ext_call.return_data[0]
}



}
