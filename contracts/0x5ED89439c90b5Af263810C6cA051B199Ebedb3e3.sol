contract main {




// =====================  Runtime code  =====================


#
#  - sub_42e3b9be(?)
#
const sub_4c429592(?) = 100000000000000 * 10^18

const sub_971a19b4(?) = 0x3fda67f7583380e67ef93072294a7fac882fd7e7

const WHITELIST_PROXY_ADDRESS = 0x7223b032180cdb06be7a3d634b1e10032111f367

const DAI_ADDRESS = 0xb4272071ecadd69d933adcd19ca99fe80664fc08

const NUM_TOKENS = 10^6

const LAND_REGISTRY_PROXY_ADDRESS = 0xe72ad2a335ae18e6c7cdb6daeb64b0330883cd56


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint8 stor3;
uint8 stor4;
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
    return bool(stor4)
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

function unpause() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    require stor4
    stor4 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    require not stor4
    stor4 = 1
    emit Paused(msg.sender);
}

function renouncePauser() payable {
    require msg.sender
    require stor3[address(msg.sender)]
    stor3[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
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
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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
        revert with 0, 'invalid TokenizedProperty'
    minTransferAccepted[address(msg.sender)] = arg1
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
        revert with 0, 'invalid TokenizedProperty'
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
    require arg1
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
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

function collectOwedDividends() payable {
    require lastPointsPerToken[address(msg.sender)] <= pointsPerToken
    if not balanceOf[address(msg.sender)]:
        require credits[address(msg.sender)] >= credits[address(msg.sender)]
    else:
        require balanceOf[address(msg.sender)]
        require (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == pointsPerToken - lastPointsPerToken[address(msg.sender)]
        require credits[address(msg.sender)] + (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) >= credits[address(msg.sender)]
        credits[address(msg.sender)] = credits[address(msg.sender)] + (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)])
    lastPointsPerToken[address(msg.sender)] = pointsPerToken
    credits[address(msg.sender)] = 0
    if not msg.sender:
        revert with 0, 'invalid parameter(s)'
    if credits[address(msg.sender)] / 100000000000000 * 10^18 <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if credits[address(msg.sender)] / 100000000000000 * 10^18 > ext_call.return_data[0]:
        require ext_code.size(daiAddress)
        staticcall daiAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] <= credits[address(msg.sender)] / 100000000000000 * 10^18
        require ext_code.size(moneyMarketAddress)
        call moneyMarketAddress.withdraw(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, (credits[address(msg.sender)] / 100000000000000 * 10^18) - ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'withdraw failed'
    require sub_664c35ab[address(msg.sender)] + (credits[address(msg.sender)] / 100000000000000 * 10^18) >= sub_664c35ab[address(msg.sender)]
    sub_664c35ab[address(msg.sender)] += credits[address(msg.sender)] / 100000000000000 * 10^18
    require sub_ef8b7151 + (credits[address(msg.sender)] / 100000000000000 * 10^18) >= sub_ef8b7151
    sub_ef8b7151 += credits[address(msg.sender)] / 100000000000000 * 10^18
    require ext_code.size(daiAddress)
    call daiAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, credits[address(msg.sender)] / 100000000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit 0x8f6dc746: (credits[address(msg.sender)] / 100000000000000 * 10^18), msg.sender
    emit DividendsCollected((credits[address(msg.sender)] / 100000000000000 * 10^18), msg.sender);
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
        require balanceOf[address(arg1)]
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == pointsPerToken - lastPointsPerToken[address(arg1)]
        require credits[address(arg1)] + (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) >= credits[address(arg1)]
        credits[address(arg1)] = credits[address(arg1)] + (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)])
    lastPointsPerToken[address(arg1)] = pointsPerToken
    require lastPointsPerToken[address(arg2)] <= pointsPerToken
    if not balanceOf[address(arg2)]:
        require credits[address(arg2)] >= credits[address(arg2)]
    else:
        require balanceOf[address(arg2)]
        require (pointsPerToken * balanceOf[address(arg2)]) - (lastPointsPerToken[address(arg2)] * balanceOf[address(arg2)]) / balanceOf[address(arg2)] == pointsPerToken - lastPointsPerToken[address(arg2)]
        require credits[address(arg2)] + (pointsPerToken * balanceOf[address(arg2)]) - (lastPointsPerToken[address(arg2)] * balanceOf[address(arg2)]) >= credits[address(arg2)]
        credits[address(arg2)] = credits[address(arg2)] + (pointsPerToken * balanceOf[address(arg2)]) - (lastPointsPerToken[address(arg2)] * balanceOf[address(arg2)])
    lastPointsPerToken[address(arg2)] = pointsPerToken
    lastTransferBlock[address(arg1)] = block.number
    lastTransferBlock[address(arg2)] = block.number
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
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
    mem[ceil32(name.length) + 196 len ceil32(name.length)] = mem[128 len ceil32(name.length)]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getProperty(string arg1) with:
            gas gas_remaining wei
           args Array(len=name.length, data=mem[128 len name.length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != this.address:
        revert with 0, 'invalid TokenizedProperty'
    if arg2 < minTransferAccepted[address(arg1)]:
        revert with 0, 
                    32,
                    44,
                    0x655f76616c7565206d75737420657863656564205f746f2773206d696e5472616e7366657241636365707465,
                    mem[ceil32(name.length) + 240 len 20]
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
        require balanceOf[address(msg.sender)]
        require (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] == pointsPerToken - lastPointsPerToken[address(msg.sender)]
        require credits[address(msg.sender)] + (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)]) >= credits[address(msg.sender)]
        credits[address(msg.sender)] = credits[address(msg.sender)] + (pointsPerToken * balanceOf[address(msg.sender)]) - (lastPointsPerToken[address(msg.sender)] * balanceOf[address(msg.sender)])
    lastPointsPerToken[address(msg.sender)] = pointsPerToken
    require lastPointsPerToken[address(arg1)] <= pointsPerToken
    if not balanceOf[address(arg1)]:
        require credits[address(arg1)] >= credits[address(arg1)]
    else:
        require balanceOf[address(arg1)]
        require (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) / balanceOf[address(arg1)] == pointsPerToken - lastPointsPerToken[address(arg1)]
        require credits[address(arg1)] + (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)]) >= credits[address(arg1)]
        credits[address(arg1)] = credits[address(arg1)] + (pointsPerToken * balanceOf[address(arg1)]) - (lastPointsPerToken[address(arg1)] * balanceOf[address(arg1)])
    lastPointsPerToken[address(arg1)] = pointsPerToken
    lastTransferBlock[address(msg.sender)] = block.number
    lastTransferBlock[address(arg1)] = block.number
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
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
    call daiAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0] / 100
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
    if not msg.sender:
        revert with 0, 'invalid parameter(s)'
    if ext_call.return_data[0] - (ext_call.return_data[0] / 100) <= 0:
        revert with 0, 'invalid parameter(s)'
    require ext_code.size(daiAddress)
    call daiAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), ext_call.return_data[0] - (ext_call.return_data[0] / 100)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not stor4:
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
                        38,
                        0x746e6f6e2d7a65726f20696e697469616c206d6f6e65794d61726b657420616c6c6f77616e63,
                        mem[202 len 26]
        require ext_code.size(daiAddress)
        call daiAddress.approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0x3fda67f7583380e67ef93072294a7fac882fd7e7, ext_call.return_data[0] - (ext_call.return_data[0] / 100)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'approving moneyMarket failed'
        require ext_code.size(moneyMarketAddress)
        call moneyMarketAddress.supply(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args 0xb4272071ecadd69d933adcd19ca99fe80664fc08, ext_call.return_data[0] - (ext_call.return_data[0] / 100)
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
                        mem[207 len 21]
    require deposits[address(msg.sender)] + ext_call.return_data[0] - (ext_call.return_data[0] / 100) >= deposits[address(msg.sender)]
    deposits[address(msg.sender)] = deposits[address(msg.sender)] + ext_call.return_data[0] - (ext_call.return_data[0] / 100)
    require deposited + ext_call.return_data[0] - (ext_call.return_data[0] / 100) >= deposited
    deposited = deposited + ext_call.return_data[0] - (ext_call.return_data[0] / 100)
    emit Deposited((ext_call.return_data[0] - (ext_call.return_data[0] / 100)), msg.sender);
    require balanceOf[address(this.address)] <= totalSupply
    require ext_call.return_data[0] / 100 <= ext_call.return_data[0]
    if not ext_call.return_data[0] - (ext_call.return_data[0] / 100):
        require totalSupply - balanceOf[address(this.address)] > 0
        require totalSupply - balanceOf[address(this.address)]
        require pointsPerToken + (0 / totalSupply - balanceOf[address(this.address)]) >= pointsPerToken
        pointsPerToken += 0 / totalSupply - balanceOf[address(this.address)]
    else:
        require ext_call.return_data[0] - (ext_call.return_data[0] / 100)
        require (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / ext_call.return_data[0] - (ext_call.return_data[0] / 100) == 100000000000000 * 10^18
        require totalSupply - balanceOf[address(this.address)] > 0
        require totalSupply - balanceOf[address(this.address)]
        require pointsPerToken + ((100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]) >= pointsPerToken
        pointsPerToken += (100000000000000 * 10^18 * ext_call.return_data[0]) - (100000000000000 * 10^18 * ext_call.return_data[0] / 100) / totalSupply - balanceOf[address(this.address)]
    emit DividendsDeposited(ext_call.return_data[0], msg.sender);
}



}
