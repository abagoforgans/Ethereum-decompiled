contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1; offset 160

function _fallback() {
    stor0 = msg.sender
    stor1 = 0
    return code.data[133 len 2952]
}



// =====================  Runtime code  =====================


address owner;
uint8 saleState; offset 160
address assetAddress;
uint256 deadline;
uint256 price;

function deadline() {
    return deadline
}

function asset() {
    return assetAddress
}

function saleState() {
    require saleState <= 3
    return saleState
}

function owner() {
    return owner
}

function price() {
    return price
}

function kill() {
    require msg.sender == owner
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require msg.sender == owner
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(assetAddress)
        call assetAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
    selfdestruct(owner)
}

function stopSale() {
    require msg.sender == owner
    saleState = 2
}

function startSale(uint256 arg1, uint256 arg2, address arg3) {
    require msg.sender == owner
    saleState = 1
    deadline = block.timestamp + (60 * arg1)
    price = arg2
    assetAddress = arg3
}

function withdrawEthers() {
    require msg.sender == owner
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function withdrawTokens() {
    require msg.sender == owner
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if ext_call.return_data[0] > 0:
        require ext_code.size(assetAddress)
        call assetAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args owner, ext_call.return_data[0]
        require ext_call.success
}

function _fallback() payable {
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require price
    require saleState <= 3
    require saleState == 1
    require block.timestamp <= deadline
    require msg.value >= 10000
    if msg.value / price <= ext_call.return_data[0]:
        if msg.value / price > 0:
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / price
            require ext_call.success
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
    else:
        saleState = 3
        call msg.sender with:
           value msg.value - (ext_call.return_data[0] * price) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if ext_call.return_data[0] > 0:
            require ext_code.size(assetAddress)
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, ext_call.return_data[0]
            require ext_call.success
            call owner with:
               value ext_call.return_data[0] * price wei
                 gas 2300 * is_zero(value) wei
}



}
