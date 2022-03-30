contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 1239]
}



// =====================  Runtime code  =====================


const closeTime = 1495809000

const startTime = 1493130600

const price = 33333333333333333


address owner;
address tokenAddress;

function owner() {
    return owner
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
    require block.timestamp >= 1493130600
    require block.timestamp <= 1495809000
    require msg.value
    if block.timestamp < 1493217000:
        if not msg.value:
            if ext_code.size(tokenAddress):
                call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 50 wei
                    args owner, msg.sender, 10^18 * msg.value / 26666666666666666
                if ext_call.success:
                    if ext_call.return_data[0]:
                        return (10^18 * msg.value / 26666666666666666)
        else:
            if 10^18 * msg.value / msg.value == 10^18:
                if ext_code.size(tokenAddress):
                    call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 50 wei
                        args owner, msg.sender, 10^18 * msg.value / 26666666666666666
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            return (10^18 * msg.value / 26666666666666666)
    else:
        if block.timestamp < 1493303400:
            if not msg.value:
                if ext_code.size(tokenAddress):
                    call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                         gas gas_remaining - 50 wei
                        args owner, msg.sender, 10^18 * msg.value / 29999999999999999
                    if ext_call.success:
                        if ext_call.return_data[0]:
                            return (10^18 * msg.value / 29999999999999999)
            else:
                if 10^18 * msg.value / msg.value == 10^18:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 50 wei
                            args owner, msg.sender, 10^18 * msg.value / 29999999999999999
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                return (10^18 * msg.value / 29999999999999999)
        else:
            if block.timestamp >= 1494167400:
                if not msg.value:
                    if ext_code.size(tokenAddress):
                        call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 50 wei
                            args owner, msg.sender, 10^18 * msg.value / 33333333333333333
                        if ext_call.success:
                            if ext_call.return_data[0]:
                                return (10^18 * msg.value / 33333333333333333)
                else:
                    if 10^18 * msg.value / msg.value == 10^18:
                        if ext_code.size(tokenAddress):
                            call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining - 50 wei
                                args owner, msg.sender, 10^18 * msg.value / 33333333333333333
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return (10^18 * msg.value / 33333333333333333)
            else:
                if not msg.value:
                    if -((-33333333333333333 * block.timestamp) + 49805579999999999501944200 / 2400 * 24 * 3600) + 33333333333333333:
                        if ext_code.size(tokenAddress):
                            call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining - 50 wei
                                args owner, msg.sender, 10^18 * msg.value / -((-33333333333333333 * block.timestamp) + 49805579999999999501944200 / 2400 * 24 * 3600) + 33333333333333333
                            if ext_call.success:
                                if ext_call.return_data[0]:
                                    return (10^18 * msg.value / -((-33333333333333333 * block.timestamp) + 49805579999999999501944200 / 2400 * 24 * 3600) + 33333333333333333)
                else:
                    if 10^18 * msg.value / msg.value == 10^18:
                        if -((-33333333333333333 * block.timestamp) + 49805579999999999501944200 / 2400 * 24 * 3600) + 33333333333333333:
                            if ext_code.size(tokenAddress):
                                call tokenAddress.transferFrom(address rg1, address rg2, uint256 rg3) with:
                                     gas gas_remaining - 50 wei
                                    args owner, msg.sender, 10^18 * msg.value / -((-33333333333333333 * block.timestamp) + 49805579999999999501944200 / 2400 * 24 * 3600) + 33333333333333333
                                if ext_call.success:
                                    if ext_call.return_data[0]:
                                        return (10^18 * msg.value / -((-33333333333333333 * block.timestamp) + 49805579999999999501944200 / 2400 * 24 * 3600) + 33333333333333333)
    revert 
}



}
