contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = code.data[1611 len 32]
    stor2 = code.data[1643 len 32]
    stor3 = code.data[1675 len 32]
    stor4 = code.data[1707 len 32] or Mask(248, 8, stor4)
    emit ActivatedEvent(bool(uint8(code.data[1707 len 32])));
    return code.data[157 len 1454]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address assetAddress;
uint256 sellPrice;
uint256 units;
uint8 stor4;
uint256 stor4;

function asset() {
    return assetAddress
}

function sellPrice() {
    return sellPrice
}

function sellsTokens() {
    return bool(uint8(stor4))
}

function owner() {
    return address(owner)
}

function units() {
    return units
}

function transferOwnership(address arg1) {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function activate(bool arg1) {
    require msg.sender == address(owner)
    uint256(stor4) = arg1 or Mask(248, 8, uint256(stor4))
    emit ActivatedEvent(bool(uint8(arg1)));
}

function withdraw(uint256 arg1) {
    require msg.sender == address(owner)
    if eth.balance(this.address) < arg1:
        emit UpdateEvent()
        return 0
    call address(owner) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function withdrawToken(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(owner), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function withdrawAsset(uint256 arg1) {
    require msg.sender == address(owner)
    require ext_code.size(assetAddress)
    call assetAddress.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(owner), arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function buy() payable {
    if not uint8(stor4):
        if address(owner) != msg.sender:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    require sellPrice
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require units
    if msg.value / sellPrice <= ext_call.return_data[0] / units:
        if msg.value / sellPrice > 0:
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, msg.value / sellPrice * units
            require ext_call.success
            require ext_call.return_data[0]
    else:
        call msg.sender with:
           value msg.value - (ext_call.return_data[0] / units * sellPrice) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if ext_call.return_data[0] / units > 0:
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, ext_call.return_data[0] / units * units
            require ext_call.success
            require ext_call.return_data[0]
    emit UpdateEvent()
}

function _fallback() payable {
    if not uint8(stor4):
        if address(owner) != msg.sender:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
    require sellPrice
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require units
    if msg.value / sellPrice <= ext_call.return_data[0] / units:
        if msg.value / sellPrice > 0:
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, msg.value / sellPrice * units
            require ext_call.success
            require ext_call.return_data[0]
    else:
        call msg.sender with:
           value msg.value - (ext_call.return_data[0] / units * sellPrice) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if ext_call.return_data[0] / units > 0:
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining - 50 wei
                args msg.sender, ext_call.return_data[0] / units * units
            require ext_call.success
            require ext_call.return_data[0]
    emit UpdateEvent()
}



}
