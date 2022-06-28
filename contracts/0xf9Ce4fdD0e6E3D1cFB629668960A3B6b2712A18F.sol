contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address tokenAddress;
uint32 stor2;
address walletAddress;
uint256 stor2;
uint256 rate;
uint256 stor4;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint8 finalized;
mapping of uint8 stor9;
uint8 stor10;
address stor10;
address daiAddress; offset 8
uint32 stor11;
address moneyMarketAddress;
mapping of struct deposits;
mapping of uint256 sub_664c35ab;
uint256 deposited;
uint256 sub_ef8b7151;
mapping of struct balanceOf;
address registryProxyAddress;
address whitelistProxyAddress;
mapping of uint8 stor19;
uint256 goal;
mapping of uint8 stor21;
uint256 stor22; offset 32
uint256 totalTokens;
big480 stor22;

function sub_1aebd695(?) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function registryProxy() {
    return registryProxyAddress
}

function whitelistProxy() {
    return whitelistProxyAddress
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function weiRaised() {
    return deposited
}

function isPauser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor9[address(arg1)])
}

function closingTime() {
    return closingTime
}

function wallet() {
    return address(walletAddress)
}

function paused() {
    return bool(uint8(stor10.field_0))
}

function sub_664c35ab(?) {
    require calldata.size - 4 >= 32
    return sub_664c35ab[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)].field_0
}

function totalTokens() {
    return totalTokens
}

function sub_9d7694ad(?) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function finalized() {
    return bool(finalized)
}

function openingTime() {
    return openingTime
}

function moneyMarket() {
    return address(moneyMarketAddress)
}

function deposited() {
    return deposited
}

function sub_ef8b7151(?) {
    return sub_ef8b7151
}

function dai() {
    return daiAddress
}

function token() {
    return tokenAddress
}

function deposits(address arg1) {
    require calldata.size - 4 >= 32
    return deposits[arg1].field_0
}

function capReached() {
    return deposited >= cap
}

function goalReached() {
    return deposited >= goal
}

function totalTokensSold() {
    require rate > 0
    require rate
    return (deposited / rate)
}

