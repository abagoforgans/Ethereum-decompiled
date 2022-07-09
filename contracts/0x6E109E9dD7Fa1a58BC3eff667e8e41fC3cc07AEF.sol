contract main {




// =====================  Runtime code  =====================


const MAX_UINT = -1


mapping of uint8 stor0;
uint8 stor1;
mapping of uint256 stor2;
mapping of uint256 stor3;
uint256 stor4;
address owner;
uint256 basisPointsRate;
uint256 maximumFee;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint8 stor11;
uint8 deprecated; offset 160
uint128 stor12; offset 160
address upgradedAddress;

function name() payable {
    return name[0 len name.length]
}

function deprecated() payable {
    return bool(deprecated)
}

function upgradedAddress() payable {
    return upgradedAddress
}

function decimals() payable {
    return decimals
}

function maximumFee() payable {
    return maximumFee
}

function isPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function getBlackListStatus(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[address(arg1)])
}

function paused() payable {
    return bool(stor1)
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function basisPointsRate() payable {
    return basisPointsRate
}

function isBlackListed(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
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
    require stor0[address(msg.sender)]
    require stor1
    stor1 = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    require not stor1
    stor1 = 1
    emit Paused(msg.sender);
}

function oldBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not deprecated:
        return 0
    return stor2[address(arg1)]
}

function renouncePauser() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit PauserRemoved(msg.sender);
}

function addBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor11[address(arg1)] = 1
    emit AddedBlackList(arg1);
}

