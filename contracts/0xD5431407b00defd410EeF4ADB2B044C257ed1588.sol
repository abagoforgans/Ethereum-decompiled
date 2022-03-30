contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor1 = 1492511737
    stor2 = 1495190137
    stor3 = 33333333333333333
    stor0 = msg.sender
    return code.data[76 len 1234]
}



// =====================  Runtime code  =====================


address owner;
uint256 startTime;
uint256 closeTime;
uint256 price;
address tokenAddress;

function closeTime() {
    return closeTime
}

function startTime() {
    return startTime
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

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function setToken(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function withdrawEther() payable {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    return bool(ext_call.success)
}

function purchaseTokens() payable {
    require block.timestamp >= startTime
    require block.timestamp <= closeTime
    require msg.value
    if block.timestamp < startTime + (24 * 3600):
        if not msg.value:
            if 8 * price / 10:
                if ext_code.size(tokenAddress):
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 50 wei
                        args owner, msg.sender, 10^18 * msg.value / 8 * price / 10
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            return (10^18 * msg.value / 8 * price / 10)
        else:
            if 10^18 * msg.value / msg.value == 10^18:
                if 8 * price / 10:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 50 wei
                            args owner, msg.sender, 10^18 * msg.value / 8 * price / 10
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                return (10^18 * msg.value / 8 * price / 10)
    else:
        if block.timestamp < startTime + (48 * 24 * 3600):
            if not msg.value:
                if 9 * price / 10:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 50 wei
                            args owner, msg.sender, 10^18 * msg.value / 9 * price / 10
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                return (10^18 * msg.value / 9 * price / 10)
            else:
                if 10^18 * msg.value / msg.value == 10^18:
                    if 9 * price / 10:
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 50 wei
                                args owner, msg.sender, 10^18 * msg.value / 9 * price / 10
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return (10^18 * msg.value / 9 * price / 10)
        else:
            if block.timestamp >= startTime + (288 * 24 * 3600):
                if not msg.value:
                    if price:
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 50 wei
                                args owner, msg.sender, 10^18 * msg.value / price
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return (10^18 * msg.value / price)
                else:
                    if 10^18 * msg.value / msg.value == 10^18:
                        if price:
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 50 wei
                                    args owner, msg.sender, 10^18 * msg.value / price
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return (10^18 * msg.value / price)
            else:
                if not msg.value:
                    if price - ((288 * 24 * 3600 * price) + (startTime * price) - (block.timestamp * price) / 2400 * 24 * 3600):
                        if ext_code.size(tokenAddress):
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 50 wei
                                args owner, msg.sender, 10^18 * msg.value / price - ((288 * 24 * 3600 * price) + (startTime * price) - (block.timestamp * price) / 2400 * 24 * 3600)
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return (10^18 * msg.value / price - ((288 * 24 * 3600 * price) + (startTime * price) - (block.timestamp * price) / 2400 * 24 * 3600))
                else:
                    if 10^18 * msg.value / msg.value == 10^18:
                        if price - ((288 * 24 * 3600 * price) + (startTime * price) - (block.timestamp * price) / 2400 * 24 * 3600):
                            if ext_code.size(tokenAddress):
                                call tokenAddress.0x23b872dd with:
                                     gas gas_remaining - 50 wei
                                    args owner, msg.sender, 10^18 * msg.value / price - ((288 * 24 * 3600 * price) + (startTime * price) - (block.timestamp * price) / 2400 * 24 * 3600)
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return (10^18 * msg.value / price - ((288 * 24 * 3600 * price) + (startTime * price) - (block.timestamp * price) / 2400 * 24 * 3600))
    revert 
}



}
