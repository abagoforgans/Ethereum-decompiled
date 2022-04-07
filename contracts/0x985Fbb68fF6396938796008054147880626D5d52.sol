contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    uint8(stor0.field_160) = 1
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor1 = code.data[2212 len 20]
    stor2 = code.data[2232 len 32]
    stor3 = code.data[2264 len 32]
    require code.data[2212 len 20]
    require stor2 > 0
    require stor3 > 0
    return code.data[221 len 1979]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
address assetAddress;
uint256 sellPrice;
uint256 units;

function asset() {
    return assetAddress
}

function sellPrice() {
    return sellPrice
}

function owner() {
    return owner
}

function units() {
    return units
}

function running() {
    return bool(stor0)
}

function destruct() {
    require owner == msg.sender
    selfdestruct(owner)
}

function stop() {
    require owner == msg.sender
    stor0 = 0
}

function start() {
    require owner == msg.sender
    stor0 = 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getAssetBalance() {
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function makerWithdrawEther() {
    require owner == msg.sender
    emit MakerWithdrewEther(eth.balance(this.address));
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function makerWithdrawAsset(uint256 arg1) {
    require owner == msg.sender
    emit MakerWithdrewAsset(arg1);
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function takerBuyAsset() payable {
    require stor0
    require msg.value >= sellPrice
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
        emit SoldTokens((msg.value / sellPrice));
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
        emit SoldTokens((ext_call.return_data[0] / units));
}

function _fallback() payable {
    if owner != msg.sender:
        require stor0
        require msg.value >= sellPrice
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
            emit SoldTokens((msg.value / sellPrice));
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
            emit SoldTokens((ext_call.return_data[0] / units));
}



}