function removeBlackList(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor11[address(arg1)] = 0
    emit RemovedBlackList(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function deprecate(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    upgradedAddress = arg1
    stor12 = 0
    deprecated = 1
    emit Deprecate(arg1);
}

function addPauser(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit PauserAdded(arg1);
}

function redeem(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not deprecated
    require owner
    require arg1 <= stor4
    stor4 -= arg1
    require arg1 <= stor2[stor5]
    stor2[stor5] -= arg1
    emit Transfer(arg1, owner, 0);
    emit Redeem(arg1);
}

function issue(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require not deprecated
    require owner
    require arg1 + stor4 >= stor4
    stor4 += arg1
    require arg1 + stor2[stor5] >= stor2[stor5]
    stor2[stor5] += arg1
    emit Transfer(arg1, 0, owner);
    emit Issue(arg1);
}

function totalSupply() payable {
    if not deprecated:
        return stor4
    require ext_code.size(upgradedAddress)
    staticcall upgradedAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= stor3[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    stor3[address(msg.sender)][address(arg1)] = stor3[msg.sender][address(arg1)] - arg2
    emit Approval((stor3[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 + stor3[msg.sender][address(arg1)] >= stor3[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    stor3[address(msg.sender)][address(arg1)] = arg2 + stor3[msg.sender][address(arg1)]
    emit Approval((arg2 + stor3[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function setParams(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 < 20
    require arg2 < 50
    basisPointsRate = arg1
    if not arg2:
        maximumFee = 0
        emit Params(basisPointsRate, 0);
    else:
        require 10^decimals * arg2 / arg2 == 10^decimals
        maximumFee = 10^decimals * arg2
        emit Params(basisPointsRate, 10^decimals * arg2);
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not deprecated:
        return stor2[address(arg1)]
    require ext_code.size(upgradedAddress)
    staticcall upgradedAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not deprecated:
        return stor3[address(arg1)][address(arg2)]
    require ext_code.size(upgradedAddress)
    staticcall upgradedAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor1
    if not deprecated:
        require arg1
        require msg.sender
        stor3[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
        return 1
    require ext_code.size(upgradedAddress)
    call upgradedAddress.approveByLegacy(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor1
    if deprecated:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.decreaseApprovalByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    require arg2 <= stor3[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    stor3[address(msg.sender)][address(arg1)] = stor3[msg.sender][address(arg1)] - arg2
    emit Approval((stor3[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor1
    if deprecated:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.increaseApprovalByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    require arg2 + stor3[msg.sender][address(arg1)] >= stor3[msg.sender][address(arg1)]
    require arg1
    require msg.sender
    stor3[address(msg.sender)][address(arg1)] = arg2 + stor3[msg.sender][address(arg1)]
    emit Approval((arg2 + stor3[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function destroyBlackFunds(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require stor11[address(arg1)]
    if not deprecated:
        require arg1
        require stor2[address(arg1)] <= stor4
        stor4 -= stor2[address(arg1)]
        require stor2[address(arg1)] <= stor2[address(arg1)]
        stor2[address(arg1)] = 0
        emit Transfer(stor2[address(arg1)], arg1, 0);
        emit DestroyedBlackFunds(stor2[address(arg1)], arg1);
    else:
        require ext_code.size(upgradedAddress)
        staticcall upgradedAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg1
        require ext_call.return_data[0] <= stor4
        stor4 -= ext_call.return_data[0]
        require ext_call.return_data[0] <= stor2[address(arg1)]
        stor2[address(arg1)] -= ext_call.return_data[0]
        emit Transfer(ext_call.return_data[0], arg1, 0);
        emit DestroyedBlackFunds(ext_call.return_data[0], arg1);
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require not stor1
    require not stor11[msg.sender]
    if deprecated:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferByLegacy(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    if not arg2:
        if 0 <= maximumFee:
            require 0 <= arg2
            require arg1
            require arg2 <= stor2[address(msg.sender)]
            stor2[address(msg.sender)] -= arg2
            require arg2 + stor2[arg1] >= stor2[arg1]
            stor2[address(arg1)] = arg2 + stor2[arg1]
            emit Transfer(arg2, msg.sender, arg1);
        else:
            require maximumFee <= arg2
            require arg1
            require arg2 - maximumFee <= stor2[address(msg.sender)]
            stor2[address(msg.sender)] = stor2[address(msg.sender)] - arg2 + maximumFee
            require arg2 - maximumFee + stor2[arg1] >= stor2[arg1]
            stor2[address(arg1)] = arg2 - maximumFee + stor2[arg1]
            emit Transfer((arg2 - maximumFee), msg.sender, arg1);
            if maximumFee:
                require owner
                require maximumFee <= stor2[address(msg.sender)]
                stor2[address(msg.sender)] -= maximumFee
                require maximumFee + stor2[stor5] >= stor2[stor5]
                stor2[stor5] += maximumFee
                emit Transfer(maximumFee, msg.sender, owner);
    else:
        require basisPointsRate * arg2 / arg2 == basisPointsRate
        if basisPointsRate * arg2 / 10000 <= maximumFee:
            require basisPointsRate * arg2 / 10000 <= arg2
            require arg1
            require arg2 - (basisPointsRate * arg2 / 10000) <= stor2[address(msg.sender)]
            stor2[address(msg.sender)] = stor2[address(msg.sender)] - arg2 + (basisPointsRate * arg2 / 10000)
            require arg2 - (basisPointsRate * arg2 / 10000) + stor2[arg1] >= stor2[arg1]
            stor2[address(arg1)] = arg2 - (basisPointsRate * arg2 / 10000) + stor2[arg1]
            emit Transfer((arg2 - (basisPointsRate * arg2 / 10000)), msg.sender, arg1);
            if basisPointsRate * arg2 / 10000:
                require owner
                require basisPointsRate * arg2 / 10000 <= stor2[address(msg.sender)]
                stor2[address(msg.sender)] -= basisPointsRate * arg2 / 10000
                require (basisPointsRate * arg2 / 10000) + stor2[stor5] >= stor2[stor5]
                stor2[stor5] += basisPointsRate * arg2 / 10000
                emit Transfer((basisPointsRate * arg2 / 10000), msg.sender, owner);
        else:
            require maximumFee <= arg2
            require arg1
            require arg2 - maximumFee <= stor2[address(msg.sender)]
            stor2[address(msg.sender)] = stor2[address(msg.sender)] - arg2 + maximumFee
            require arg2 - maximumFee + stor2[arg1] >= stor2[arg1]
            stor2[address(arg1)] = arg2 - maximumFee + stor2[arg1]
            emit Transfer((arg2 - maximumFee), msg.sender, arg1);
            if maximumFee:
                require owner
                require maximumFee <= stor2[address(msg.sender)]
                stor2[address(msg.sender)] -= maximumFee
                require maximumFee + stor2[stor5] >= stor2[stor5]
                stor2[stor5] += maximumFee
                emit Transfer(maximumFee, msg.sender, owner);
    return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require not stor1
    require not stor11[address(arg1)]
    if deprecated:
        require ext_code.size(upgradedAddress)
        call upgradedAddress.transferFromByLegacy(address arg1, address arg2, address arg3, uint256 arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), address(arg2), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return bool(ext_call.return_data[0])
    require arg2
    if not deprecated:
        require arg3 <= stor2[address(arg1)]
    else:
        require ext_code.size(upgradedAddress)
        staticcall upgradedAddress.0x70a08231 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 <= ext_call.return_data[0]
    if not deprecated:
        require arg3 <= stor3[address(arg1)][address(msg.sender)]
    else:
        require ext_code.size(upgradedAddress)
        staticcall upgradedAddress.0xdd62ed3e with:
                gas gas_remaining wei
               args address(arg1), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 <= ext_call.return_data[0]
    if not arg3:
        if 0 <= maximumFee:
            require 0 <= arg3
            require arg2
            require arg3 <= stor2[address(arg1)]
            stor2[address(arg1)] -= arg3
            require arg3 + stor2[arg2] >= stor2[arg2]
            stor2[address(arg2)] = arg3 + stor2[arg2]
            emit Transfer(arg3, arg1, arg2);
            if not deprecated:
                if stor3[address(arg1)][address(msg.sender)] < -1:
                    if not deprecated:
                        require arg3 <= stor3[address(arg1)][address(msg.sender)]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((stor3[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        require ext_code.size(upgradedAddress)
                        staticcall upgradedAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(arg1), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 <= ext_call.return_data[0]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg3
                        emit Approval((ext_call.return_data[0] - arg3), arg1, msg.sender);
            else:
                require ext_code.size(upgradedAddress)
                staticcall upgradedAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg1), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < -1:
                    if not deprecated:
                        require arg3 <= stor3[address(arg1)][address(msg.sender)]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((stor3[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        require ext_code.size(upgradedAddress)
                        staticcall upgradedAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(arg1), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 <= ext_call.return_data[0]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg3
                        emit Approval((ext_call.return_data[0] - arg3), arg1, msg.sender);
        else:
            require maximumFee <= arg3
            require arg2
            require arg3 - maximumFee <= stor2[address(arg1)]
            stor2[address(arg1)] = stor2[address(arg1)] - arg3 + maximumFee
            require arg3 - maximumFee + stor2[arg2] >= stor2[arg2]
            stor2[address(arg2)] = arg3 - maximumFee + stor2[arg2]
            emit Transfer((arg3 - maximumFee), arg1, arg2);
            if not deprecated:
                if stor3[address(arg1)][address(msg.sender)] < -1:
                    if not deprecated:
                        require arg3 <= stor3[address(arg1)][address(msg.sender)]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((stor3[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        require ext_code.size(upgradedAddress)
                        staticcall upgradedAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(arg1), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 <= ext_call.return_data[0]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg3
                        emit Approval((ext_call.return_data[0] - arg3), arg1, msg.sender);
            else:
                require ext_code.size(upgradedAddress)
                staticcall upgradedAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg1), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < -1:
                    if not deprecated:
                        require arg3 <= stor3[address(arg1)][address(msg.sender)]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((stor3[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        require ext_code.size(upgradedAddress)
                        staticcall upgradedAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(arg1), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 <= ext_call.return_data[0]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg3
                        emit Approval((ext_call.return_data[0] - arg3), arg1, msg.sender);
            if maximumFee:
                require owner
                require maximumFee <= stor2[address(arg1)]
                stor2[address(arg1)] -= maximumFee
                require maximumFee + stor2[stor5] >= stor2[stor5]
                stor2[stor5] += maximumFee
                emit Transfer(maximumFee, arg1, owner);
    else:
        require basisPointsRate * arg3 / arg3 == basisPointsRate
        if basisPointsRate * arg3 / 10000 <= maximumFee:
            require basisPointsRate * arg3 / 10000 <= arg3
            require arg2
            require arg3 - (basisPointsRate * arg3 / 10000) <= stor2[address(arg1)]
            stor2[address(arg1)] = stor2[address(arg1)] - arg3 + (basisPointsRate * arg3 / 10000)
            require arg3 - (basisPointsRate * arg3 / 10000) + stor2[arg2] >= stor2[arg2]
            stor2[address(arg2)] = arg3 - (basisPointsRate * arg3 / 10000) + stor2[arg2]
            emit Transfer((arg3 - (basisPointsRate * arg3 / 10000)), arg1, arg2);
            if not deprecated:
                if stor3[address(arg1)][address(msg.sender)] < -1:
                    if not deprecated:
                        require arg3 <= stor3[address(arg1)][address(msg.sender)]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((stor3[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        require ext_code.size(upgradedAddress)
                        staticcall upgradedAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(arg1), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 <= ext_call.return_data[0]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg3
                        emit Approval((ext_call.return_data[0] - arg3), arg1, msg.sender);
            else:
                require ext_code.size(upgradedAddress)
                staticcall upgradedAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg1), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < -1:
                    if not deprecated:
                        require arg3 <= stor3[address(arg1)][address(msg.sender)]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((stor3[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        require ext_code.size(upgradedAddress)
                        staticcall upgradedAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(arg1), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 <= ext_call.return_data[0]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg3
                        emit Approval((ext_call.return_data[0] - arg3), arg1, msg.sender);
            if basisPointsRate * arg3 / 10000:
                require owner
                require basisPointsRate * arg3 / 10000 <= stor2[address(arg1)]
                stor2[address(arg1)] -= basisPointsRate * arg3 / 10000
                require (basisPointsRate * arg3 / 10000) + stor2[stor5] >= stor2[stor5]
                stor2[stor5] += basisPointsRate * arg3 / 10000
                emit Transfer((basisPointsRate * arg3 / 10000), arg1, owner);
        else:
            require maximumFee <= arg3
            require arg2
            require arg3 - maximumFee <= stor2[address(arg1)]
            stor2[address(arg1)] = stor2[address(arg1)] - arg3 + maximumFee
            require arg3 - maximumFee + stor2[arg2] >= stor2[arg2]
            stor2[address(arg2)] = arg3 - maximumFee + stor2[arg2]
            emit Transfer((arg3 - maximumFee), arg1, arg2);
            if not deprecated:
                if stor3[address(arg1)][address(msg.sender)] < -1:
                    if not deprecated:
                        require arg3 <= stor3[address(arg1)][address(msg.sender)]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((stor3[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        require ext_code.size(upgradedAddress)
                        staticcall upgradedAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(arg1), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 <= ext_call.return_data[0]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg3
                        emit Approval((ext_call.return_data[0] - arg3), arg1, msg.sender);
            else:
                require ext_code.size(upgradedAddress)
                staticcall upgradedAddress.0xdd62ed3e with:
                        gas gas_remaining wei
                       args address(arg1), msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < -1:
                    if not deprecated:
                        require arg3 <= stor3[address(arg1)][address(msg.sender)]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] -= arg3
                        emit Approval((stor3[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
                    else:
                        require ext_code.size(upgradedAddress)
                        staticcall upgradedAddress.0xdd62ed3e with:
                                gas gas_remaining wei
                               args address(arg1), msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require arg3 <= ext_call.return_data[0]
                        require msg.sender
                        require arg1
                        stor3[address(arg1)][address(msg.sender)] = ext_call.return_data[0] - arg3
                        emit Approval((ext_call.return_data[0] - arg3), arg1, msg.sender);
            if maximumFee:
                require owner
                require maximumFee <= stor2[address(arg1)]
                stor2[address(arg1)] -= maximumFee
                require maximumFee + stor2[stor5] >= stor2[stor5]
                stor2[stor5] += maximumFee
                emit Transfer(maximumFee, arg1, owner);
    return 1
}



}
