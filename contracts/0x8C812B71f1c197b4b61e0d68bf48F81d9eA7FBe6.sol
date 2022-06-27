contract main {




// =====================  Runtime code  =====================


#
#  - sub_42e3b9be(?)
#  - transfer(address arg1, uint256 arg2)
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
mapping of uint256 lastTransferBlock;
mapping of uint256 minTransferAccepted;

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

function lastTransferBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastTransferBlock[arg1]
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

function minTransferAccepted(address arg1) payable {
    require calldata.size - 4 >= 32
    return minTransferAccepted[arg1]
}

function moneyMarket() payable {
    return address(moneyMarketAddress)
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

function setMinTransfer(uint256 arg1) payable {
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
        revert with 0, 'tinvalid TokenizedProperty'
    minTransferAccepted[msg.sender] = arg1
    emit MinTransferSet(arg1, msg.sender);
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
        revert with 0, 'tinvalid TokenizedProperty'
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
        revert with 0, 'tinvalid TokenizedProperty'
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
    require ext_code.size(daiAddress)
    if sub_ef8b7151 + (2 * ext_call.return_data[0]) - deposited > ext_call.return_data[0]:
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
            args address(stor4.field_0), sub_ef8b7151 + ext_call.return_data[0] - deposited
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'withdraw failed'
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
        if return_data.size:
            require return_data.size >= 32
            require mem[228]
    emit 0xfb2ffd41: (sub_ef8b7151 + (2 * ext_call.return_data[0]) - deposited), msg.sender
}

function collectOwedDividends() payable {
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
    credits[msg.sender] = 0
    if not msg.sender:
        revert with 0, 'invalid parameter(s)'
    if credits[msg.sender] / 100000000000000 * 10^18 <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if credits[msg.sender] / 100000000000000 * 10^18 > ext_call.return_data[0]:
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= credits[msg.sender] / 100000000000000 * 10^18
        require ext_code.size(address(moneyMarketAddress))
        call address(moneyMarketAddress).withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(stor4.field_0), (credits[msg.sender] / 100000000000000 * 10^18) - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'withdraw failed'
    require (credits[msg.sender] / 100000000000000 * 10^18) + sub_664c35ab[address(msg.sender)] >= sub_664c35ab[address(msg.sender)]
    sub_664c35ab[address(msg.sender)] += credits[msg.sender] / 100000000000000 * 10^18
    require (credits[msg.sender] / 100000000000000 * 10^18) + sub_ef8b7151 >= sub_ef8b7151
    sub_ef8b7151 += credits[msg.sender] / 100000000000000 * 10^18
    require ext_code.size(daiAddress)
    mem[196 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, credits[msg.sender] / 100000000000000 * 10^18) >> 32
    call daiAddress with:
       funct uint32(msg.sender)
         gas gas_remaining wei
        args Mask(224, 32, credits[msg.sender] / 100000000000000 * 10^18) << 224, mem[260 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32
    else:
        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if return_data.size:
            require return_data.size >= 32
            require mem[228]
    emit 0x8f6dc746: (credits[msg.sender] / 100000000000000 * 10^18), msg.sender
    emit DividendsCollected((credits[msg.sender] / 100000000000000 * 10^18), msg.sender);
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
        revert with 0, 'tinvalid TokenizedProperty'
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
    lastTransferBlock[address(arg1)] = block.number
    lastTransferBlock[arg2] = block.number
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

function depositDividends() payable {
    require ext_code.size(daiAddress)
    staticcall daiAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(registryProxyAddress)
    staticcall registryProxyAddress.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(daiAddress)
    mem[228 len 96] = unknown_0x23b872dd(?????), msg.sender, address(ext_call.return_data[0]), Mask(224, 32, ext_call.return_data[0] / 100) >> 32
    call daiAddress with:
         gas gas_remaining wei
        args Mask(224, 32, ext_call.return_data[0] / 100) << 480, mem[324 len 4]
    if not return_data.size:
        require ext_call.success
        require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
        require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
        if not msg.sender:
            revert with 0, 'invalid parameter(s)'
        if ext_call.return_data[0] - (ext_call.return_data[0] / 100) <= 0:
            revert with 0, 'invalid parameter(s)'
        require ext_code.size(daiAddress)
        mem[360 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32
        call daiAddress with:
             gas gas_remaining wei
            args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) << 480, mem[456 len 4]
        if not return_data.size:
            require ext_call.success
            require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
            if not uint8(stor4.field_0):
                require ext_code.size(daiAddress)
                if ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                    staticcall daiAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(moneyMarketAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require not ext_call.return_data[0]
                mem[460 len 64] = 0, address(moneyMarketAddress), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32
                call daiAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args ext_call.return_data[0] - (ext_call.return_data[0] / 100), Mask(224, 32, address(moneyMarketAddress), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32) >> 32, mem[524 len 4]
                if not return_data.size:
                    require ext_call.success
                    require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                    require ext_code.size(address(moneyMarketAddress))
                    call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                        revert with 0, 32, 43, 0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65, mem[571 len 21]
                else:
                    mem[492 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[492]
                    require ext_code.size(address(moneyMarketAddress))
                    call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                    mem[ceil32(return_data.size) + 572 len 21]
                ('iszero', ('ext_call.return_data', 0, 32))
        else:
            mem[392 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if return_data.size:
                require return_data.size >= 32
                require mem[392]
            if not uint8(stor4.field_0):
                require ext_code.size(daiAddress)
                if ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                    staticcall daiAddress.0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(moneyMarketAddress)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require not ext_call.return_data[0]
                mem[ceil32(return_data.size) + 461 len 64] = 0, address(moneyMarketAddress), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32
                call daiAddress with:
                   funct uint32(stor5)
                     gas gas_remaining wei
                    args ext_call.return_data[0] - (ext_call.return_data[0] / 100), Mask(224, 32, address(moneyMarketAddress), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32) >> 32, mem[ceil32(return_data.size) + 525 len 4]
                if not return_data.size:
                    require ext_call.success
                    require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                    require ext_code.size(address(moneyMarketAddress))
                    call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                    mem[ceil32(return_data.size) + 572 len 21]
                else:
                    mem[ceil32(return_data.size) + 493 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    require ext_call.success
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + 493]
                    require ext_code.size(address(moneyMarketAddress))
                    call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                    mem[(2 * ceil32(return_data.size)) + 573 len 21]
                ('iszero', ('ext_call.return_data', 0, 32))
        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
        deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
        deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
        emit Deposited((ext_call.return_data[0] - (ext_call.return_data[0] / 100)), msg.sender);
        require balanceOf[address(this.address)] <= totalSupply
        require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
        if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
            require totalSupply - balanceOf[address(this.address)] > 0
            require totalSupply - balanceOf[address(this.address)]
            require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
            pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
        else:
            require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
            require totalSupply - balanceOf[address(this.address)] > 0
            require totalSupply - balanceOf[address(this.address)]
            require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
            pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
        emit DividendsDeposited(ext_call.return_data[0], msg.sender);
    else:
        mem[260 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require ext_call.success
        if not return_data.size:
            require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
            if not msg.sender:
                revert with 0, 'invalid parameter(s)'
            if ext_call.return_data[0] - (ext_call.return_data[0] / 100) <= 0:
                revert with 0, 'invalid parameter(s)'
            require ext_code.size(daiAddress)
            mem[ceil32(return_data.size) + 361 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32
            mem[ceil32(return_data.size) + 485 len 4] = Mask(32, 64, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 64
            call daiAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) << 480, mem[ceil32(return_data.size) + 457 len 4]
            if not return_data.size:
                require ext_call.success
                require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                if uint8(stor4.field_0):
                    require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                    deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                    require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                    deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                    emit Deposited((ext_call.return_data[0] - (ext_call.return_data[0] / 100)), msg.sender);
                    require balanceOf[address(this.address)] <= totalSupply
                    require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                    if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                        require totalSupply - balanceOf[address(this.address)] > 0
                        require totalSupply - balanceOf[address(this.address)]
                        require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                        pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                    else:
                        require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                        require totalSupply - balanceOf[address(this.address)] > 0
                        require totalSupply - balanceOf[address(this.address)]
                        require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                        pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                    emit DividendsDeposited(ext_call.return_data[0], msg.sender);
                else:
                    require ext_code.size(daiAddress)
                    if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                        mem[ceil32(return_data.size) + 461 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32
                        call daiAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) << 224, mem[ceil32(return_data.size) + 525 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                            mem[ceil32(return_data.size) + 572 len 21]
                        else:
                            mem[ceil32(return_data.size) + 493 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 493]
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                            mem[(2 * ceil32(return_data.size)) + 573 len 21]
                        ('iszero', ('ext_call.return_data', 0, 32))
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                        deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                        deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                        emit Deposited((ext_call.return_data[0] - (ext_call.return_data[0] / 100)), msg.sender);
                        require balanceOf[address(this.address)] <= totalSupply
                        require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                        if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                        else:
                            require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                        emit DividendsDeposited(ext_call.return_data[0], msg.sender);
                    else:
                        staticcall daiAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(moneyMarketAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require not ext_call.return_data[0]
                        require ext_code.size(daiAddress)
                        mem[ceil32(return_data.size) + 461 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32
                        mem[ceil32(return_data.size) + 553 len 4] = Mask(32, 64, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 64
                        call daiAddress with:
                           funct uint32(stor5)
                             gas gas_remaining wei
                            args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) << 224, mem[ceil32(return_data.size) + 525 len 4]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                            mem[ceil32(return_data.size) + 572 len 21]
                            require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                            deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                            require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                            deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                            emit Deposited((ext_call.return_data[0] - (ext_call.return_data[0] / 100)), msg.sender);
                            require balanceOf[address(this.address)] <= totalSupply
                            require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                            if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                                require totalSupply - balanceOf[address(this.address)] > 0
                                require totalSupply - balanceOf[address(this.address)]
                                require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                                pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                            else:
                                require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                                require totalSupply - balanceOf[address(this.address)] > 0
                                require totalSupply - balanceOf[address(this.address)]
                                require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                                pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                            emit DividendsDeposited(ext_call.return_data[0], msg.sender);
                        else:
                            mem[ceil32(return_data.size) + 493 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[ceil32(return_data.size) + 493]
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100), mem[(2 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            'supply failed',
                                            mem[(2 * ceil32(return_data.size)) + 562 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require ext_code.size(daiAddress)
                            staticcall daiAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(moneyMarketAddress), mem[(2 * ceil32(return_data.size)) + 530 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            43,
                                            0xfe616c6c6f77616e6365206e6f742066756c6c7920636f6e73756d6564206279206d6f6e65794d61726b65,
                                            mem[(2 * ceil32(return_data.size)) + 573 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 21]
                            require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                            deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                            require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                            deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                            emit Deposited(address arg1, uint256 arg2):
                                           ext_call.return_data[0] - (ext_call.return_data[0] / 100),
                                           mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                           msg.sender,
                            require balanceOf[address(this.address)] <= totalSupply
                            require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                            if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                                require totalSupply - balanceOf[address(this.address)] > 0
                                require totalSupply - balanceOf[address(this.address)]
                                require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                                pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                            else:
                                require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                                require totalSupply - balanceOf[address(this.address)] > 0
                                require totalSupply - balanceOf[address(this.address)]
                                require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                                pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                            emit DividendsDeposited(address arg1, uint256 arg2):
                                                    ext_call.return_data[0],
                                                    mem[(2 * ceil32(return_data.size)) + 494 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                    msg.sender,
            else:
                mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if not return_data.size:
                    if uint8(stor4.field_0):
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                        deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                        deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                        emit Deposited(address arg1, uint256 arg2):
                                       ext_call.return_data[0] - (ext_call.return_data[0] / 100),
                                       mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                       msg.sender,
                        require balanceOf[address(this.address)] <= totalSupply
                        require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                        if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                        else:
                            require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                        emit DividendsDeposited(address arg1, uint256 arg2):
                                                ext_call.return_data[0],
                                                mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                msg.sender,
                    else:
                        require ext_code.size(daiAddress)
                        if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                            mem[(2 * ceil32(return_data.size)) + 462 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                            call daiAddress with:
                               funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor5), mem[(2 * ceil32(return_data.size)) + 430 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                                 gas gas_remaining wei
                                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 462 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                        else:
                            staticcall daiAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(moneyMarketAddress), mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require not ext_call.return_data[0]
                            require ext_code.size(daiAddress)
                            mem[(2 * ceil32(return_data.size)) + 462 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                            call daiAddress with:
                               funct uint32(stor5), mem[(2 * ceil32(return_data.size)) + 430 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                                 gas gas_remaining wei
                                args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 462 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                            mem[(2 * ceil32(return_data.size)) + 573 len 21]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 494 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 494]
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 574 len 21]
                        ('iszero', ('ext_call.return_data', 0, 32))
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                        deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                        deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                        emit Deposited((ext_call.return_data[0] - (ext_call.return_data[0] / 100)), msg.sender);
                        require balanceOf[address(this.address)] <= totalSupply
                        require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                        if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                        else:
                            require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                        emit DividendsDeposited(ext_call.return_data[0], msg.sender);
                else:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 393]
                    if uint8(stor4.field_0):
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                        deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                        deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                        emit Deposited(address arg1, uint256 arg2):
                                       ext_call.return_data[0] - (ext_call.return_data[0] / 100),
                                       mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                       msg.sender,
                        require balanceOf[address(this.address)] <= totalSupply
                        require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                        if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                        else:
                            require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                        emit DividendsDeposited(address arg1, uint256 arg2):
                                                ext_call.return_data[0],
                                                mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                                msg.sender,
                    else:
                        require ext_code.size(daiAddress)
                        if ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                            staticcall daiAddress.0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(moneyMarketAddress), mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require not ext_call.return_data[0]
                        mem[(2 * ceil32(return_data.size)) + 462 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                        call daiAddress with:
                           funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor5), mem[(2 * ceil32(return_data.size)) + 430 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                             gas gas_remaining wei
                            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 462 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                        if not return_data.size:
                            require ext_call.success
                            require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                            mem[(2 * ceil32(return_data.size)) + 573 len 21]
                        else:
                            mem[(2 * ceil32(return_data.size)) + 494 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            require ext_call.success
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[(2 * ceil32(return_data.size)) + 494]
                            require ext_code.size(address(moneyMarketAddress))
                            call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                            mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 574 len 21]
                        ('iszero', ('ext_call.return_data', 0, 32))
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                        deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                        require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                        deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                        emit Deposited((ext_call.return_data[0] - (ext_call.return_data[0] / 100)), msg.sender);
                        require balanceOf[address(this.address)] <= totalSupply
                        require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                        if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                        else:
                            require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                            require totalSupply - balanceOf[address(this.address)] > 0
                            require totalSupply - balanceOf[address(this.address)]
                            require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                            pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                        emit DividendsDeposited(ext_call.return_data[0], msg.sender);
        else:
            require return_data.size >= 32
            require mem[260]
            require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
            if not msg.sender:
                revert with 0, 'invalid parameter(s)'
            if ext_call.return_data[0] - (ext_call.return_data[0] / 100) <= 0:
                revert with 0, 'invalid parameter(s)'
            require ext_code.size(daiAddress)
            mem[ceil32(return_data.size) + 361 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32
            mem[ceil32(return_data.size) + 485 len 4] = Mask(32, 64, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 64
            call daiAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) << 480, mem[ceil32(return_data.size) + 457 len 4]
            if not return_data.size:
                require ext_call.success
                require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                if not uint8(stor4.field_0):
                    require ext_code.size(daiAddress)
                    if ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                        staticcall daiAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(moneyMarketAddress)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require not ext_call.return_data[0]
                    mem[ceil32(return_data.size) + 461 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> 32
                    call daiAddress with:
                       funct uint32(stor5)
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) << 224, mem[ceil32(return_data.size) + 525 len 4]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                        require ext_code.size(address(moneyMarketAddress))
                        call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                        mem[ceil32(return_data.size) + 572 len 21]
                    else:
                        mem[ceil32(return_data.size) + 493 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 493]
                        require ext_code.size(address(moneyMarketAddress))
                        call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                        mem[(2 * ceil32(return_data.size)) + 573 len 21]
                    ('iszero', ('ext_call.return_data', 0, 32))
                require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                emit Deposited((ext_call.return_data[0] - (ext_call.return_data[0] / 100)), msg.sender);
                require balanceOf[address(this.address)] <= totalSupply
                require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                    require totalSupply - balanceOf[address(this.address)] > 0
                    require totalSupply - balanceOf[address(this.address)]
                    require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                    pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                else:
                    require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                    require totalSupply - balanceOf[address(this.address)] > 0
                    require totalSupply - balanceOf[address(this.address)]
                    require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                    pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                emit DividendsDeposited(ext_call.return_data[0], msg.sender);
            else:
                mem[ceil32(return_data.size) + 393 len return_data.size] = ext_call.return_data[0 len return_data.size]
                require ext_call.success
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 393]
                if uint8(stor4.field_0):
                    require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                    deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                    require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                    deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                    emit Deposited(address arg1, uint256 arg2):
                                   ext_call.return_data[0] - (ext_call.return_data[0] / 100),
                                   mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                   msg.sender,
                    require balanceOf[address(this.address)] <= totalSupply
                    require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                    if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                        require totalSupply - balanceOf[address(this.address)] > 0
                        require totalSupply - balanceOf[address(this.address)]
                        require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                        pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                    else:
                        require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                        require totalSupply - balanceOf[address(this.address)] > 0
                        require totalSupply - balanceOf[address(this.address)]
                        require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                        pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                    emit DividendsDeposited(address arg1, uint256 arg2):
                                            ext_call.return_data[0],
                                            mem[(2 * ceil32(return_data.size)) + 394 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                            msg.sender,
                else:
                    require ext_code.size(daiAddress)
                    if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                        mem[(2 * ceil32(return_data.size)) + 462 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                        call daiAddress with:
                           funct Mask(8 * -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68, 0, stor5), mem[(2 * ceil32(return_data.size)) + 430 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                             gas gas_remaining wei
                            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 462 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    else:
                        staticcall daiAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(moneyMarketAddress), mem[(2 * ceil32(return_data.size)) + 430 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require not ext_call.return_data[0]
                        require ext_code.size(daiAddress)
                        mem[(2 * ceil32(return_data.size)) + 462 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)] = approve(address arg1, uint256 arg2), Mask(224, 0, stor5), uint32(stor5), Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256
                        call daiAddress with:
                           funct uint32(stor5), mem[(2 * ceil32(return_data.size)) + 430 len floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 64]
                             gas gas_remaining wei
                            args Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 4, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) + 256, Mask(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36, -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256, ext_call.return_data[0] - (ext_call.return_data[0] / 100)) >> -(8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) - 36) + 256) << (8 * floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68)) - 256, mem[(2 * ceil32(return_data.size)) + floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 462 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + -floor32((2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 68) + 68]
                    if not return_data.size:
                        require ext_call.success
                        require unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32
                        require ext_code.size(address(moneyMarketAddress))
                        call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                        mem[(2 * ceil32(return_data.size)) + 573 len 21]
                    else:
                        mem[(2 * ceil32(return_data.size)) + 494 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        require ext_call.success
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[(2 * ceil32(return_data.size)) + 494]
                        require ext_code.size(address(moneyMarketAddress))
                        call address(moneyMarketAddress).supply(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(stor4.field_0), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                                        mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 574 len 21]
                    ('iszero', ('ext_call.return_data', 0, 32))
                    require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)] >= deposits[address(msg.sender)]
                    deposits[address(msg.sender)] = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposits[address(msg.sender)]
                    require ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited >= deposited
                    deposited = ext_call.return_data[0] - (ext_call.return_data[0] / 100) + deposited
                    emit Deposited((ext_call.return_data[0] - (ext_call.return_data[0] / 100)), msg.sender);
                    require balanceOf[address(this.address)] <= totalSupply
                    require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
                    if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
                        require totalSupply - balanceOf[address(this.address)] > 0
                        require totalSupply - balanceOf[address(this.address)]
                        require (0 / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                        pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
                    else:
                        require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
                        require totalSupply - balanceOf[address(this.address)] > 0
                        require totalSupply - balanceOf[address(this.address)]
                        require ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) + pointsPerToken >= pointsPerToken
                        pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
                    emit DividendsDeposited(ext_call.return_data[0], msg.sender);
}



}
