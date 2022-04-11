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
    require code.data[3004 len 20]
    require ext_code.size(address(code.data[2992 len 32]))
    call address(code.data[2992 len 32]).0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    require ext_call.success
    if code.data[3024 len 32] <= 0:
        require code.data[3056 len 32] > 0
    require code.data[3024 len 32] < code.data[3056 len 32]
    require code.data[3088 len 32] > 0
    stor1 = address(code.data[2992 len 32])
    stor2 = code.data[3024 len 32]
    stor3 = code.data[3056 len 32]
    stor4 = code.data[3088 len 32]
    uint8(stor5.field_0) = uint8(bool(code.data[3120 len 32]))
    Mask(248, 0, stor5.field_8) = Mask(248, 0, bool(code.data[3152 len 32]))
    Mask(240, 0, stor5.field_16) = Mask(240, 16, bool(code.data[3120 len 32])) >> 16
    emit ActivatedEvent(bool(uint8(bool(code.data[3120 len 32]))), bool(uint8(bool(code.data[3152 len 32]))));
    return code.data[490 len 2502]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 buyPrice;
uint256 sellPrice;
uint256 units;
uint8 stor5;
uint8 stor5; offset 8
uint256 stor5; offset 16
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
    uint8(stor5.field_0) = uint8(arg1)
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

function takerSellAsset(uint256 arg1) {
    if uint8(stor5.field_0):
        require buyPrice
        require units
        if arg1 / units <= eth.balance(this.address) / buyPrice:
            if arg1 / units > 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), arg1 / units * units
                require ext_call.success
                require ext_call.return_data[0]
                call msg.sender with:
                   value arg1 / units * buyPrice wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit TakerSoldAsset(arg1, arg1 / units * units, arg1 / units * buyPrice, msg.sender);
        else:
            if eth.balance(this.address) / buyPrice > 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args msg.sender, address(this.address), eth.balance(this.address) / buyPrice * units
                require ext_call.success
                require ext_call.return_data[0]
                call msg.sender with:
                   value eth.balance(this.address) / buyPrice * buyPrice wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            emit TakerSoldAsset(arg1, eth.balance(this.address) / buyPrice * units, eth.balance(this.address) / buyPrice * buyPrice, msg.sender);
    else:
        if owner == msg.sender:
            require buyPrice
            require units
            if arg1 / units <= eth.balance(this.address) / buyPrice:
                if arg1 / units > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), arg1 / units * units
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value arg1 / units * buyPrice wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit TakerSoldAsset(arg1, arg1 / units * units, arg1 / units * buyPrice, msg.sender);
            else:
                if eth.balance(this.address) / buyPrice > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args msg.sender, address(this.address), eth.balance(this.address) / buyPrice * units
                    require ext_call.success
                    require ext_call.return_data[0]
                    call msg.sender with:
                       value eth.balance(this.address) / buyPrice * buyPrice wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                emit TakerSoldAsset(arg1, eth.balance(this.address) / buyPrice * units, eth.balance(this.address) / buyPrice * buyPrice, msg.sender);
}

function _fallback() payable {
    if uint8(stor5.field_8):
        require sellPrice
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require units
        if msg.value <= ext_call.return_data[0] / units * sellPrice:
            if msg.value / sellPrice > 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value / sellPrice * units
                require ext_call.success
                require ext_call.return_data[0]
            emit TakerBoughtAsset(msg.value, 0, msg.value / sellPrice * units, msg.sender);
        else:
            if msg.value - (ext_call.return_data[0] / units * sellPrice) > 0:
                call msg.sender with:
                   value msg.value - (ext_call.return_data[0] / units * sellPrice) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            if ext_call.return_data[0] / units > 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0] / units * units
                require ext_call.success
                require ext_call.return_data[0]
            emit TakerBoughtAsset(msg.value, msg.value - (ext_call.return_data[0] / units * sellPrice), ext_call.return_data[0] / units * units, msg.sender);
    else:
        if owner != msg.sender:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require sellPrice
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require units
            if msg.value <= ext_call.return_data[0] / units * sellPrice:
                if msg.value / sellPrice > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / sellPrice * units
                    require ext_call.success
                    require ext_call.return_data[0]
                emit TakerBoughtAsset(msg.value, 0, msg.value / sellPrice * units, msg.sender);
            else:
                if msg.value - (ext_call.return_data[0] / units * sellPrice) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[0] / units * sellPrice) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if ext_call.return_data[0] / units > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0] / units * units
                    require ext_call.success
                    require ext_call.return_data[0]
                emit TakerBoughtAsset(msg.value, msg.value - (ext_call.return_data[0] / units * sellPrice), ext_call.return_data[0] / units * units, msg.sender);
}

function takerBuyAsset() payable {
    if uint8(stor5.field_8):
        require sellPrice
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require units
        if msg.value <= ext_call.return_data[0] / units * sellPrice:
            if msg.value / sellPrice > 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, msg.value / sellPrice * units
                require ext_call.success
                require ext_call.return_data[0]
            emit TakerBoughtAsset(msg.value, 0, msg.value / sellPrice * units, msg.sender);
        else:
            if msg.value - (ext_call.return_data[0] / units * sellPrice) > 0:
                call msg.sender with:
                   value msg.value - (ext_call.return_data[0] / units * sellPrice) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            if ext_call.return_data[0] / units > 0:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0] / units * units
                require ext_call.success
                require ext_call.return_data[0]
            emit TakerBoughtAsset(msg.value, msg.value - (ext_call.return_data[0] / units * sellPrice), ext_call.return_data[0] / units * units, msg.sender);
    else:
        if owner != msg.sender:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require sellPrice
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args this.address
            require ext_call.success
            require units
            if msg.value <= ext_call.return_data[0] / units * sellPrice:
                if msg.value / sellPrice > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, msg.value / sellPrice * units
                    require ext_call.success
                    require ext_call.return_data[0]
                emit TakerBoughtAsset(msg.value, 0, msg.value / sellPrice * units, msg.sender);
            else:
                if msg.value - (ext_call.return_data[0] / units * sellPrice) > 0:
                    call msg.sender with:
                       value msg.value - (ext_call.return_data[0] / units * sellPrice) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                if ext_call.return_data[0] / units > 0:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, ext_call.return_data[0] / units * units
                    require ext_call.success
                    require ext_call.return_data[0]
                emit TakerBoughtAsset(msg.value, msg.value - (ext_call.return_data[0] / units * sellPrice), ext_call.return_data[0] / units * units, msg.sender);
}



}
