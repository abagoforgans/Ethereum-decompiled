contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1333]
}



// =====================  Runtime code  =====================


address owner;
address assetAddress;
uint256 price;

function asset() {
    return assetAddress
}

function owner() {
    return owner
}

function price() {
    return price
}

function sub_f141b52b(?) {
    require owner == msg.sender
    assetAddress = arg1
}

function updatePrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function transfer_eth(address arg1, uint256 arg2) {
    require owner == msg.sender
    if eth.balance(this.address) < arg2:
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer_token(address arg1, address arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg2), arg3
    require ext_call.success
}

function _fallback() payable {
    require price
    require msg.value / price
    require ext_code.size(assetAddress)
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0]
    if msg.value / price <= ext_call.return_data[0]:
        if ext_code.size(assetAddress):
            call assetAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, msg.value / price
            if ext_call.success:
    else:
        call msg.sender with:
           value msg.value - (ext_call.return_data[0] * price) wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            if ext_code.size(assetAddress):
                call assetAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, ext_call.return_data[0]
                if ext_call.success:
    revert
}



}
