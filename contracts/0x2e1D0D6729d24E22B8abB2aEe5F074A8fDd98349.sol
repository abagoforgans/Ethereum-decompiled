contract main {




// =====================  Runtime code  =====================


const sub_971a19b4(?) = 0x3fda67f7583380e67ef93072294a7fac882fd7e7

const WHITELIST_PROXY_ADDRESS = 0x7223b032180cdb06be7a3d634b1e10032111f367

const DAI_ADDRESS = 0xb4272071ecadd69d933adcd19ca99fe80664fc08

const LAND_REGISTRY_PROXY_ADDRESS = 0xe72ad2a335ae18e6c7cdb6daeb64b0330883cd56


uint256 stor0;
address tokenAddress;
address walletAddress;
uint256 rate;
uint256 stor4;
uint256 cap;
uint256 openingTime;
uint256 closingTime;
uint8 stor8;
mapping of uint8 stor9;
uint8 stor10;
address daiAddress; offset 8
address moneyMarketAddress;
mapping of uint256 deposits;
mapping of uint256 sub_664c35ab;
uint256 deposited;
uint256 sub_ef8b7151;
mapping of uint256 balanceOf;
address registryProxyAddress;
address whitelistProxyAddress;
mapping of uint8 stor19;
uint256 goal;
mapping of uint8 stor21;
uint256 totalTokens;

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
    return walletAddress
}

function paused() {
    return bool(stor10)
}

