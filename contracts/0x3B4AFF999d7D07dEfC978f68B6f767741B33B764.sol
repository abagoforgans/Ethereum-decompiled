contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
uint128 stor3; offset 160
address stor3;

function _fallback() payable {
    stor1 = 8 * 10^14
    Mask(96, 0, stor3.field_160) = 0
    require not msg.value
    stor0 = msg.sender
    stor2 = 0xe260fe785563ee6db47d895ed6b63e5c174fb772
    address(stor3.field_0) = 0xee69bc0c3a3fb97946e5b6ddcbaf7707ea31766d
    require msg.sender == stor0
    stor0 = 0xee69bc0c3a3fb97946e5b6ddcbaf7707ea31766d
    return code.data[568 len 3315]
}



// =====================  Runtime code  =====================


address owner;
uint256 price;
address tokenAddress;
uint8 stor3; offset 160
uint128 stor3; offset 160
address stor3;

function isOpen() {
    return bool(uint8(stor3.field_160))
}

function owner() {
    return owner
}

function price() {
    return price
}

function token() {
    return tokenAddress
}

function finalize() {
    if address(stor3.field_0) != msg.sender:
        require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 200000000 * 10^18
    if -ext_call.return_data[0] + 200000000 * 10^18 > 0:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args owner, -ext_call.return_data[0] + 200000000 * 10^18
        require ext_call.success
    selfdestruct(owner)
}

function setAuthority(address arg1) {
    require msg.sender == owner
    address(stor3.field_0) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setPrice(uint256 arg1) {
    if address(stor3.field_0) != msg.sender:
        require msg.sender == owner
    price = arg1
    emit PriceSet(price);
}

function open(bool arg1) {
    if address(stor3.field_0) != msg.sender:
        require msg.sender == owner
    Mask(96, 0, stor3.field_160) = Mask(96, 0, arg1)
    if arg1:
        emit RunSale()
    else:
        emit PauseSale()
}

function _fallback() payable {
    require uint8(stor3.field_160)
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    require price
    require 10^18 * msg.value / price > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (10^18 * msg.value / price) + ext_call.return_data[0] >= 10^18 * msg.value / price
    require (10^18 * msg.value / price) + ext_call.return_data[0] <= 140000000 * 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, 10^18 * msg.value / price
    require ext_call.success
    emit Buy(msg.sender, 10^18 * msg.value / price);
}

function buy(address arg1) payable {
    require uint8(stor3.field_160)
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    require price
    require 10^18 * msg.value / price > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require (10^18 * msg.value / price) + ext_call.return_data[0] >= 10^18 * msg.value / price
    require (10^18 * msg.value / price) + ext_call.return_data[0] <= 140000000 * 10^18
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * msg.value / price
    require ext_call.success
    emit Buy(address(arg1), 10^18 * msg.value / price);
}



}
