contract main {




// =====================  Runtime code  =====================


address stor0;
address stor1;
address tokenContractAddress;
uint256 tokenPrice;
uint256 tokensSold;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function tokensSold() {
    return tokensSold
}

function tokenContract() {
    return tokenContractAddress
}

function tokenPrice() {
    return tokenPrice
}

function setTokenPrice(uint256 arg1) {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only an admin can perform this operation.'
    tokenPrice = arg1
}

function withdraw(uint256 arg1) {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only an admin can perform this operation.'
    if eth.balance(this.address) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The sale contract does not have enough ETH.'
    call stor0 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdraw2(uint256 arg1) {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only an admin can perform this operation.'
    if eth.balance(this.address) < arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The sale contract does not have enough ETH.'
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_bcea2249(?) {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only an admin can run this function.'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'The contract does not have enough tokens to sell.'
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'The transfer of tokens failed.'
    require tokensSold + arg2 >= tokensSold
    tokensSold += arg2
    emit Sell(address(arg1), arg2);
}

function buyTokens(uint256 arg1) payable {
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            if not arg1:
                require 0 <= msg.value
                if msg.value > tokenPrice:
                    revert with 0, 
                                'The ETH sent must match the number of tokens to be bought.',
                                Mask(208, -256, 'The ETH sent must match the numb', 'er of tokens to be bought.') << 256
            else:
                require arg1
                require arg1 * tokenPrice / arg1 == tokenPrice
                require arg1 * tokenPrice <= msg.value
                if msg.value - (arg1 * tokenPrice) > tokenPrice:
                    revert with 0, 
                                'The ETH sent must match the number of tokens to be bought.',
                                Mask(208, -256, 'The ETH sent must match the numb', 'er of tokens to be bought.') << 256
            if block.timestamp < stor5:
                if tokensSold > stor8:
                    revert with 0, 
                                'All tokens allocated to the ICO Pre-Sale stage have been sold.',
                                Mask(240, -256, 'All tokens allocated to the ICO ', 'Pre-Sale stage have been sold.') << 256
            else:
                if block.timestamp < stor6:
                    if tokensSold > stor9:
                        revert with 0, 
                                    'All tokens allocated to the ICO 1st stage have been sold.',
                                    Mask(200, -256, 'All tokens allocated to the ICO ', '1st stage have been sold.') << 256
                else:
                    if block.timestamp < stor7:
                        if tokensSold > stor10:
                            revert with 0, 
                                        'All tokens allocated to the ICO 2nd stage have been sold.',
                                        Mask(200, -256, 'All tokens allocated to the ICO ', '2nd stage have been sold.') << 256
    if msg.value < stor11:
        revert with 0, 'You must buy tokens worth at least 1 ETH.', Mask(72, -256, 'You must buy tokens worth at lea', 'st 1 ETH.') << 256
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg1:
        revert with 0, 
                    'The contract does not have enough tokens to sell.',
                    Mask(136, -256, 'The contract does not have enoug', 'h tokens to sell.') << 256
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'The transfer of tokens failed.'
    require tokensSold + arg1 >= tokensSold
    tokensSold += arg1
    emit Sell(msg.sender, arg1);
}

function _fallback() payable {
    require tokenPrice > 0
    require tokenPrice
    if stor0 != msg.sender:
        if stor1 != msg.sender:
            if not msg.value / tokenPrice:
                require 0 <= msg.value
                if msg.value > tokenPrice:
                    revert with 0, 
                                'The ETH sent must match the number of tokens to be bought.',
                                Mask(208, -256, 'The ETH sent must match the numb', 'er of tokens to be bought.') << 256
            else:
                require msg.value / tokenPrice
                require msg.value / tokenPrice * tokenPrice / msg.value / tokenPrice == tokenPrice
                require msg.value / tokenPrice * tokenPrice <= msg.value
                if msg.value - (msg.value / tokenPrice * tokenPrice) > tokenPrice:
                    revert with 0, 
                                'The ETH sent must match the number of tokens to be bought.',
                                Mask(208, -256, 'The ETH sent must match the numb', 'er of tokens to be bought.') << 256
            if block.timestamp < stor5:
                if tokensSold > stor8:
                    revert with 0, 
                                'All tokens allocated to the ICO Pre-Sale stage have been sold.',
                                Mask(240, -256, 'All tokens allocated to the ICO ', 'Pre-Sale stage have been sold.') << 256
            else:
                if block.timestamp < stor6:
                    if tokensSold > stor9:
                        revert with 0, 
                                    'All tokens allocated to the ICO 1st stage have been sold.',
                                    Mask(200, -256, 'All tokens allocated to the ICO ', '1st stage have been sold.') << 256
                else:
                    if block.timestamp < stor7:
                        if tokensSold > stor10:
                            revert with 0, 
                                        'All tokens allocated to the ICO 2nd stage have been sold.',
                                        Mask(200, -256, 'All tokens allocated to the ICO ', '2nd stage have been sold.') << 256
    if msg.value < stor11:
        revert with 0, 'You must buy tokens worth at least 1 ETH.', Mask(72, -256, 'You must buy tokens worth at lea', 'st 1 ETH.') << 256
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < msg.value / tokenPrice:
        revert with 0, 
                    'The contract does not have enough tokens to sell.',
                    Mask(136, -256, 'The contract does not have enoug', 'h tokens to sell.') << 256
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, msg.value / tokenPrice
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'The transfer of tokens failed.'
    require tokensSold + (msg.value / tokenPrice) >= tokensSold
    tokensSold += msg.value / tokenPrice
    emit Sell(msg.sender, msg.value / tokenPrice);
}



}