function sub_664c35ab(?) {
    require calldata.size - 4 >= 32
    return sub_664c35ab[arg1]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function totalTokens() {
    return totalTokens
}

function sub_9d7694ad(?) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function finalized() {
    return bool(stor8)
}

function openingTime() {
    return openingTime
}

function moneyMarket() {
    return moneyMarketAddress
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
    return deposits[arg1]
}

function capReached() {
    return deposited >= cap
}

function goalReached() {
    return deposited >= goal
}

function hasClosed() {
    return (block.timestamp > closingTime)
}

function totalTokensSold() {
    require rate > 0
    require rate
    return (deposited / rate)
}

function isOpen() {
    if block.timestamp < openingTime:
        return block.timestamp >= openingTime
    return block.timestamp <= closingTime
}

function unpause() {
    require msg.sender
    require stor9[address(msg.sender)]
    require stor10
    stor10 = 0
    emit Unpaused(msg.sender);
}

function pause() {
    require msg.sender
    require stor9[address(msg.sender)]
    require not stor10
    stor10 = 1
    emit Paused(msg.sender);
}

function renouncePauser() {
    require msg.sender
    require stor9[address(msg.sender)]
    stor9[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
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

function claimRefund(address arg1) {
    require calldata.size - 4 >= 32
    require stor8
    require deposited < goal
    require not stor19[address(arg1)]
    stor19[address(arg1)] = 1
    if not arg1:
        revert with 0, 'invalid parameter(s)'
    if deposits[address(arg1)] <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if deposits[address(arg1)] > ext_call.return_data[0]:
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= deposits[address(arg1)]
        require ext_code.size(moneyMarketAddress)
        call moneyMarketAddress.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, deposits[address(arg1)] - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'withdraw failed'
    require deposits[address(arg1)] <= deposits[address(arg1)]
    deposits[address(arg1)] = 0
    require deposits[address(arg1)] <= deposited
    deposited -= deposits[address(arg1)]
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), deposits[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x8f6dc746: deposits[address(arg1)], arg1
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
    require ext_code.size(moneyMarketAddress)
    staticcall moneyMarketAddress.getSupplyBalance(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), 0xb4272071ecadd69d933adcd19ca99fe80664fc08
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require sub_ef8b7151 >= 0
    require deposited <= (2 * ext_call.return_data[0]) + sub_ef8b7151
    if (2 * ext_call.return_data[0]) + sub_ef8b7151 - deposited <= 0:
        revert with 0, 'no interest'
    require ext_code.size(moneyMarketAddress)
    call moneyMarketAddress.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, (2 * ext_call.return_data[0]) + sub_ef8b7151 - deposited
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'withdraw failed'
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, (2 * ext_call.return_data[0]) + sub_ef8b7151 - deposited
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0xfb2ffd41: ((2 * ext_call.return_data[0]) + sub_ef8b7151 - deposited), msg.sender
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    if not stor8:
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
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), 0 / deposited / rate
    else:
        require totalTokens - (deposited / rate)
        require (totalTokens * balanceOf[address(arg1)]) - (deposited / rate * balanceOf[address(arg1)]) / totalTokens - (deposited / rate) == balanceOf[address(arg1)]
        require deposited / rate > 0
        require deposited / rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (totalTokens * balanceOf[address(arg1)]) - (deposited / rate * balanceOf[address(arg1)]) / deposited / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require block.timestamp > closingTime
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function reverse(address arg1) {
    require calldata.size - 4 >= 32
    require not stor8
    require not stor21[address(arg1)]
    require ext_code.size(whitelistProxyAddress)
    staticcall whitelistProxyAddress.whitelist() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x217fe6c6 with:
            gas gas_remaining wei
           args 0, 0, 64, 10, 'authorized'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    stor21[address(arg1)] = 1
    if not arg1:
        revert with 0, 'invalid parameter(s)'
    if deposits[address(arg1)] <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if deposits[address(arg1)] > ext_call.return_data[0]:
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= deposits[address(arg1)]
        require ext_code.size(moneyMarketAddress)
        call moneyMarketAddress.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, deposits[address(arg1)] - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'withdraw failed'
    require deposits[address(arg1)] <= deposits[address(arg1)]
    deposits[address(arg1)] = 0
    require deposits[address(arg1)] <= deposited
    deposited -= deposits[address(arg1)]
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), deposits[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x8f6dc746: deposits[address(arg1)], arg1
}

function finalize() {
    require not stor8
    require block.timestamp > closingTime
    stor8 = 1
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        require msg.sender == walletAddress
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    totalTokens = ext_call.return_data[0]
    if deposited < goal:
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args walletAddress, totalTokens
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
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
            require ext_code.size(moneyMarketAddress)
            call moneyMarketAddress.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, (deposited / 100) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'withdraw failed'
        require sub_664c35ab[address(ext_call.return_data[0])] + (deposited / 100) >= sub_664c35ab[address(ext_call.return_data[0])]
        sub_664c35ab[address(ext_call.return_data[0])] += deposited / 100
        require sub_ef8b7151 + (deposited / 100) >= sub_ef8b7151
        sub_ef8b7151 += deposited / 100
        require ext_code.size(daiAddress)
        call daiAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), deposited / 100
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x8f6dc746: (deposited / 100), address(ext_call.return_data[0])
        require deposited / 100 <= deposited
        if not walletAddress:
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
            require ext_code.size(moneyMarketAddress)
            call moneyMarketAddress.withdraw(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, deposited - (deposited / 100) - ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'withdraw failed'
        require sub_664c35ab[stor2] + deposited - (deposited / 100) >= sub_664c35ab[stor2]
        sub_664c35ab[stor2] = sub_664c35ab[stor2] + deposited - (deposited / 100)
        require sub_ef8b7151 + deposited - (deposited / 100) >= sub_ef8b7151
        sub_ef8b7151 = sub_ef8b7151 + deposited - (deposited / 100)
        require ext_code.size(daiAddress)
        call daiAddress.0xa9059cbb with:
             gas gas_remaining wei
            args walletAddress, deposited - (deposited / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x8f6dc746: (deposited - (deposited / 100)), walletAddress
    emit CrowdsaleFinalized()
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
    require rate
    if ext_call.return_data[0] % rate:
        revert with 0, 'rounding loss'
    require not stor21[address(arg1)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require arg1
    require ext_call.return_data[0]
    require deposited + ext_call.return_data[0] >= deposited
    require deposited + ext_call.return_data[0] <= cap
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
    require deposits[address(arg1)] + ext_call.return_data[0] >= deposits[address(arg1)]
    if deposits[address(arg1)] + ext_call.return_data[0] <= 100000 * 10^18:
        require rate > 0
        require rate
        require stor4 + ext_call.return_data[0] >= stor4
        stor4 += ext_call.return_data[0]
        require balanceOf[address(arg1)] + (ext_call.return_data[0] / rate) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += ext_call.return_data[0] / rate
        if not ext_call.return_data[0] / rate:
            revert with 0, 'invalid parameter(s)'
        require ext_call.return_data[0] / rate
        require ext_call.return_data[0] / rate * rate / ext_call.return_data[0] / rate == rate
        if not arg1:
            revert with 0, 'invalid parameter(s)'
        if ext_call.return_data[0] / rate * rate <= 0:
            revert with 0, 'invalid parameter(s)'
        require ext_code.size(daiAddress)
        call daiAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0] / rate * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not stor10:
            require ext_code.size(daiAddress)
            staticcall daiAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x3fda67f7583380e67ef93072294a7fac882fd7e7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dnon-zero initial moneyMarket allowancauthorized'
            require ext_code.size(daiAddress)
            call daiAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x3fda67f7583380e67ef93072294a7fac882fd7e7, ext_call.return_data[0] / rate * rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'approving moneyMarket failed'
            require ext_code.size(moneyMarketAddress)
            call moneyMarketAddress.supply(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, ext_call.return_data[0] / rate * rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'supply failed'
            require ext_code.size(daiAddress)
            staticcall daiAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x3fda67f7583380e67ef93072294a7fac882fd7e7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                            Mask(168, 0, 'authorized')
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x217fe6c6 with:
                gas gas_remaining wei
               args 0, 0, 64, 8, 'uncapped'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require rate > 0
        require rate
        require stor4 + ext_call.return_data[0] >= stor4
        stor4 += ext_call.return_data[0]
        require balanceOf[address(arg1)] + (ext_call.return_data[0] / rate) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += ext_call.return_data[0] / rate
        if not ext_call.return_data[0] / rate:
            revert with 0, 'invalid parameter(s)'
        require ext_call.return_data[0] / rate
        require ext_call.return_data[0] / rate * rate / ext_call.return_data[0] / rate == rate
        if not arg1:
            revert with 0, 'invalid parameter(s)'
        if ext_call.return_data[0] / rate * rate <= 0:
            revert with 0, 'invalid parameter(s)'
        require ext_code.size(daiAddress)
        call daiAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0] / rate * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not stor10:
            require ext_code.size(daiAddress)
            staticcall daiAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x3fda67f7583380e67ef93072294a7fac882fd7e7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dnon-zero initial moneyMarket allowancuncapped'
            require ext_code.size(daiAddress)
            call daiAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x3fda67f7583380e67ef93072294a7fac882fd7e7, ext_call.return_data[0] / rate * rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'approving moneyMarket failed'
            require ext_code.size(moneyMarketAddress)
            call moneyMarketAddress.supply(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, ext_call.return_data[0] / rate * rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'supply failed'
            require ext_code.size(daiAddress)
            staticcall daiAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x3fda67f7583380e67ef93072294a7fac882fd7e7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                            Mask(168, 0, 'uncapped')
    require deposits[address(arg1)] + (ext_call.return_data[0] / rate * rate) >= deposits[address(arg1)]
    deposits[address(arg1)] += ext_call.return_data[0] / rate * rate
    require deposited + (ext_call.return_data[0] / rate * rate) >= deposited
    deposited += ext_call.return_data[0] / rate * rate
    emit Deposited((ext_call.return_data[0] / rate * rate), arg1);
    emit TokensPurchased(ext_call.return_data[0], ext_call.return_data[0] / rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
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
    require rate
    if ext_call.return_data[0] % rate:
        revert with 0, 'rounding loss'
    require not stor21[address(msg.sender)]
    require block.timestamp >= openingTime
    require block.timestamp <= closingTime
    require msg.sender
    require ext_call.return_data[0]
    require deposited + ext_call.return_data[0] >= deposited
    require deposited + ext_call.return_data[0] <= cap
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
    require deposits[address(msg.sender)] + ext_call.return_data[0] >= deposits[address(msg.sender)]
    if deposits[address(msg.sender)] + ext_call.return_data[0] <= 100000 * 10^18:
        require rate > 0
        require rate
        require stor4 + ext_call.return_data[0] >= stor4
        stor4 += ext_call.return_data[0]
        require balanceOf[address(msg.sender)] + (ext_call.return_data[0] / rate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += ext_call.return_data[0] / rate
        if not ext_call.return_data[0] / rate:
            revert with 0, 'invalid parameter(s)'
        require ext_call.return_data[0] / rate
        require ext_call.return_data[0] / rate * rate / ext_call.return_data[0] / rate == rate
        if not msg.sender:
            revert with 0, 'invalid parameter(s)'
        if ext_call.return_data[0] / rate * rate <= 0:
            revert with 0, 'invalid parameter(s)'
        require ext_code.size(daiAddress)
        call daiAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0] / rate * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not stor10:
            require ext_code.size(daiAddress)
            staticcall daiAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x3fda67f7583380e67ef93072294a7fac882fd7e7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dnon-zero initial moneyMarket allowancauthorized'
            require ext_code.size(daiAddress)
            call daiAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x3fda67f7583380e67ef93072294a7fac882fd7e7, ext_call.return_data[0] / rate * rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'approving moneyMarket failed'
            require ext_code.size(moneyMarketAddress)
            call moneyMarketAddress.supply(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, ext_call.return_data[0] / rate * rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'supply failed'
            require ext_code.size(daiAddress)
            staticcall daiAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x3fda67f7583380e67ef93072294a7fac882fd7e7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                            Mask(168, 0, 'authorized')
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).0x217fe6c6 with:
                gas gas_remaining wei
               args 0, uint32(msg.sender), 64, 8, 'uncapped'
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require rate > 0
        require rate
        require stor4 + ext_call.return_data[0] >= stor4
        stor4 += ext_call.return_data[0]
        require balanceOf[address(msg.sender)] + (ext_call.return_data[0] / rate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += ext_call.return_data[0] / rate
        if not ext_call.return_data[0] / rate:
            revert with 0, 'invalid parameter(s)'
        require ext_call.return_data[0] / rate
        require ext_call.return_data[0] / rate * rate / ext_call.return_data[0] / rate == rate
        if not msg.sender:
            revert with 0, 'invalid parameter(s)'
        if ext_call.return_data[0] / rate * rate <= 0:
            revert with 0, 'invalid parameter(s)'
        require ext_code.size(daiAddress)
        call daiAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), ext_call.return_data[0] / rate * rate
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        if not stor10:
            require ext_code.size(daiAddress)
            staticcall daiAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x3fda67f7583380e67ef93072294a7fac882fd7e7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'dnon-zero initial moneyMarket allowancuncapped'
            require ext_code.size(daiAddress)
            call daiAddress.approve(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0x3fda67f7583380e67ef93072294a7fac882fd7e7, ext_call.return_data[0] / rate * rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'approving moneyMarket failed'
            require ext_code.size(moneyMarketAddress)
            call moneyMarketAddress.supply(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, ext_call.return_data[0] / rate * rate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'supply failed'
            require ext_code.size(daiAddress)
            staticcall daiAddress.0xdd62ed3e with:
                    gas gas_remaining wei
                   args address(this.address), 0x3fda67f7583380e67ef93072294a7fac882fd7e7
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            43,
                            0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                            Mask(168, 0, 'uncapped')
    require deposits[address(msg.sender)] + (ext_call.return_data[0] / rate * rate) >= deposits[address(msg.sender)]
    deposits[address(msg.sender)] += ext_call.return_data[0] / rate * rate
    require deposited + (ext_call.return_data[0] / rate * rate) >= deposited
    deposited += ext_call.return_data[0] / rate * rate
    emit Deposited((ext_call.return_data[0] / rate * rate), msg.sender);
    emit TokensPurchased(ext_call.return_data[0], ext_call.return_data[0] / rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 == stor0
}



}