function hasClosed() {
    if deposited >= cap:
        return deposited >= cap
    return (block.timestamp > closingTime)
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function renouncePauser() {
    require msg.sender
    require stor9[address(msg.sender)]
    stor9[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function unpause() {
    require msg.sender
    require stor9[address(msg.sender)]
    require uint8(stor10.field_0)
    uint8(stor10.field_0) = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor9[address(msg.sender)]
    require not uint8(stor10.field_0)
    uint8(stor10.field_0) = 1
    emit Paused(msg.sender);
}

function addPauser(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor9[address(msg.sender)]
    require arg1
    require not stor9[address(arg1)]
    stor9[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_f280d77b(?) {
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function sub_812bb2a3(?) {
    require calldata.size - 4 >= 32
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'onlyBlockimmo'
    require ext_code.size(address(moneyMarketAddress))
    call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor10.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'withdraw failed'
}

function claimRefund(address arg1) {
    require calldata.size - 4 >= 32
    require finalized
    require deposited < goal
    require not stor19[address(arg1)]
    stor19[address(arg1)] = 1
    if not arg1:
        revert with 0, 'invalid parameter(s)'
    if deposits[address(arg1)].field_0 <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if deposits[address(arg1)].field_0 > ext_call.return_data[0]:
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= deposits[address(arg1)].field_0
        require ext_code.size(address(moneyMarketAddress))
        call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor10.field_0), deposits[address(arg1)].field_0 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'withdraw failed'
    require deposits[address(arg1)].field_0 <= deposits[address(arg1)].field_0
    deposits[address(arg1)].field_0 = 0
    require deposits[address(arg1)].field_0 <= deposited
    deposited -= deposits[address(arg1)].field_0
    require ext_code.size(daiAddress) > 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, deposits[address(arg1)].field_32
    call daiAddress with:
         gas gas_remaining wei
        args deposits[address(arg1)].field_0, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), address(arg1) << 64
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[228]
    emit 0x8f6dc746: deposits[address(arg1)].field_0, arg1
}

function reverse(address arg1) {
    require calldata.size - 4 >= 32
    require not finalized
    require not stor21[address(arg1)]
    require ext_code.size(whitelistProxyAddress)
    staticcall whitelistProxyAddress.whitelist() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).hasRole(address arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 0, 64, 10, 'authorized'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    stor21[address(arg1)] = 1
    if not arg1:
        revert with 0, 'invalid parameter(s)'
    if deposits[address(arg1)].field_0 <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if deposits[address(arg1)].field_0 > ext_call.return_data[0]:
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= deposits[address(arg1)].field_0
        require ext_code.size(address(moneyMarketAddress))
        call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor10.field_0), deposits[address(arg1)].field_0 - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'withdraw failed'
    require deposits[address(arg1)].field_0 <= deposits[address(arg1)].field_0
    deposits[address(arg1)].field_0 = 0
    require deposits[address(arg1)].field_0 <= deposited
    deposited -= deposits[address(arg1)].field_0
    require ext_code.size(daiAddress) > 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, deposits[address(arg1)].field_32
    call daiAddress with:
         gas gas_remaining wei
        args deposits[address(arg1)].field_0, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), address(arg1) << 64
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[228]
    emit 0x8f6dc746: deposits[address(arg1)].field_0, arg1
}

function withdrawInterest() {
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'onlyBlockimmo'
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(moneyMarketAddress))
    staticcall address(moneyMarketAddress).getSupplyBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args this.address, daiAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require sub_ef8b7151 >= 0
    require deposited <= sub_ef8b7151 + (2 * ext_call.return_data[0])
    if sub_ef8b7151 + (2 * ext_call.return_data[0]) - deposited <= 0:
        revert with 0, 'no interest'
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_ef8b7151 + (2 * ext_call.return_data[0]) - deposited > ext_call.return_data[0]:
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= sub_ef8b7151 + (2 * ext_call.return_data[0]) - deposited
        require ext_code.size(address(moneyMarketAddress))
        call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor10.field_0), sub_ef8b7151 + ext_call.return_data[0] - deposited
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'withdraw failed'
    require ext_code.size(daiAddress) > 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, sub_ef8b7151 + (2 * ext_call.return_data[0]) - deposited) >> 32
    call daiAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, sub_ef8b7151 + (2 * ext_call.return_data[0]) - deposited) << 224, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[228]
    emit 0xfb2ffd41: (sub_ef8b7151 + (2 * ext_call.return_data[0]) - deposited), msg.sender
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    if not finalized:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x747769746864726177546f6b656e732072657175697265732074686520546f6b656e53616c6520746f206265207375636365737366756c6c792066696e616c697a65,
                    mem[230 len 30]
    if deposited < goal:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    66,
                    0x747769746864726177546f6b656e732072657175697265732074686520546f6b656e53616c6520746f206265207375636365737366756c6c792066696e616c697a65,
                    mem[230 len 30]
    require not stor21[address(arg1)]
    require rate > 0
    require rate
    require rate > 0
    require rate
    require deposited / rate <= totalTokens
    if not totalTokens - (deposited / rate):
        require deposited / rate > 0
        require deposited / rate
        require ext_code.size(tokenAddress) > 0
        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, 0 / deposited / rate) >> 32
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, 0 / deposited / rate) << 224, mem[260 len 4]
    else:
        require (totalTokens * balanceOf[address(arg1)].field_0) - (deposited / rate * balanceOf[address(arg1)].field_0) / totalTokens - (deposited / rate) == balanceOf[address(arg1)].field_0
        require deposited / rate > 0
        require deposited / rate
        require ext_code.size(tokenAddress) > 0
        mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, (totalTokens * balanceOf[address(arg1)].field_0) - (deposited / rate * balanceOf[address(arg1)].field_0) / deposited / rate) >> 32
        call tokenAddress with:
             gas gas_remaining wei
            args Mask(224, 32, (totalTokens * balanceOf[address(arg1)].field_0) - (deposited / rate * balanceOf[address(arg1)].field_0) / deposited / rate) << 224, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), address(arg1) << 64
        if deposited < cap:
            require block.timestamp > closingTime
        require balanceOf[address(arg1)].field_0 > 0
        balanceOf[address(arg1)].field_0 = 0
        require ext_code.size(tokenAddress) > 0
        mem[296 len 64] = 0, address(arg1), balanceOf[address(arg1)].field_32
        call tokenAddress with:
             gas gas_remaining wei
            args balanceOf[address(arg1)].field_0, Mask(224, 32, address(arg1), balanceOf[address(arg1)].field_32) >> 32, mem[360 len 4]
        if not return_data.size:
            require ext_call.success
            require unknown_0xa9059cbb(?????), address(arg1) << 64
        else:
            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[328]
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[228]
        if deposited < cap:
            require block.timestamp > closingTime
        require balanceOf[address(arg1)].field_0 > 0
        balanceOf[address(arg1)].field_0 = 0
        require ext_code.size(tokenAddress) > 0
        mem[ceil32(return_data.size) + 297 len 64] = 0, address(arg1), balanceOf[address(arg1)].field_32
        call tokenAddress with:
             gas gas_remaining wei
            args balanceOf[address(arg1)].field_0, Mask(224, 32, address(arg1), balanceOf[address(arg1)].field_32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
        if not return_data.size:
            require ext_call.success
            require unknown_0xa9059cbb(?????), address(arg1) << 64
        else:
            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 329]
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require ext_code.size(daiAddress)
    staticcall daiAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value:
        revert with 0, 'rounding loss'
    require rate
    if ext_call.return_data[0] % rate:
        revert with 0, 'rounding loss'
    require not stor21[address(arg1)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require ext_call.return_data[0]
    require ext_call.return_data[0] + deposited >= deposited
    require ext_call.return_data[0] + deposited <= cap
    require ext_code.size(whitelistProxyAddress)
    staticcall whitelistProxyAddress.whitelist() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).checkRole(address arg1, string arg2) with:
            gas gas_remaining wei
           args 0, 0, 64, 10, 'authorized'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] + deposits[address(arg1)].field_0 >= deposits[address(arg1)].field_0
    if ext_call.return_data[0] + deposits[address(arg1)].field_0 > 100000 * 10^18:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).hasRole(address arg1, string arg2) with:
                gas gas_remaining wei
               args 0, 0, 64, 8, 'uncapped'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require rate > 0
    require rate
    require ext_call.return_data[0] + stor4 >= stor4
    stor4 += ext_call.return_data[0]
    require (ext_call.return_data[0] / rate) + balanceOf[address(arg1)].field_0 >= balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)].field_0 += ext_call.return_data[0] / rate
    if not ext_call.return_data[0] / rate:
        revert with 0, 'invalid parameter(s)'
    require rate * ext_call.return_data[0] / rate / ext_call.return_data[0] / rate == rate
    if not arg1:
        revert with 0, 'invalid parameter(s)'
    if rate * ext_call.return_data[0] / rate <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress) > 0
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32
    call daiAddress with:
         gas gas_remaining wei
        args Mask(224, 32, rate * ext_call.return_data[0] / rate) << 480, mem[324 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
        if not uint8(stor10.field_0):
            if rate * ext_call.return_data[0] / rate:
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
            require ext_code.size(daiAddress) > 0
            mem[328 len 64] = 0, address(moneyMarketAddress), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32
            call daiAddress with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args rate * ext_call.return_data[0] / rate, Mask(224, 32, address(moneyMarketAddress), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32) >> 32, mem[392 len 4]
            if not return_data.size:
                require ext_call.success
                require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                require ext_code.size(address(moneyMarketAddress))
                call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), rate * ext_call.return_data[0] / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'supply failed'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 32, 43, 0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65, mem[439 len 21]
            else:
                mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[360]
                require ext_code.size(address(moneyMarketAddress))
                call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), rate * ext_call.return_data[0] / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'supply failed'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                43,
                                0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                                mem[ceil32(return_data.size) + 440 len 21]
            ('iszero', ('ext_call.return_data', 0, 32))
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[260]
        if not uint8(stor10.field_0):
            if rate * ext_call.return_data[0] / rate:
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
            require ext_code.size(daiAddress) > 0
            mem[ceil32(return_data.size) + 329 len 64] = 0, address(moneyMarketAddress), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32
            call daiAddress with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args rate * ext_call.return_data[0] / rate, Mask(224, 32, address(moneyMarketAddress), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32) >> 32, mem[ceil32(return_data.size) + 393 len 4]
            if not return_data.size:
                require ext_call.success
                require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                require ext_code.size(address(moneyMarketAddress))
                call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), rate * ext_call.return_data[0] / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'supply failed'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                43,
                                0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                                mem[ceil32(return_data.size) + 440 len 21]
            else:
                mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 361]
                require ext_code.size(address(moneyMarketAddress))
                call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), rate * ext_call.return_data[0] / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'supply failed'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                43,
                                0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                                mem[(2 * ceil32(return_data.size)) + 441 len 21]
            ('iszero', ('ext_call.return_data', 0, 32))
    require (rate * ext_call.return_data[0] / rate) + deposits[address(arg1)].field_0 >= deposits[address(arg1)].field_0
    deposits[address(arg1)].field_0 += rate * ext_call.return_data[0] / rate
    require (rate * ext_call.return_data[0] / rate) + deposited >= deposited
    deposited += rate * ext_call.return_data[0] / rate
    emit Deposited((rate * ext_call.return_data[0] / rate), arg1);
    emit TokensPurchased(ext_call.return_data[0], ext_call.return_data[0] / rate, msg.sender, arg1);
    call address(walletAddress) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}

