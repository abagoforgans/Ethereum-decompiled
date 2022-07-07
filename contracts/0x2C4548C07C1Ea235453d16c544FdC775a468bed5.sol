contract main {




// =====================  Runtime code  =====================


#
#  - depositDividends()
#
const sub_4c429592(?) = 100000000000000 * 10^18

const NUM_TOKENS = 10^6


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor3;
uint8 stor4;
address stor4;
address daiAddress; offset 8
address moneyMarketAddress;
mapping of uint256 deposits;
mapping of uint256 sub_664c35ab;
uint256 deposited;
uint256 sub_ef8b7151;
uint256 pointsPerToken;
mapping of uint256 credits;
mapping of uint256 lastPointsPerToken;
array of struct name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address registryProxyAddress;
address whitelistProxyAddress;

function name() payable {
    return name[0 len name.length].field_0
}

function totalSupply() payable {
    return totalSupply
}

function registryProxy() payable {
    return registryProxyAddress
}

function whitelistProxy() payable {
    return whitelistProxyAddress
}

function decimals() payable {
    return decimals
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor3[address(arg1)])
}

function pointsPerToken() payable {
    return pointsPerToken
}

function paused() payable {
    return bool(uint8(stor4.field_0))
}

function sub_664c35ab(?) payable {
    require calldata.size - 4 >= 32
    return sub_664c35ab[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_87b95404(?) payable {
    return balanceOf[address(this.address)]
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function lastPointsPerToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastPointsPerToken[arg1]
}

function moneyMarket() payable {
    return moneyMarketAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function deposited() payable {
    return deposited
}

function sub_ef8b7151(?) payable {
    return sub_ef8b7151
}

function dai() payable {
    return daiAddress
}

function deposits(address arg1) payable {
    require calldata.size - 4 >= 32
    return deposits[arg1]
}

function credits(address arg1) payable {
    require calldata.size - 4 >= 32
    return credits[arg1]
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function renouncePauser() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function unpause() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    require uint8(stor4.field_0)
    uint8(stor4.field_0) = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    require not uint8(stor4.field_0)
    uint8(stor4.field_0) = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor3[address(msg.sender)]
    require arg1
    require not stor3[address(arg1)]
    stor3[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function sub_f280d77b(?) payable {
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function sub_812bb2a3(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'onlyBlockimmo'
    require ext_code.size(moneyMarketAddress)
    call moneyMarketAddress.withdraw(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(stor4.field_0), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'withdraw failed'
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.landRegistry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getProperty(string arg1) with:
            gas gas_remaining wei
           args Array(len=name.length, data=mem[128 len name.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'invalid TokenizedProperty'
    require lastPointsPerToken[address(msg.sender)] <= pointsPerToken
    if not balanceOf[address(msg.sender)]:
        require credits[address(msg.sender)] >= credits[address(msg.sender)]
    else:
        require (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == pointsPerToken - lastPointsPerToken[address(msg.sender)]
        require (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) + credits[address(msg.sender)] >= credits[address(msg.sender)]
        if (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) + credits[address(msg.sender)] != credits[address(msg.sender)]:
            credits[address(msg.sender)] = (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) + credits[address(msg.sender)]
    if lastPointsPerToken[address(msg.sender)] != pointsPerToken:
        lastPointsPerToken[address(msg.sender)] = pointsPerToken
    require msg.sender
    require arg1 <= totalSupply
    totalSupply -= arg1
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    emit Transfer(arg1, msg.sender, 0);
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.landRegistry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getProperty(string arg1) with:
            gas gas_remaining wei
           args Array(len=name.length, data=mem[128 len name.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'invalid TokenizedProperty'
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != msg.sender:
        revert with 0, 'onlyBlockimmo'
    require lastPointsPerToken[address(arg1)] <= pointsPerToken
    if not balanceOf[address(arg1)]:
        require credits[address(arg1)] >= credits[address(arg1)]
    else:
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == pointsPerToken - lastPointsPerToken[address(arg1)]
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)] >= credits[address(arg1)]
        if (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)] != credits[address(arg1)]:
            credits[address(arg1)] = (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)]
    if lastPointsPerToken[address(arg1)] != pointsPerToken:
        lastPointsPerToken[address(arg1)] = pointsPerToken
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function withdrawInterest() payable {
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
        require ext_code.size(moneyMarketAddress)
        call moneyMarketAddress.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor4.field_0), sub_ef8b7151 + ext_call.return_data[0] - deposited
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

function sub_8c15f82c(?) payable {
    require calldata.size - 4 >= 32
    require lastPointsPerToken[address(arg1)] <= pointsPerToken
    if not balanceOf[address(arg1)]:
        require credits[address(arg1)] >= credits[address(arg1)]
    else:
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == pointsPerToken - lastPointsPerToken[address(arg1)]
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)] >= credits[address(arg1)]
        if (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)] != credits[address(arg1)]:
            credits[address(arg1)] = (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)]
    if lastPointsPerToken[address(arg1)] != pointsPerToken:
        lastPointsPerToken[address(arg1)] = pointsPerToken
    credits[address(arg1)] = 0
    if not arg1:
        revert with 0, 'invalid parameter(s)'
    if credits[address(arg1)] / 100000000000000 * 10^18 <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if credits[address(arg1)] / 100000000000000 * 10^18 > ext_call.return_data[0]:
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= credits[address(arg1)] / 100000000000000 * 10^18
        require ext_code.size(moneyMarketAddress)
        call moneyMarketAddress.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor4.field_0), (credits[address(arg1)] / 100000000000000 * 10^18) - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'withdraw failed'
    require (credits[address(arg1)] / 100000000000000 * 10^18) + sub_664c35ab[address(arg1)] >= sub_664c35ab[address(arg1)]
    sub_664c35ab[address(arg1)] += credits[address(arg1)] / 100000000000000 * 10^18
    require (credits[address(arg1)] / 100000000000000 * 10^18) + sub_ef8b7151 >= sub_ef8b7151
    sub_ef8b7151 += credits[address(arg1)] / 100000000000000 * 10^18
    require ext_code.size(daiAddress) > 0
    mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, credits[address(arg1)] / 100000000000000 * 10^18) >> 32
    call daiAddress with:
         gas gas_remaining wei
        args Mask(224, 32, credits[address(arg1)] / 100000000000000 * 10^18) << 224, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), address(arg1) << 64
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[228]
    emit 0x8f6dc746: (credits[address(arg1)] / 100000000000000 * 10^18), arg1
    emit DividendsCollected((credits[address(arg1)] / 100000000000000 * 10^18), arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.landRegistry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getProperty(string arg1) with:
            gas gas_remaining wei
           args Array(len=name.length, data=mem[128 len name.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'invalid TokenizedProperty'
    require ext_code.size(whitelistProxyAddress)
    staticcall whitelistProxyAddress.whitelist() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).checkRole(address arg1, string arg2) with:
            gas gas_remaining wei
           args address(arg1), Array(len=10, data='authorized')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require lastPointsPerToken[address(msg.sender)] <= pointsPerToken
    if not balanceOf[address(msg.sender)]:
        require credits[address(msg.sender)] >= credits[address(msg.sender)]
    else:
        require (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == pointsPerToken - lastPointsPerToken[address(msg.sender)]
        require (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) + credits[address(msg.sender)] >= credits[address(msg.sender)]
        if (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) + credits[address(msg.sender)] != credits[address(msg.sender)]:
            credits[address(msg.sender)] = (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) + credits[address(msg.sender)]
    if lastPointsPerToken[address(msg.sender)] != pointsPerToken:
        lastPointsPerToken[address(msg.sender)] = pointsPerToken
    require lastPointsPerToken[address(arg1)] <= pointsPerToken
    if not balanceOf[address(arg1)]:
        require credits[address(arg1)] >= credits[address(arg1)]
    else:
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == pointsPerToken - lastPointsPerToken[address(arg1)]
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)] >= credits[address(arg1)]
        if (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)] != credits[address(arg1)]:
            credits[address(arg1)] = (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)]
    if lastPointsPerToken[address(arg1)] != pointsPerToken:
        lastPointsPerToken[address(arg1)] = pointsPerToken
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.landRegistry() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = uint256(name.field_0)
    idx = 128
    s = 0
    while name.length + 96 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getProperty(string arg1) with:
            gas gas_remaining wei
           args Array(len=name.length, data=mem[128 len name.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'invalid TokenizedProperty'
    require ext_code.size(whitelistProxyAddress)
    staticcall whitelistProxyAddress.whitelist() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).checkRole(address arg1, string arg2) with:
            gas gas_remaining wei
           args address(arg2), Array(len=10, data='authorized')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require lastPointsPerToken[address(arg1)] <= pointsPerToken
    if not balanceOf[address(arg1)]:
        require credits[address(arg1)] >= credits[address(arg1)]
    else:
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == pointsPerToken - lastPointsPerToken[address(arg1)]
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)] >= credits[address(arg1)]
        if (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)] != credits[address(arg1)]:
            credits[address(arg1)] = (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) + credits[address(arg1)]
    if lastPointsPerToken[address(arg1)] != pointsPerToken:
        lastPointsPerToken[address(arg1)] = pointsPerToken
    require lastPointsPerToken[address(arg2)] <= pointsPerToken
    if not balanceOf[address(arg2)]:
        require credits[address(arg2)] >= credits[address(arg2)]
    else:
        require (pointsPerToken * balanceOf[address(arg2)]) - (lastPointsPerToken[address(arg2)] * balanceOf[address(arg2)]) / balanceOf[address(arg2)] == pointsPerToken - lastPointsPerToken[address(arg2)]
        require (pointsPerToken * balanceOf[address(arg2)]) - (lastPointsPerToken[address(arg2)] * balanceOf[address(arg2)]) + credits[address(arg2)] >= credits[address(arg2)]
        if (pointsPerToken * balanceOf[address(arg2)]) - (lastPointsPerToken[address(arg2)] * balanceOf[address(arg2)]) + credits[address(arg2)] != credits[address(arg2)]:
            credits[address(arg2)] = (pointsPerToken * balanceOf[address(arg2)]) - (lastPointsPerToken[address(arg2)] * balanceOf[address(arg2)]) + credits[address(arg2)]
    if lastPointsPerToken[address(arg2)] != pointsPerToken:
        lastPointsPerToken[address(arg2)] = pointsPerToken
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}



}
