contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    uint256(stor0.field_0) = Mask(96, 0, stor0.field_160)
    stor1 = code.data[1296 len 32]
    stor2 = code.data[1328 len 32]
    stor3 = code.data[1360 len 32]
    return code.data[85 len 1211]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address tokenAddress;
uint256 weiPerToken;
uint256 decimalPlaces;

function owner() payable {
    return address(owner)
}

function weiPerToken() payable {
    return weiPerToken
}

function decimalPlaces() payable {
    return decimalPlaces
}

function token() payable {
    return tokenAddress
}

function cancel() payable {
    require msg.sender == address(owner)
    selfdestruct(address(owner))
}

function numTokensAbleToPurchase() payable {
    return (eth.balance(this.address) / weiPerToken * decimalPlaces)
}

function transferOwnership(address arg1) payable {
    require msg.sender == address(owner)
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    emit OwnershipTransfer(msg.sender, arg1);
}

function fillMyOrder(uint256 arg1) payable {
    require arg1 != 0
    require eth.balance(this.address) >= arg1 * weiPerToken / decimalPlaces
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 25050 wei
        args msg.sender, address(owner), arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call msg.sender with:
       value arg1 * weiPerToken / decimalPlaces wei
         gas 0 wei
    if ext_call.success:
        emit OrderFilled(msg.sender, arg1);
        return 1
    call msg.sender with:
       value arg1 * weiPerToken / decimalPlaces wei
         gas gas_remaining - 34050 wei
    revert 
}

function fillOrder(address arg1, uint256 arg2) payable {
    require arg2 != 0
    require eth.balance(this.address) >= arg2 * weiPerToken / decimalPlaces
    call tokenAddress.0x23b872dd with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(owner), arg2
    require ext_call.success
    if not ext_call.return_data[0]:
        return 0
    call arg1 with:
       value arg2 * weiPerToken / decimalPlaces wei
         gas 0 wei
    if ext_call.success:
        emit OrderFilled(address(arg1), arg2);
        return 1
    call arg1 with:
       value arg2 * weiPerToken / decimalPlaces wei
         gas gas_remaining - 34050 wei
    revert 
}

function _fallback() payable {
    if msg.value > 0:
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 25050 wei
        args msg.sender, this.address
    require ext_call.success
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if ext_call.return_data[0] > eth.balance(this.address) / weiPerToken * decimalPlaces:
        if eth.balance(this.address) / weiPerToken * decimalPlaces != 0:
            if eth.balance(this.address) >= eth.balance(this.address) / weiPerToken * decimalPlaces * weiPerToken / decimalPlaces:
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, address(owner), eth.balance(this.address) / weiPerToken * decimalPlaces
                if ext_call.success:
                    if not ext_call.return_data[0]:
                    call msg.sender with:
                       value eth.balance(this.address) / weiPerToken * decimalPlaces * weiPerToken / decimalPlaces wei
                         gas 0 wei
                    if ext_call.success:
                        emit OrderFilled(msg.sender, eth.balance(this.address) / weiPerToken * decimalPlaces);
                    call msg.sender with:
                       value eth.balance(this.address) / weiPerToken * decimalPlaces * weiPerToken / decimalPlaces wei
                         gas gas_remaining - 34050 wei
    else:
        if ext_call.return_data[0] != 0:
            if eth.balance(this.address) >= ext_call.return_data[0] * weiPerToken / decimalPlaces:
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, address(owner), ext_call.return_data[0]
                if ext_call.success:
                    if not ext_call.return_data[0]:
                    call msg.sender with:
                       value ext_call.return_data[0] * weiPerToken / decimalPlaces wei
                         gas 0 wei
                    if ext_call.success:
                        emit OrderFilled(msg.sender, ext_call.return_data[0]);
                    call msg.sender with:
                       value ext_call.return_data[0] * weiPerToken / decimalPlaces wei
                         gas gas_remaining - 34050 wei
    revert 
}

function fillOrderAuto() payable {
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 25050 wei
        args msg.sender, this.address
    require ext_call.success
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if ext_call.return_data[0] > eth.balance(this.address) / weiPerToken * decimalPlaces:
        if eth.balance(this.address) / weiPerToken * decimalPlaces != 0:
            if eth.balance(this.address) >= eth.balance(this.address) / weiPerToken * decimalPlaces * weiPerToken / decimalPlaces:
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, address(owner), eth.balance(this.address) / weiPerToken * decimalPlaces
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return 0
                    call msg.sender with:
                       value eth.balance(this.address) / weiPerToken * decimalPlaces * weiPerToken / decimalPlaces wei
                         gas 0 wei
                    if ext_call.success:
                        emit OrderFilled(msg.sender, eth.balance(this.address) / weiPerToken * decimalPlaces);
                        return 1
                    call msg.sender with:
                       value eth.balance(this.address) / weiPerToken * decimalPlaces * weiPerToken / decimalPlaces wei
                         gas gas_remaining - 34050 wei
    else:
        if ext_call.return_data[0] != 0:
            if eth.balance(this.address) >= ext_call.return_data[0] * weiPerToken / decimalPlaces:
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 25050 wei
                    args msg.sender, address(owner), ext_call.return_data[0]
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return 0
                    call msg.sender with:
                       value ext_call.return_data[0] * weiPerToken / decimalPlaces wei
                         gas 0 wei
                    if ext_call.success:
                        emit OrderFilled(msg.sender, ext_call.return_data[0]);
                        return 1
                    call msg.sender with:
                       value ext_call.return_data[0] * weiPerToken / decimalPlaces wei
                         gas gas_remaining - 34050 wei
    revert 
}

function fillTheirOrder(address arg1) payable {
    call tokenAddress.0xdd62ed3e with:
         gas gas_remaining - 25050 wei
        args msg.sender, this.address
    require ext_call.success
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 25050 wei
        args msg.sender
    if ext_call.return_data[0] > eth.balance(this.address) / weiPerToken * decimalPlaces:
        if eth.balance(this.address) / weiPerToken * decimalPlaces != 0:
            if eth.balance(this.address) >= eth.balance(this.address) / weiPerToken * decimalPlaces * weiPerToken / decimalPlaces:
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), address(owner), eth.balance(this.address) / weiPerToken * decimalPlaces
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return 0
                    call arg1 with:
                       value eth.balance(this.address) / weiPerToken * decimalPlaces * weiPerToken / decimalPlaces wei
                         gas 0 wei
                    if ext_call.success:
                        emit OrderFilled(address(arg1), eth.balance(this.address) / weiPerToken * decimalPlaces);
                        return 1
                    call arg1 with:
                       value eth.balance(this.address) / weiPerToken * decimalPlaces * weiPerToken / decimalPlaces wei
                         gas gas_remaining - 34050 wei
    else:
        if ext_call.return_data[0] != 0:
            if eth.balance(this.address) >= ext_call.return_data[0] * weiPerToken / decimalPlaces:
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), address(owner), ext_call.return_data[0]
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return 0
                    call arg1 with:
                       value ext_call.return_data[0] * weiPerToken / decimalPlaces wei
                         gas 0 wei
                    if ext_call.success:
                        emit OrderFilled(address(arg1), ext_call.return_data[0]);
                        return 1
                    call arg1 with:
                       value ext_call.return_data[0] * weiPerToken / decimalPlaces wei
                         gas gas_remaining - 34050 wei
    revert 
}



}