function _fallback() payable {
    stor0++
    require ext_code.size(daiAddress)
    staticcall daiAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if msg.value:
        revert with 0, 'rounding loss'
    require rate
    if ext_call.return_data[0] % rate:
        revert with 0, 'rounding loss'
    require not stor21[address(msg.sender)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require ext_call.return_data[0]
    require ext_call.return_data[0] + deposited >= deposited
    require ext_call.return_data[0] + deposited <= cap
    require ext_code.size(whitelistProxyAddress)
    staticcall whitelistProxyAddress.whitelist() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).checkRole(address arg1, string arg2) with:
            gas gas_remaining wei
           args 0, uint32(msg.sender), 64, 10, 'authorized'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_call.return_data[0] + deposits[address(msg.sender)].field_0 >= deposits[address(msg.sender)].field_0
    if ext_call.return_data[0] + deposits[address(msg.sender)].field_0 > 100000 * 10^18:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).hasRole(address arg1, string arg2) with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, 8, 'uncapped'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require rate > 0
    require rate
    require ext_call.return_data[0] + stor4 >= stor4
    stor4 += ext_call.return_data[0]
    require (ext_call.return_data[0] / rate) + balanceOf[address(msg.sender)].field_0 >= balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)].field_0 += ext_call.return_data[0] / rate
    if not ext_call.return_data[0] / rate:
        revert with 0, 'invalid parameter(s)'
    require rate * ext_call.return_data[0] / rate / ext_call.return_data[0] / rate == rate
    if not msg.sender:
        revert with 0, 'invalid parameter(s)'
    if rate * ext_call.return_data[0] / rate <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress) > 0
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32
    call daiAddress with:
         gas gas_remaining wei
        args Mask(224, 32, rate * ext_call.return_data[0] / rate) << 480, mem[324 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
        if not uint8(stor10.field_0):
            if rate * ext_call.return_data[0] / rate:
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
            require ext_code.size(daiAddress) > 0
            mem[328 len 64] = 0, address(moneyMarketAddress), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32
            call daiAddress with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args rate * ext_call.return_data[0] / rate, Mask(224, 32, address(moneyMarketAddress), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32) >> 32, mem[392 len 4]
            if not return_data.size:
                require ext_call.success
                require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                require ext_code.size(address(moneyMarketAddress))
                call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), rate * ext_call.return_data[0] / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'supply failed'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 32, 43, 0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65, mem[439 len 21]
            else:
                mem[360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[360]
                require ext_code.size(address(moneyMarketAddress))
                call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), rate * ext_call.return_data[0] / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'supply failed'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                43,
                                0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                                mem[ceil32(return_data.size) + 440 len 21]
            ('iszero', ('ext_call.return_data', 0, 32))
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[260]
        if not uint8(stor10.field_0):
            if rate * ext_call.return_data[0] / rate:
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require not ext_call.return_data[0]
            require ext_code.size(daiAddress) > 0
            mem[ceil32(return_data.size) + 329 len 64] = 0, address(moneyMarketAddress), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32
            call daiAddress with:
               funct uint32(stor11)
                 gas gas_remaining wei
                args rate * ext_call.return_data[0] / rate, Mask(224, 32, address(moneyMarketAddress), Mask(224, 32, rate * ext_call.return_data[0] / rate) >> 32) >> 32, mem[ceil32(return_data.size) + 393 len 4]
            if not return_data.size:
                require ext_call.success
                require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                require ext_code.size(address(moneyMarketAddress))
                call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), rate * ext_call.return_data[0] / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'supply failed'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                43,
                                0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                                mem[ceil32(return_data.size) + 440 len 21]
            else:
                mem[ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 361]
                require ext_code.size(address(moneyMarketAddress))
                call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(stor10.field_0), rate * ext_call.return_data[0] / rate
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'supply failed'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(moneyMarketAddress)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                43,
                                0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                                mem[(2 * ceil32(return_data.size)) + 441 len 21]
            ('iszero', ('ext_call.return_data', 0, 32))
    require (rate * ext_call.return_data[0] / rate) + deposits[address(msg.sender)].field_0 >= deposits[address(msg.sender)].field_0
    deposits[address(msg.sender)].field_0 += rate * ext_call.return_data[0] / rate
    require (rate * ext_call.return_data[0] / rate) + deposited >= deposited
    deposited += rate * ext_call.return_data[0] / rate
    emit Deposited((rate * ext_call.return_data[0] / rate), msg.sender);
    emit TokensPurchased(ext_call.return_data[0], ext_call.return_data[0] / rate, msg.sender, msg.sender);
    call address(walletAddress) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}

