contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = 0xe0b7927c4af23765cb51314a0e0521a9645f0e2a
    stor2 = 1030 * 10^6
    return code.data[82 len 711]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address assetAddress;
uint256 price;

function asset() payable {
    return assetAddress
}

function owner() payable {
    return address(owner)
}

function price() payable {
    return price
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function transfer_eth(address arg1, uint256 arg2) payable {
    require msg.sender == address(owner)
    if eth.balance(this.address) >= arg2:
        call arg1 with:
           value arg2 wei
             gas 0 wei
}

function transfer_token(address arg1, address arg2, uint256 arg3) payable {
    require msg.sender == address(owner)
    call arg1.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 25050 wei
        args address(arg2), arg3
    require ext_call.success
}

function _fallback() payable {
    require msg.value / price != 0
    call assetAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] != 0
    if msg.value / price <= ext_call.return_data[0]:
        call assetAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args msg.sender, msg.value / price
    else:
        call msg.sender with:
           value msg.value - (ext_call.return_data[0] * price) wei
             gas 0 wei
        call assetAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining - 25050 wei
            args msg.sender, ext_call.return_data[0]
    require ext_call.success
}



}