function finalize() {
    require not finalized
    if deposited >= cap:
        finalized = 1
        require ext_code.size(registryProxyAddress)
        staticcall registryProxyAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.sender == ext_call.return_data[12 len 20]:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalTokens = ext_call.return_data[0]
            if deposited < goal:
                require ext_code.size(tokenAddress) > 0
                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 0, stor22.field_32)
                call tokenAddress with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, 0, stor22.field_0), mem[260 len 4]
                if not return_data.size:
                    require ext_call.success
                    require unknown_0xa9059cbb(?????), Mask(224, 0, stor2)
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[228]
            else:
                require ext_code.size(registryProxyAddress)
                staticcall registryProxyAddress.0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'invalid parameter(s)'
                if deposited / 100 <= 0:
                    revert with 0, 'invalid parameter(s)'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if deposited / 100 > ext_call.return_data[0]:
                    require ext_code.size(daiAddress)
                    staticcall daiAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= deposited / 100
                    require ext_code.size(address(moneyMarketAddress))
                    call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor10.field_0), (deposited / 100) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'withdraw failed'
                require (deposited / 100) + sub_664c35ab[address(ext_call.return_data[0])] >= sub_664c35ab[address(ext_call.return_data[0])]
                sub_664c35ab[address(ext_call.return_data[0])] += deposited / 100
                require (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                sub_ef8b7151 += deposited / 100
                require ext_code.size(daiAddress) > 0
                mem[196 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, deposited / 100) >> 32
                call daiAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, deposited / 100) << 224, mem[260 len 4]
                if not return_data.size:
                    require ext_call.success
                    require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                    emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                    require deposited / 100 <= deposited
                    if not address(walletAddress):
                        revert with 0, 'invalid parameter(s)'
                    if deposited - (deposited / 100) <= 0:
                        revert with 0, 'invalid parameter(s)'
                    require ext_code.size(daiAddress)
                    staticcall daiAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if deposited - (deposited / 100) > ext_call.return_data[0]:
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= deposited - (deposited / 100)
                        require ext_code.size(address(moneyMarketAddress))
                        call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'withdraw failed'
                    require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                    sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                    require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                    sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                    require ext_code.size(daiAddress) > 0
                    mem[296 len 64] = 0, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32
                    call daiAddress with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args deposited - (deposited / 100), Mask(224, 32, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32) >> 32, mem[360 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[328]
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[228]
                    emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                    require deposited / 100 <= deposited
                    if not address(walletAddress):
                        revert with 0, 'invalid parameter(s)'
                    if deposited - (deposited / 100) <= 0:
                        revert with 0, 'invalid parameter(s)'
                    require ext_code.size(daiAddress)
                    staticcall daiAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if deposited - (deposited / 100) > ext_call.return_data[0]:
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= deposited - (deposited / 100)
                        require ext_code.size(address(moneyMarketAddress))
                        call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'withdraw failed'
                    require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                    sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                    require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                    sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                    require ext_code.size(daiAddress) > 0
                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32
                    call daiAddress with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args deposited - (deposited / 100), Mask(224, 32, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 329]
                emit 0x8f6dc746: (deposited - (deposited / 100)), address(walletAddress)
        else:
            require msg.sender == address(walletAddress)
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalTokens = ext_call.return_data[0]
            if deposited < goal:
                require ext_code.size(tokenAddress) > 0
                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 0, stor22.field_32)
                call tokenAddress with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, 0, stor22.field_0), mem[260 len 4]
                if not return_data.size:
                    require ext_call.success
                    require unknown_0xa9059cbb(?????), Mask(224, 0, stor2)
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[228]
            else:
                require ext_code.size(registryProxyAddress)
                staticcall registryProxyAddress.0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'invalid parameter(s)'
                if deposited / 100 <= 0:
                    revert with 0, 'invalid parameter(s)'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if deposited / 100 <= ext_call.return_data[0]:
                    require (deposited / 100) + sub_664c35ab[address(ext_call.return_data[0])] >= sub_664c35ab[address(ext_call.return_data[0])]
                    sub_664c35ab[address(ext_call.return_data[0])] += deposited / 100
                    require (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                    sub_ef8b7151 += deposited / 100
                    require ext_code.size(daiAddress) > 0
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, deposited / 100) >> 32
                    call daiAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, deposited / 100) << 224, mem[260 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                        require deposited / 100 <= deposited
                        if not address(walletAddress):
                            revert with 0, 'invalid parameter(s)'
                        if deposited - (deposited / 100) <= 0:
                            revert with 0, 'invalid parameter(s)'
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if deposited - (deposited / 100) > ext_call.return_data[0]:
                            require ext_code.size(daiAddress)
                            staticcall daiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= deposited - (deposited / 100)
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'withdraw failed'
                        require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                        sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                        require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                        sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                        require ext_code.size(daiAddress) > 0
                        mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, deposited - (deposited / 100)) >> 32
                        call daiAddress with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(224, 32, deposited - (deposited / 100)) << 224, mem[360 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        else:
                            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[328]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[228]
                        emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                        require deposited / 100 <= deposited
                        if not address(walletAddress):
                            revert with 0, 'invalid parameter(s)'
                        if deposited - (deposited / 100) <= 0:
                            revert with 0, 'invalid parameter(s)'
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if deposited - (deposited / 100) > ext_call.return_data[0]:
                            require ext_code.size(daiAddress)
                            staticcall daiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= deposited - (deposited / 100)
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'withdraw failed'
                        require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                        sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                        require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                        sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                        require ext_code.size(daiAddress) > 0
                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, deposited - (deposited / 100)) >> 32
                        call daiAddress with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(224, 32, deposited - (deposited / 100)) << 224, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 329]
                else:
                    require ext_code.size(daiAddress)
                    staticcall daiAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= deposited / 100
                    require ext_code.size(address(moneyMarketAddress))
                    call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor10.field_0), (deposited / 100) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'withdraw failed'
                    require (deposited / 100) + sub_664c35ab[address(ext_call.return_data[0])] >= sub_664c35ab[address(ext_call.return_data[0])]
                    sub_664c35ab[address(ext_call.return_data[0])] += deposited / 100
                    require (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                    sub_ef8b7151 += deposited / 100
                    require ext_code.size(daiAddress) > 0
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, deposited / 100) >> 32
                    call daiAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, deposited / 100) << 224, mem[260 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                        require deposited / 100 <= deposited
                        if not address(walletAddress):
                            revert with 0, 'invalid parameter(s)'
                        if deposited - (deposited / 100) <= 0:
                            revert with 0, 'invalid parameter(s)'
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if deposited - (deposited / 100) > ext_call.return_data[0]:
                            require ext_code.size(daiAddress)
                            staticcall daiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= deposited - (deposited / 100)
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'withdraw failed'
                        require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                        sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                        require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                        sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                        require ext_code.size(daiAddress) > 0
                        mem[296 len 64] = 0, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32
                        call daiAddress with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args deposited - (deposited / 100), Mask(224, 32, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32) >> 32, mem[360 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        else:
                            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[328]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[228]
                        emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                        require deposited / 100 <= deposited
                        if not address(walletAddress):
                            revert with 0, 'invalid parameter(s)'
                        if deposited - (deposited / 100) <= 0:
                            revert with 0, 'invalid parameter(s)'
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if deposited - (deposited / 100) > ext_call.return_data[0]:
                            require ext_code.size(daiAddress)
                            staticcall daiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= deposited - (deposited / 100)
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'withdraw failed'
                        require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                        sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                        require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                        sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                        require ext_code.size(daiAddress) > 0
                        mem[ceil32(return_data.size) + 297 len 64] = 0, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32
                        call daiAddress with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args deposited - (deposited / 100), Mask(224, 32, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 329]
                emit 0x8f6dc746: (deposited - (deposited / 100)), address(walletAddress)
    else:
        require block.timestamp > closingTime
        finalized = 1
        require ext_code.size(registryProxyAddress)
        staticcall registryProxyAddress.0x8da5cb5b with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.sender == ext_call.return_data[12 len 20]:
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalTokens = ext_call.return_data[0]
            if deposited < goal:
                require ext_code.size(tokenAddress) > 0
                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 0, stor22.field_32)
                call tokenAddress with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, 0, stor22.field_0), mem[260 len 4]
                if not return_data.size:
                    require ext_call.success
                    require unknown_0xa9059cbb(?????), Mask(224, 0, stor2)
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[228]
            else:
                require ext_code.size(registryProxyAddress)
                staticcall registryProxyAddress.0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'invalid parameter(s)'
                if deposited / 100 <= 0:
                    revert with 0, 'invalid parameter(s)'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if deposited / 100 <= ext_call.return_data[0]:
                    require (deposited / 100) + sub_664c35ab[address(ext_call.return_data[0])] >= sub_664c35ab[address(ext_call.return_data[0])]
                    sub_664c35ab[address(ext_call.return_data[0])] += deposited / 100
                    require (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                    sub_ef8b7151 += deposited / 100
                    require ext_code.size(daiAddress) > 0
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, deposited / 100) >> 32
                    call daiAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, deposited / 100) << 224, mem[260 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                        require deposited / 100 <= deposited
                        if not address(walletAddress):
                            revert with 0, 'invalid parameter(s)'
                        if deposited - (deposited / 100) <= 0:
                            revert with 0, 'invalid parameter(s)'
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if deposited - (deposited / 100) > ext_call.return_data[0]:
                            require ext_code.size(daiAddress)
                            staticcall daiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= deposited - (deposited / 100)
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'withdraw failed'
                        require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                        sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                        require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                        sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                        require ext_code.size(daiAddress) > 0
                        mem[296 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, deposited - (deposited / 100)) >> 32
                        call daiAddress with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(224, 32, deposited - (deposited / 100)) << 224, mem[360 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        else:
                            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[328]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[228]
                        emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                        require deposited / 100 <= deposited
                        if not address(walletAddress):
                            revert with 0, 'invalid parameter(s)'
                        if deposited - (deposited / 100) <= 0:
                            revert with 0, 'invalid parameter(s)'
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if deposited - (deposited / 100) > ext_call.return_data[0]:
                            require ext_code.size(daiAddress)
                            staticcall daiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= deposited - (deposited / 100)
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'withdraw failed'
                        require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                        sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                        require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                        sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                        require ext_code.size(daiAddress) > 0
                        mem[ceil32(return_data.size) + 297 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 32, deposited - (deposited / 100)) >> 32
                        call daiAddress with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args Mask(224, 32, deposited - (deposited / 100)) << 224, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 329]
                else:
                    require ext_code.size(daiAddress)
                    staticcall daiAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= deposited / 100
                    require ext_code.size(address(moneyMarketAddress))
                    call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor10.field_0), (deposited / 100) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'withdraw failed'
                    require (deposited / 100) + sub_664c35ab[address(ext_call.return_data[0])] >= sub_664c35ab[address(ext_call.return_data[0])]
                    sub_664c35ab[address(ext_call.return_data[0])] += deposited / 100
                    require (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                    sub_ef8b7151 += deposited / 100
                    require ext_code.size(daiAddress) > 0
                    mem[196 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, deposited / 100) >> 32
                    call daiAddress with:
                         gas gas_remaining wei
                        args Mask(224, 32, deposited / 100) << 224, mem[260 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                        require deposited / 100 <= deposited
                        if not address(walletAddress):
                            revert with 0, 'invalid parameter(s)'
                        if deposited - (deposited / 100) <= 0:
                            revert with 0, 'invalid parameter(s)'
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if deposited - (deposited / 100) > ext_call.return_data[0]:
                            require ext_code.size(daiAddress)
                            staticcall daiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= deposited - (deposited / 100)
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'withdraw failed'
                        require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                        sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                        require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                        sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                        require ext_code.size(daiAddress) > 0
                        mem[296 len 64] = 0, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32
                        call daiAddress with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args deposited - (deposited / 100), Mask(224, 32, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32) >> 32, mem[360 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        else:
                            mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[328]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[228]
                        emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                        require deposited / 100 <= deposited
                        if not address(walletAddress):
                            revert with 0, 'invalid parameter(s)'
                        if deposited - (deposited / 100) <= 0:
                            revert with 0, 'invalid parameter(s)'
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if deposited - (deposited / 100) > ext_call.return_data[0]:
                            require ext_code.size(daiAddress)
                            staticcall daiAddress.0x70a08231 with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] <= deposited - (deposited / 100)
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'withdraw failed'
                        require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                        sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                        require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                        sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                        require ext_code.size(daiAddress) > 0
                        mem[ceil32(return_data.size) + 297 len 64] = 0, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32
                        call daiAddress with:
                           funct uint32(stor2)
                             gas gas_remaining wei
                            args deposited - (deposited / 100), Mask(224, 32, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                        else:
                            mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size > 0:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 329]
                emit 0x8f6dc746: (deposited - (deposited / 100)), address(walletAddress)
        else:
            require msg.sender == address(walletAddress)
            require ext_code.size(tokenAddress)
            staticcall tokenAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            totalTokens = ext_call.return_data[0]
            if deposited < goal:
                require ext_code.size(tokenAddress) > 0
                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor2), uint32(stor2), Mask(224, 0, stor22.field_32)
                call tokenAddress with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, 0, stor22.field_0), mem[260 len 4]
                if not return_data.size:
                    require ext_call.success
                    require unknown_0xa9059cbb(?????), Mask(224, 0, stor2)
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[228]
            else:
                require ext_code.size(registryProxyAddress)
                staticcall registryProxyAddress.0x8da5cb5b with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[12 len 20]:
                    revert with 0, 'invalid parameter(s)'
                if deposited / 100 <= 0:
                    revert with 0, 'invalid parameter(s)'
                require ext_code.size(daiAddress)
                staticcall daiAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if deposited / 100 > ext_call.return_data[0]:
                    require ext_code.size(daiAddress)
                    staticcall daiAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] <= deposited / 100
                    require ext_code.size(address(moneyMarketAddress))
                    call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor10.field_0), (deposited / 100) - ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'withdraw failed'
                require (deposited / 100) + sub_664c35ab[address(ext_call.return_data[0])] >= sub_664c35ab[address(ext_call.return_data[0])]
                sub_664c35ab[address(ext_call.return_data[0])] += deposited / 100
                require (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                sub_ef8b7151 += deposited / 100
                require ext_code.size(daiAddress) > 0
                mem[196 len 64] = unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64, 0, Mask(224, 32, deposited / 100) >> 32
                call daiAddress with:
                     gas gas_remaining wei
                    args Mask(224, 32, deposited / 100) << 224, mem[260 len 4]
                if not return_data.size:
                    require ext_call.success
                    require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                    emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                    require deposited / 100 <= deposited
                    if not address(walletAddress):
                        revert with 0, 'invalid parameter(s)'
                    if deposited - (deposited / 100) <= 0:
                        revert with 0, 'invalid parameter(s)'
                    require ext_code.size(daiAddress)
                    staticcall daiAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if deposited - (deposited / 100) > ext_call.return_data[0]:
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= deposited - (deposited / 100)
                        require ext_code.size(address(moneyMarketAddress))
                        call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'withdraw failed'
                    require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                    sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                    require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                    sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                    require ext_code.size(daiAddress) > 0
                    mem[296 len 64] = 0, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32
                    call daiAddress with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args deposited - (deposited / 100), Mask(224, 32, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32) >> 32, mem[360 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                    else:
                        mem[328 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[328]
                else:
                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[228]
                    emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
                    require deposited / 100 <= deposited
                    if not address(walletAddress):
                        revert with 0, 'invalid parameter(s)'
                    if deposited - (deposited / 100) <= 0:
                        revert with 0, 'invalid parameter(s)'
                    require ext_code.size(daiAddress)
                    staticcall daiAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if deposited - (deposited / 100) > ext_call.return_data[0]:
                        require ext_code.size(daiAddress)
                        staticcall daiAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] <= deposited - (deposited / 100)
                        require ext_code.size(address(moneyMarketAddress))
                        call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor10.field_0), deposited - (deposited / 100) - ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'withdraw failed'
                    require deposited - (deposited / 100) + sub_664c35ab[address(stor2)] >= sub_664c35ab[address(stor2)]
                    sub_664c35ab[address(stor2)] = deposited - (deposited / 100) + sub_664c35ab[address(stor2)]
                    require deposited - (deposited / 100) + sub_ef8b7151 >= sub_ef8b7151
                    sub_ef8b7151 = deposited - (deposited / 100) + sub_ef8b7151
                    require ext_code.size(daiAddress) > 0
                    mem[ceil32(return_data.size) + 297 len 64] = 0, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32
                    call daiAddress with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args deposited - (deposited / 100), Mask(224, 32, address(walletAddress), Mask(224, 32, deposited - (deposited / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 361 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0xa9059cbb(?????), address(ext_call.return_data[0]) << 64
                    else:
                        mem[ceil32(return_data.size) + 329 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size > 0:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 329]
                emit 0x8f6dc746: (deposited - (deposited / 100)), address(walletAddress)
    emit CrowdsaleFinalized()
}



}
