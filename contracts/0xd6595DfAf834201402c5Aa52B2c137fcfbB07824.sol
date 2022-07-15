contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
address owner;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address parentTokenAddress;
uint256 parentSnapShotBlock;
uint256 creationBlock;
array of struct stor7;
mapping of uint256 allowance;
array of struct stor9;

function name() payable {
    return name[0 len name.length]
}

function creationBlock() payable {
    return creationBlock
}

function decimals() payable {
    return decimals
}

function parentToken() payable {
    return parentTokenAddress
}

function owner() payable {
    return owner
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function parentSnapShotBlock() payable {
    return parentSnapShotBlock
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[msg.sender][address(arg1)] + arg2 >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 < allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function reclaimToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor9.length:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if arg1 < parentSnapShotBlock:
            staticcall parentTokenAddress.0x981b24d0 with:
                    gas gas_remaining wei
                   args arg1
        else:
            staticcall parentTokenAddress.0x981b24d0 with:
                    gas gas_remaining wei
                   args parentSnapShotBlock
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require 0 < stor9.length
    if uint128(stor9.field_0) > arg1:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if arg1 < parentSnapShotBlock:
            staticcall parentTokenAddress.0x981b24d0 with:
                    gas gas_remaining wei
                   args arg1
        else:
            staticcall parentTokenAddress.0x981b24d0 with:
                    gas gas_remaining wei
                   args parentSnapShotBlock
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if not stor9.length:
        return 0
    require stor9.length - 1 < stor9.length
    if arg1 >= stor9[stor9.length].field_0:
        if stor9.length - 1 < stor9.length:
            return stor9[stor9.length].field_0
    else:
        if 0 < stor9.length:
            if arg1 < uint128(stor9.field_0):
                return 0
            idx = 0
            while stor9.length - 1 > idx:
                require idx + stor9.length / 2 < stor9.length
                mem[0] = 9
                if stor9[0.5 / idx + stor9.length].field_0 > arg1:
                    idx = idx
                    continue 
                idx = idx + stor9.length / 2
                continue 
            if idx < stor9.length:
                return stor9[idx].field_128
    revert
}

function totalSupply() payable {
    if not stor9.length:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if block.number < parentSnapShotBlock:
            staticcall parentTokenAddress.0x981b24d0 with:
                    gas gas_remaining wei
                   args block.number
        else:
            staticcall parentTokenAddress.0x981b24d0 with:
                    gas gas_remaining wei
                   args parentSnapShotBlock
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require 0 < stor9.length
    if uint128(stor9.field_0) > block.number:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if block.number < parentSnapShotBlock:
            staticcall parentTokenAddress.0x981b24d0 with:
                    gas gas_remaining wei
                   args block.number
        else:
            staticcall parentTokenAddress.0x981b24d0 with:
                    gas gas_remaining wei
                   args parentSnapShotBlock
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if not stor9.length:
        return 0
    require stor9.length - 1 < stor9.length
    if block.number >= stor9[stor9.length].field_0:
        if stor9.length - 1 < stor9.length:
            return stor9[stor9.length].field_0
    else:
        if 0 < stor9.length:
            if block.number < uint128(stor9.field_0):
                return 0
            idx = 0
            while stor9.length - 1 > idx:
                require idx + stor9.length / 2 < stor9.length
                mem[0] = 9
                if stor9[0.5 / idx + stor9.length].field_0 > block.number:
                    idx = idx
                    continue 
                idx = idx + stor9.length / 2
                continue 
            if idx < stor9.length:
                return stor9[idx].field_128
    revert
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor7[address(arg1)].field_0:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if arg2 < parentSnapShotBlock:
            staticcall parentTokenAddress.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), arg2
        else:
            staticcall parentTokenAddress.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), parentSnapShotBlock
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require stor7[address(arg1)].field_0
    if stor7[address(arg1)].field_0 > arg2:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if arg2 < parentSnapShotBlock:
            staticcall parentTokenAddress.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), arg2
        else:
            staticcall parentTokenAddress.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), parentSnapShotBlock
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if not stor7[address(arg1)].field_0:
        return 0
    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
    if arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
        if stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0:
            return stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
    else:
        if 0 < stor7[address(arg1)].field_0:
            if arg2 < stor7[address(arg1)].field_0:
                return 0
            idx = 0
            while stor7[address(arg1)].field_0 - 1 > idx:
                require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 7)
                if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > arg2:
                    idx = idx
                    continue 
                idx = idx + stor7[address(arg1)].field_0 / 2
                continue 
            if idx < stor7[address(arg1)].field_0:
                return stor7[address(arg1)][idx].field_128
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[address(arg1)].field_0:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if block.number < parentSnapShotBlock:
            staticcall parentTokenAddress.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), block.number
        else:
            staticcall parentTokenAddress.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), parentSnapShotBlock
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    require stor7[address(arg1)].field_0
    if stor7[address(arg1)].field_0 > block.number:
        if not parentTokenAddress:
            return 0
        require ext_code.size(parentTokenAddress)
        if block.number < parentSnapShotBlock:
            staticcall parentTokenAddress.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), block.number
        else:
            staticcall parentTokenAddress.0x4ee2cd7e with:
                    gas gas_remaining wei
                   args address(arg1), parentSnapShotBlock
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return ext_call.return_data[0]
    if not stor7[address(arg1)].field_0:
        return 0
    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
    if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
        if stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0:
            return stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
    else:
        if 0 < stor7[address(arg1)].field_0:
            if block.number < stor7[address(arg1)].field_0:
                return 0
            idx = 0
            while stor7[address(arg1)].field_0 - 1 > idx:
                require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 7)
                if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                    idx = idx
                    continue 
                idx = idx + stor7[address(arg1)].field_0 / 2
                continue 
            if idx < stor7[address(arg1)].field_0:
                return stor7[address(arg1)][idx].field_128
    revert
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2:
        require parentSnapShotBlock < block.number
        require arg1
        require arg1 != this.address
        if not stor7[address(msg.sender)].field_0:
            if not parentTokenAddress:
                require 0 >= arg2
                if not stor7[address(msg.sender)].field_0:
                    stor7[address(msg.sender)].field_0++
                    if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                        idx = stor7[address(msg.sender)].field_0 + 1
                        while stor7[address(msg.sender)].field_0 > idx:
                            stor7[address(msg.sender)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                else:
                    require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                    if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 >= block.number:
                        require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(-arg2)
                    else:
                        stor7[address(msg.sender)].field_0++
                        if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                            idx = stor7[address(msg.sender)].field_0 + 1
                            while stor7[address(msg.sender)].field_0 > idx:
                                stor7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(-arg2)
            else:
                require ext_code.size(parentTokenAddress)
                if block.number < parentSnapShotBlock:
                    staticcall parentTokenAddress.0x4ee2cd7e with:
                            gas gas_remaining wei
                           args msg.sender, block.number
                else:
                    staticcall parentTokenAddress.0x4ee2cd7e with:
                            gas gas_remaining wei
                           args msg.sender, parentSnapShotBlock
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= arg2
                if not stor7[address(msg.sender)].field_0:
                    stor7[address(msg.sender)].field_0++
                    if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                        idx = stor7[address(msg.sender)].field_0 + 1
                        while stor7[address(msg.sender)].field_0 > idx:
                            stor7[address(msg.sender)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                    if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 >= block.number:
                        require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        stor7[address(msg.sender)].field_0++
                        if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                            idx = stor7[address(msg.sender)].field_0 + 1
                            while stor7[address(msg.sender)].field_0 > idx:
                                stor7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
        else:
            require stor7[address(msg.sender)].field_0
            if stor7[address(msg.sender)].field_0 > block.number:
                if not parentTokenAddress:
                    require 0 >= arg2
                    if not stor7[address(msg.sender)].field_0:
                        stor7[address(msg.sender)].field_0++
                        if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                            idx = stor7[address(msg.sender)].field_0 + 1
                            while stor7[address(msg.sender)].field_0 > idx:
                                stor7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                        if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 >= block.number:
                            require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor7[address(msg.sender)].field_0++
                            if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                                idx = stor7[address(msg.sender)].field_0 + 1
                                while stor7[address(msg.sender)].field_0 > idx:
                                    stor7[address(msg.sender)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args msg.sender, block.number
                    else:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args msg.sender, parentSnapShotBlock
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= arg2
                    if not stor7[address(msg.sender)].field_0:
                        stor7[address(msg.sender)].field_0++
                        if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                            idx = stor7[address(msg.sender)].field_0 + 1
                            while stor7[address(msg.sender)].field_0 > idx:
                                stor7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                        if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 >= block.number:
                            require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor7[address(msg.sender)].field_0++
                            if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                                idx = stor7[address(msg.sender)].field_0 + 1
                                while stor7[address(msg.sender)].field_0 > idx:
                                    stor7[address(msg.sender)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                if not stor7[address(msg.sender)].field_0:
                    require 0 >= arg2
                    if not stor7[address(msg.sender)].field_0:
                        stor7[address(msg.sender)].field_0++
                        if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                            idx = stor7[address(msg.sender)].field_0 + 1
                            while stor7[address(msg.sender)].field_0 > idx:
                                stor7[address(msg.sender)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                        stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                        if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 >= block.number:
                            require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor7[address(msg.sender)].field_0++
                            if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                                idx = stor7[address(msg.sender)].field_0 + 1
                                while stor7[address(msg.sender)].field_0 > idx:
                                    stor7[address(msg.sender)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                else:
                    require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                    if block.number >= stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0:
                        require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                        require stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 >= arg2
                        if not stor7[address(msg.sender)].field_0:
                            stor7[address(msg.sender)].field_0++
                            if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                                idx = stor7[address(msg.sender)].field_0 + 1
                                while stor7[address(msg.sender)].field_0 > idx:
                                    stor7[address(msg.sender)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                            stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 - arg2)
                        else:
                            require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                            if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 >= block.number:
                                require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 - arg2)
                            else:
                                stor7[address(msg.sender)].field_0++
                                if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                                    idx = stor7[address(msg.sender)].field_0 + 1
                                    while stor7[address(msg.sender)].field_0 > idx:
                                        stor7[address(msg.sender)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 - arg2)
                    else:
                        require 0 < stor7[address(msg.sender)].field_0
                        if block.number < stor7[address(msg.sender)].field_0:
                            require 0 >= arg2
                            if not stor7[address(msg.sender)].field_0:
                                stor7[address(msg.sender)].field_0++
                                if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                                    idx = stor7[address(msg.sender)].field_0 + 1
                                    while stor7[address(msg.sender)].field_0 > idx:
                                        stor7[address(msg.sender)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                                if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 >= block.number:
                                    require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(msg.sender)].field_0++
                                    if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                                        idx = stor7[address(msg.sender)].field_0 + 1
                                        while stor7[address(msg.sender)].field_0 > idx:
                                            stor7[address(msg.sender)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(-arg2)
                        else:
                            idx = 0
                            while stor7[address(msg.sender)].field_0 - 1 > idx:
                                require idx + stor7[address(msg.sender)].field_0 / 2 < stor7[address(msg.sender)].field_0
                                mem[0] = sha3(address(msg.sender), 7)
                                if stor7[address(msg.sender)][0.5 / idx + stor7[address(msg.sender)].field_0].field_0 > block.number:
                                    idx = idx
                                    continue 
                                idx = idx + stor7[address(msg.sender)].field_0 / 2
                                continue 
                            require idx < stor7[address(msg.sender)].field_0
                            require stor7[address(msg.sender)][idx].field_128 >= arg2
                            if not stor7[address(msg.sender)].field_0:
                                stor7[address(msg.sender)].field_0++
                                if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                                    s = stor7[address(msg.sender)].field_0 + 1
                                    while stor7[address(msg.sender)].field_0 > s:
                                        stor7[address(msg.sender)][s].field_0 = 0
                                        s = s + 1
                                        continue 
                                require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                                stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(stor7[address(msg.sender)][idx].field_128 - arg2)
                            else:
                                require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                                if stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 >= block.number:
                                    require stor7[address(msg.sender)].field_0 - 1 < stor7[address(msg.sender)].field_0
                                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(stor7[address(msg.sender)][idx].field_128 - arg2)
                                else:
                                    stor7[address(msg.sender)].field_0++
                                    if stor7[address(msg.sender)].field_0 > stor7[address(msg.sender)].field_0 + 1:
                                        s = stor7[address(msg.sender)].field_0 + 1
                                        while stor7[address(msg.sender)].field_0 > s:
                                            stor7[address(msg.sender)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor7[address(msg.sender)].field_0 < stor7[address(msg.sender)].field_0
                                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0 = uint128(block.number)
                                    stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_128 = uint128(stor7[address(msg.sender)][idx].field_128 - arg2)
        if not stor7[address(arg1)].field_0:
            if not parentTokenAddress:
                require arg2 >= 0
                if not stor7[address(arg1)].field_0:
                    stor7[address(arg1)].field_0++
                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                        idx = stor7[address(arg1)].field_0 + 1
                        while stor7[address(arg1)].field_0 > idx:
                            stor7[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                    else:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
            else:
                require ext_code.size(parentTokenAddress)
                if block.number < parentSnapShotBlock:
                    staticcall parentTokenAddress.0x4ee2cd7e with:
                            gas gas_remaining wei
                           args address(arg1), block.number
                else:
                    staticcall parentTokenAddress.0x4ee2cd7e with:
                            gas gas_remaining wei
                           args address(arg1), parentSnapShotBlock
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                if not stor7[address(arg1)].field_0:
                    stor7[address(arg1)].field_0++
                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                        idx = stor7[address(arg1)].field_0 + 1
                        while stor7[address(arg1)].field_0 > idx:
                            stor7[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
        else:
            require stor7[address(arg1)].field_0
            if stor7[address(arg1)].field_0 > block.number:
                if not parentTokenAddress:
                    require arg2 >= 0
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), block.number
                    else:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), parentSnapShotBlock
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
            else:
                if not stor7[address(arg1)].field_0:
                    require arg2 >= 0
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                    if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 + arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                    else:
                        require 0 < stor7[address(arg1)].field_0
                        if block.number < stor7[address(arg1)].field_0:
                            require arg2 >= 0
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            idx = 0
                            while stor7[address(arg1)].field_0 - 1 > idx:
                                require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 7)
                                if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                    idx = idx
                                    continue 
                                idx = idx + stor7[address(arg1)].field_0 / 2
                                continue 
                            require idx < stor7[address(arg1)].field_0
                            require stor7[address(arg1)][idx].field_128 + arg2 >= stor7[address(arg1)][idx].field_128
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    s = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > s:
                                        stor7[address(arg1)][s].field_0 = 0
                                        s = s + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        s = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > s:
                                            stor7[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
    emit 0xfeddf252: arg2, msg.sender, arg1
    return 1
}

function burn(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not stor9.length:
        if not parentTokenAddress:
            require 0 >= arg2
            if not stor7[address(arg1)].field_0:
                if not parentTokenAddress:
                    require 0 >= arg2
                    if not stor9.length:
                        stor9.length++
                        if stor9.length > stor9.length + 1:
                            idx = stor9.length + 1
                            while stor9.length > idx:
                                stor9[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9.length < stor9.length
                        stor9[stor9.length].field_0 = uint128(block.number)
                        stor9[stor9.length].field_128 = uint128(-arg2)
                    else:
                        require stor9.length - 1 < stor9.length
                        if stor9[stor9.length].field_0 >= block.number:
                            require stor9.length - 1 < stor9.length
                            stor9[stor9.length].field_0 = uint128(-arg2)
                        else:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(-arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), block.number
                    else:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), parentSnapShotBlock
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= arg2
                    if not stor9.length:
                        stor9.length++
                        if stor9.length > stor9.length + 1:
                            idx = stor9.length + 1
                            while stor9.length > idx:
                                stor9[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9.length < stor9.length
                        stor9[stor9.length].field_0 = uint128(block.number)
                        stor9[stor9.length].field_128 = uint128(-arg2)
                    else:
                        require stor9.length - 1 < stor9.length
                        if stor9[stor9.length].field_0 >= block.number:
                            require stor9.length - 1 < stor9.length
                            stor9[stor9.length].field_0 = uint128(-arg2)
                        else:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(-arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                require stor7[address(arg1)].field_0
                if stor7[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(-arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(-arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(-arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(-arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    if not stor7[address(arg1)].field_0:
                        require 0 >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(-arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(-arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(-arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                        else:
                            require 0 < stor7[address(arg1)].field_0
                            if block.number < stor7[address(arg1)].field_0:
                                require 0 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(-arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                idx = 0
                                while stor7[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 7)
                                    if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                        idx = idx
                                        continue 
                                    idx = idx + stor7[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][idx].field_128 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        s = stor9.length + 1
                                        while stor9.length > s:
                                            stor9[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(-arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        s = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > s:
                                            stor7[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
        else:
            require ext_code.size(parentTokenAddress)
            if block.number < parentSnapShotBlock:
                staticcall parentTokenAddress.0x981b24d0 with:
                        gas gas_remaining wei
                       args block.number
            else:
                staticcall parentTokenAddress.0x981b24d0 with:
                        gas gas_remaining wei
                       args parentSnapShotBlock
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= arg2
            if not stor7[address(arg1)].field_0:
                if not parentTokenAddress:
                    require 0 >= arg2
                    if not stor9.length:
                        stor9.length++
                        if stor9.length > stor9.length + 1:
                            idx = stor9.length + 1
                            while stor9.length > idx:
                                stor9[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9.length < stor9.length
                        stor9[stor9.length].field_0 = uint128(block.number)
                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor9.length - 1 < stor9.length
                        if stor9[stor9.length].field_0 >= block.number:
                            require stor9.length - 1 < stor9.length
                            stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), block.number
                    else:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), parentSnapShotBlock
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] >= arg2
                    if not stor9.length:
                        stor9.length++
                        if stor9.length > stor9.length + 1:
                            idx = stor9.length + 1
                            while stor9.length > idx:
                                stor9[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9.length < stor9.length
                        stor9[stor9.length].field_0 = uint128(block.number)
                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor9.length - 1 < stor9.length
                        if stor9[stor9.length].field_0 >= block.number:
                            require stor9.length - 1 < stor9.length
                            stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
            else:
                require stor7[address(arg1)].field_0
                if stor7[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    if not stor7[address(arg1)].field_0:
                        require 0 >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                        else:
                            require 0 < stor7[address(arg1)].field_0
                            if block.number < stor7[address(arg1)].field_0:
                                require 0 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                idx = 0
                                while stor7[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 7)
                                    if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                        idx = idx
                                        continue 
                                    idx = idx + stor7[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][idx].field_128 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        s = stor9.length + 1
                                        while stor9.length > s:
                                            stor9[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        s = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > s:
                                            stor7[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
    else:
        require 0 < stor9.length
        if uint128(stor9.field_0) > block.number:
            if not parentTokenAddress:
                require 0 >= arg2
                if not stor7[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(-arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(-arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(-arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(-arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require stor7[address(arg1)].field_0
                    if stor7[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(-arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), block.number
                            else:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), parentSnapShotBlock
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(-arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if not stor7[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(-arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(-arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor7[address(arg1)].field_0
                                if block.number < stor7[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(-arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(-arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    idx = 0
                                    while stor7[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 7)
                                        if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                            idx = idx
                                            continue 
                                        idx = idx + stor7[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][idx].field_128 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(-arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(-arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
            else:
                require ext_code.size(parentTokenAddress)
                if block.number < parentSnapShotBlock:
                    staticcall parentTokenAddress.0x981b24d0 with:
                            gas gas_remaining wei
                           args block.number
                else:
                    staticcall parentTokenAddress.0x981b24d0 with:
                            gas gas_remaining wei
                           args parentSnapShotBlock
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] >= arg2
                if not stor7[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require stor7[address(arg1)].field_0
                    if stor7[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), block.number
                            else:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), parentSnapShotBlock
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if not stor7[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor7[address(arg1)].field_0
                                if block.number < stor7[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    idx = 0
                                    while stor7[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 7)
                                        if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                            idx = idx
                                            continue 
                                        idx = idx + stor7[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][idx].field_128 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
        else:
            if not stor9.length:
                require 0 >= arg2
                if not stor7[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require 0 >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(-arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(-arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] >= arg2
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(-arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(-arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                else:
                    require stor7[address(arg1)].field_0
                    if stor7[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(-arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), block.number
                            else:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), parentSnapShotBlock
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(-arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        if not stor7[address(arg1)].field_0:
                            require 0 >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(-arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(-arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(-arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                            else:
                                require 0 < stor7[address(arg1)].field_0
                                if block.number < stor7[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(-arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(-arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    idx = 0
                                    while stor7[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 7)
                                        if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                            idx = idx
                                            continue 
                                        idx = idx + stor7[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][idx].field_128 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(-arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(-arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
            else:
                require stor9.length - 1 < stor9.length
                if block.number >= stor9[stor9.length].field_0:
                    require stor9.length - 1 < stor9.length
                    require stor9[stor9.length].field_0 >= arg2
                    if not stor7[address(arg1)].field_0:
                        if not parentTokenAddress:
                            require 0 >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 - arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), block.number
                            else:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), parentSnapShotBlock
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] >= arg2
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 - arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                    else:
                        require stor7[address(arg1)].field_0
                        if stor7[address(arg1)].field_0 > block.number:
                            if not parentTokenAddress:
                                require 0 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 - arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), block.number
                                else:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), parentSnapShotBlock
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 - arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            if not stor7[address(arg1)].field_0:
                                require 0 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 - arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 - arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                else:
                                    require 0 < stor7[address(arg1)].field_0
                                    if block.number < stor7[address(arg1)].field_0:
                                        require 0 >= arg2
                                        if not stor9.length:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                        else:
                                            require stor9.length - 1 < stor9.length
                                            if stor9[stor9.length].field_0 >= block.number:
                                                require stor9.length - 1 < stor9.length
                                                stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 - arg2)
                                            else:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    idx = stor9.length + 1
                                                    while stor9.length > idx:
                                                        stor9[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        idx = 0
                                        while stor7[address(arg1)].field_0 - 1 > idx:
                                            require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                            mem[0] = sha3(address(arg1), 7)
                                            if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                                idx = idx
                                                continue 
                                            idx = idx + stor7[address(arg1)].field_0 / 2
                                            continue 
                                        require idx < stor7[address(arg1)].field_0
                                        require stor7[address(arg1)][idx].field_128 >= arg2
                                        if not stor9.length:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                        else:
                                            require stor9.length - 1 < stor9.length
                                            if stor9[stor9.length].field_0 >= block.number:
                                                require stor9.length - 1 < stor9.length
                                                stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 - arg2)
                                            else:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    s = stor9.length + 1
                                                    while stor9.length > s:
                                                        stor9[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 - arg2)
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    s = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > s:
                                                        stor7[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                else:
                    require 0 < stor9.length
                    if block.number < uint128(stor9.field_0):
                        require 0 >= arg2
                        if not stor7[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require 0 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(-arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), block.number
                                else:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), parentSnapShotBlock
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(-arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(-arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0
                            if stor7[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require 0 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(-arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(-arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require ext_code.size(parentTokenAddress)
                                    if block.number < parentSnapShotBlock:
                                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                                gas gas_remaining wei
                                               args address(arg1), block.number
                                    else:
                                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                                gas gas_remaining wei
                                               args address(arg1), parentSnapShotBlock
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(-arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(-arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                if not stor7[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(-arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(-arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(-arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
                                        if not stor9.length:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(-arg2)
                                        else:
                                            require stor9.length - 1 < stor9.length
                                            if stor9[stor9.length].field_0 >= block.number:
                                                require stor9.length - 1 < stor9.length
                                                stor9[stor9.length].field_0 = uint128(-arg2)
                                            else:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    idx = stor9.length + 1
                                                    while stor9.length > idx:
                                                        stor9[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(-arg2)
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require 0 < stor7[address(arg1)].field_0
                                        if block.number < stor7[address(arg1)].field_0:
                                            require 0 >= arg2
                                            if not stor9.length:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    idx = stor9.length + 1
                                                    while stor9.length > idx:
                                                        stor9[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(-arg2)
                                            else:
                                                require stor9.length - 1 < stor9.length
                                                if stor9[stor9.length].field_0 >= block.number:
                                                    require stor9.length - 1 < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(-arg2)
                                                else:
                                                    stor9.length++
                                                    if stor9.length > stor9.length + 1:
                                                        idx = stor9.length + 1
                                                        while stor9.length > idx:
                                                            stor9[idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor9.length < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(block.number)
                                                    stor9[stor9.length].field_128 = uint128(-arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                        idx = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > idx:
                                                            stor7[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            idx = 0
                                            while stor7[address(arg1)].field_0 - 1 > idx:
                                                require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 7)
                                                if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                                    idx = idx
                                                    continue 
                                                idx = idx + stor7[address(arg1)].field_0 / 2
                                                continue 
                                            require idx < stor7[address(arg1)].field_0
                                            require stor7[address(arg1)][idx].field_128 >= arg2
                                            if not stor9.length:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    s = stor9.length + 1
                                                    while stor9.length > s:
                                                        stor9[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(-arg2)
                                            else:
                                                require stor9.length - 1 < stor9.length
                                                if stor9[stor9.length].field_0 >= block.number:
                                                    require stor9.length - 1 < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(-arg2)
                                                else:
                                                    stor9.length++
                                                    if stor9.length > stor9.length + 1:
                                                        s = stor9.length + 1
                                                        while stor9.length > s:
                                                            stor9[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor9.length < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(block.number)
                                                    stor9[stor9.length].field_128 = uint128(-arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    s = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > s:
                                                        stor7[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                        s = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > s:
                                                            stor7[address(arg1)][s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][idx].field_128 - arg2)
                    else:
                        idx = 0
                        while stor9.length - 1 > idx:
                            require idx + stor9.length / 2 < stor9.length
                            mem[0] = 9
                            if stor9[0.5 / idx + stor9.length].field_0 > block.number:
                                idx = idx
                                continue 
                            idx = idx + stor9.length / 2
                            continue 
                        require idx < stor9.length
                        require stor9[idx].field_128 >= arg2
                        if not stor7[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require 0 >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        s = stor9.length + 1
                                        while stor9.length > s:
                                            stor9[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 - arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), block.number
                                else:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), parentSnapShotBlock
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] >= arg2
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        s = stor9.length + 1
                                        while stor9.length > s:
                                            stor9[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 - arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                        else:
                            require stor7[address(arg1)].field_0
                            if stor7[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require 0 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 - arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require ext_code.size(parentTokenAddress)
                                    if block.number < parentSnapShotBlock:
                                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                                gas gas_remaining wei
                                               args address(arg1), block.number
                                    else:
                                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                                gas gas_remaining wei
                                               args address(arg1), parentSnapShotBlock
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 - arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(ext_call.return_data[0] - arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(ext_call.return_data[0] - arg2)
                            else:
                                if not stor7[address(arg1)].field_0:
                                    require 0 >= arg2
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 - arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= arg2
                                        if not stor9.length:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                        else:
                                            require stor9.length - 1 < stor9.length
                                            if stor9[stor9.length].field_0 >= block.number:
                                                require stor9.length - 1 < stor9.length
                                                stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 - arg2)
                                            else:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    s = stor9.length + 1
                                                    while stor9.length > s:
                                                        stor9[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 - arg2)
                                    else:
                                        require 0 < stor7[address(arg1)].field_0
                                        if block.number < stor7[address(arg1)].field_0:
                                            require 0 >= arg2
                                            if not stor9.length:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    s = stor9.length + 1
                                                    while stor9.length > s:
                                                        stor9[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                            else:
                                                require stor9.length - 1 < stor9.length
                                                if stor9[stor9.length].field_0 >= block.number:
                                                    require stor9.length - 1 < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 - arg2)
                                                else:
                                                    stor9.length++
                                                    if stor9.length > stor9.length + 1:
                                                        s = stor9.length + 1
                                                        while stor9.length > s:
                                                            stor9[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor9.length < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(block.number)
                                                    stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(-arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                        idx = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > idx:
                                                            stor7[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(-arg2)
                                        else:
                                            s = 0
                                            while stor7[address(arg1)].field_0 - 1 > s:
                                                require s + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 7)
                                                if stor7[address(arg1)][0.5 / s + stor7[address(arg1)].field_0].field_0 > block.number:
                                                    s = s
                                                    continue 
                                                s = s + stor7[address(arg1)].field_0 / 2
                                                continue 
                                            require s < stor7[address(arg1)].field_0
                                            require stor7[address(arg1)][s].field_128 >= arg2
                                            if not stor9.length:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    t = stor9.length + 1
                                                    while stor9.length > t:
                                                        stor9[t].field_0 = 0
                                                        t = t + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                            else:
                                                require stor9.length - 1 < stor9.length
                                                if stor9[stor9.length].field_0 >= block.number:
                                                    require stor9.length - 1 < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 - arg2)
                                                else:
                                                    stor9.length++
                                                    if stor9.length > stor9.length + 1:
                                                        t = stor9.length + 1
                                                        while stor9.length > t:
                                                            stor9[t].field_0 = 0
                                                            t = t + 1
                                                            continue 
                                                    require stor9.length < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(block.number)
                                                    stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 - arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][s].field_128 - arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(stor7[address(arg1)][s].field_128 - arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                        idx = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > idx:
                                                            stor7[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(stor7[address(arg1)][s].field_128 - arg2)
    emit 0xfeddf252: arg2, arg1, 0
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not stor9.length:
        if not parentTokenAddress:
            require arg2 >= 0
            if not stor7[address(arg1)].field_0:
                if not parentTokenAddress:
                    require arg2 >= 0
                    if not stor9.length:
                        stor9.length++
                        if stor9.length > stor9.length + 1:
                            idx = stor9.length + 1
                            while stor9.length > idx:
                                stor9[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9.length < stor9.length
                        stor9[stor9.length].field_0 = uint128(block.number)
                        stor9[stor9.length].field_128 = uint128(arg2)
                    else:
                        require stor9.length - 1 < stor9.length
                        if stor9[stor9.length].field_0 >= block.number:
                            require stor9.length - 1 < stor9.length
                            stor9[stor9.length].field_0 = uint128(arg2)
                        else:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), block.number
                    else:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), parentSnapShotBlock
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                    if not stor9.length:
                        stor9.length++
                        if stor9.length > stor9.length + 1:
                            idx = stor9.length + 1
                            while stor9.length > idx:
                                stor9[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9.length < stor9.length
                        stor9[stor9.length].field_0 = uint128(block.number)
                        stor9[stor9.length].field_128 = uint128(arg2)
                    else:
                        require stor9.length - 1 < stor9.length
                        if stor9[stor9.length].field_0 >= block.number:
                            require stor9.length - 1 < stor9.length
                            stor9[stor9.length].field_0 = uint128(arg2)
                        else:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
            else:
                require stor7[address(arg1)].field_0
                if stor7[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    if not stor7[address(arg1)].field_0:
                        require arg2 >= 0
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 + arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                        else:
                            require 0 < stor7[address(arg1)].field_0
                            if block.number < stor7[address(arg1)].field_0:
                                require arg2 >= 0
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                idx = 0
                                while stor7[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 7)
                                    if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                        idx = idx
                                        continue 
                                    idx = idx + stor7[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][idx].field_128 + arg2 >= stor7[address(arg1)][idx].field_128
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        s = stor9.length + 1
                                        while stor9.length > s:
                                            stor9[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        s = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > s:
                                            stor7[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
        else:
            require ext_code.size(parentTokenAddress)
            if block.number < parentSnapShotBlock:
                staticcall parentTokenAddress.0x981b24d0 with:
                        gas gas_remaining wei
                       args block.number
            else:
                staticcall parentTokenAddress.0x981b24d0 with:
                        gas gas_remaining wei
                       args parentSnapShotBlock
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
            if not stor7[address(arg1)].field_0:
                if not parentTokenAddress:
                    require arg2 >= 0
                    if not stor9.length:
                        stor9.length++
                        if stor9.length > stor9.length + 1:
                            idx = stor9.length + 1
                            while stor9.length > idx:
                                stor9[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9.length < stor9.length
                        stor9[stor9.length].field_0 = uint128(block.number)
                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                    else:
                        require stor9.length - 1 < stor9.length
                        if stor9[stor9.length].field_0 >= block.number:
                            require stor9.length - 1 < stor9.length
                            stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require ext_code.size(parentTokenAddress)
                    if block.number < parentSnapShotBlock:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), block.number
                    else:
                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                gas gas_remaining wei
                               args address(arg1), parentSnapShotBlock
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                    if not stor9.length:
                        stor9.length++
                        if stor9.length > stor9.length + 1:
                            idx = stor9.length + 1
                            while stor9.length > idx:
                                stor9[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor9.length < stor9.length
                        stor9[stor9.length].field_0 = uint128(block.number)
                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                    else:
                        require stor9.length - 1 < stor9.length
                        if stor9[stor9.length].field_0 >= block.number:
                            require stor9.length - 1 < stor9.length
                            stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                    if not stor7[address(arg1)].field_0:
                        stor7[address(arg1)].field_0++
                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                            idx = stor7[address(arg1)].field_0 + 1
                            while stor7[address(arg1)].field_0 > idx:
                                stor7[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
            else:
                require stor7[address(arg1)].field_0
                if stor7[address(arg1)].field_0 > block.number:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    if not stor7[address(arg1)].field_0:
                        require arg2 >= 0
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                        if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 + arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                        else:
                            require 0 < stor7[address(arg1)].field_0
                            if block.number < stor7[address(arg1)].field_0:
                                require arg2 >= 0
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                idx = 0
                                while stor7[address(arg1)].field_0 - 1 > idx:
                                    require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 7)
                                    if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                        idx = idx
                                        continue 
                                    idx = idx + stor7[address(arg1)].field_0 / 2
                                    continue 
                                require idx < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][idx].field_128 + arg2 >= stor7[address(arg1)][idx].field_128
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        s = stor9.length + 1
                                        while stor9.length > s:
                                            stor9[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        s = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > s:
                                            stor7[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
    else:
        require 0 < stor9.length
        if uint128(stor9.field_0) > block.number:
            if not parentTokenAddress:
                require arg2 >= 0
                if not stor7[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    require stor7[address(arg1)].field_0
                    if stor7[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require arg2 >= 0
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), block.number
                            else:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), parentSnapShotBlock
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        if not stor7[address(arg1)].field_0:
                            require arg2 >= 0
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 + arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                            else:
                                require 0 < stor7[address(arg1)].field_0
                                if block.number < stor7[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    idx = 0
                                    while stor7[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 7)
                                        if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                            idx = idx
                                            continue 
                                        idx = idx + stor7[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][idx].field_128 + arg2 >= stor7[address(arg1)][idx].field_128
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
            else:
                require ext_code.size(parentTokenAddress)
                if block.number < parentSnapShotBlock:
                    staticcall parentTokenAddress.0x981b24d0 with:
                            gas gas_remaining wei
                           args block.number
                else:
                    staticcall parentTokenAddress.0x981b24d0 with:
                            gas gas_remaining wei
                           args parentSnapShotBlock
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                if not stor7[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    require stor7[address(arg1)].field_0
                    if stor7[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require arg2 >= 0
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), block.number
                            else:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), parentSnapShotBlock
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        if not stor7[address(arg1)].field_0:
                            require arg2 >= 0
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 + arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                            else:
                                require 0 < stor7[address(arg1)].field_0
                                if block.number < stor7[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    idx = 0
                                    while stor7[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 7)
                                        if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                            idx = idx
                                            continue 
                                        idx = idx + stor7[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][idx].field_128 + arg2 >= stor7[address(arg1)][idx].field_128
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(ext_call.return_data[0] + arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(ext_call.return_data[0] + arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
        else:
            if not stor9.length:
                require arg2 >= 0
                if not stor7[address(arg1)].field_0:
                    if not parentTokenAddress:
                        require arg2 >= 0
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require ext_code.size(parentTokenAddress)
                        if block.number < parentSnapShotBlock:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), block.number
                        else:
                            staticcall parentTokenAddress.0x4ee2cd7e with:
                                    gas gas_remaining wei
                                   args address(arg1), parentSnapShotBlock
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                        if not stor9.length:
                            stor9.length++
                            if stor9.length > stor9.length + 1:
                                idx = stor9.length + 1
                                while stor9.length > idx:
                                    stor9[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor9.length < stor9.length
                            stor9[stor9.length].field_0 = uint128(block.number)
                            stor9[stor9.length].field_128 = uint128(arg2)
                        else:
                            require stor9.length - 1 < stor9.length
                            if stor9[stor9.length].field_0 >= block.number:
                                require stor9.length - 1 < stor9.length
                                stor9[stor9.length].field_0 = uint128(arg2)
                            else:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                        if not stor7[address(arg1)].field_0:
                            stor7[address(arg1)].field_0++
                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                idx = stor7[address(arg1)].field_0 + 1
                                while stor7[address(arg1)].field_0 > idx:
                                    stor7[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                else:
                    require stor7[address(arg1)].field_0
                    if stor7[address(arg1)].field_0 > block.number:
                        if not parentTokenAddress:
                            require arg2 >= 0
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), block.number
                            else:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), parentSnapShotBlock
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        if not stor7[address(arg1)].field_0:
                            require arg2 >= 0
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                            if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 + arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                            else:
                                require 0 < stor7[address(arg1)].field_0
                                if block.number < stor7[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    idx = 0
                                    while stor7[address(arg1)].field_0 - 1 > idx:
                                        require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 7)
                                        if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                            idx = idx
                                            continue 
                                        idx = idx + stor7[address(arg1)].field_0 / 2
                                        continue 
                                    require idx < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][idx].field_128 + arg2 >= stor7[address(arg1)][idx].field_128
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            s = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > s:
                                                stor7[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
            else:
                require stor9.length - 1 < stor9.length
                if block.number >= stor9[stor9.length].field_0:
                    require stor9.length - 1 < stor9.length
                    require stor9[stor9.length].field_0 + arg2 >= stor9[stor9.length].field_0
                    if not stor7[address(arg1)].field_0:
                        if not parentTokenAddress:
                            require arg2 >= 0
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 + arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require ext_code.size(parentTokenAddress)
                            if block.number < parentSnapShotBlock:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), block.number
                            else:
                                staticcall parentTokenAddress.0x4ee2cd7e with:
                                        gas gas_remaining wei
                                       args address(arg1), parentSnapShotBlock
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                            if not stor9.length:
                                stor9.length++
                                if stor9.length > stor9.length + 1:
                                    idx = stor9.length + 1
                                    while stor9.length > idx:
                                        stor9[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor9.length < stor9.length
                                stor9[stor9.length].field_0 = uint128(block.number)
                                stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                            else:
                                require stor9.length - 1 < stor9.length
                                if stor9[stor9.length].field_0 >= block.number:
                                    require stor9.length - 1 < stor9.length
                                    stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 + arg2)
                                else:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                            if not stor7[address(arg1)].field_0:
                                stor7[address(arg1)].field_0++
                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                    idx = stor7[address(arg1)].field_0 + 1
                                    while stor7[address(arg1)].field_0 > idx:
                                        stor7[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                    else:
                        require stor7[address(arg1)].field_0
                        if stor7[address(arg1)].field_0 > block.number:
                            if not parentTokenAddress:
                                require arg2 >= 0
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 + arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), block.number
                                else:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), parentSnapShotBlock
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 + arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            if not stor7[address(arg1)].field_0:
                                require arg2 >= 0
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 + arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 + arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 + arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                else:
                                    require 0 < stor7[address(arg1)].field_0
                                    if block.number < stor7[address(arg1)].field_0:
                                        require arg2 >= 0
                                        if not stor9.length:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                        else:
                                            require stor9.length - 1 < stor9.length
                                            if stor9[stor9.length].field_0 >= block.number:
                                                require stor9.length - 1 < stor9.length
                                                stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 + arg2)
                                            else:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    idx = stor9.length + 1
                                                    while stor9.length > idx:
                                                        stor9[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        idx = 0
                                        while stor7[address(arg1)].field_0 - 1 > idx:
                                            require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                            mem[0] = sha3(address(arg1), 7)
                                            if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                                idx = idx
                                                continue 
                                            idx = idx + stor7[address(arg1)].field_0 / 2
                                            continue 
                                        require idx < stor7[address(arg1)].field_0
                                        require stor7[address(arg1)][idx].field_128 + arg2 >= stor7[address(arg1)][idx].field_128
                                        if not stor9.length:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                        else:
                                            require stor9.length - 1 < stor9.length
                                            if stor9[stor9.length].field_0 >= block.number:
                                                require stor9.length - 1 < stor9.length
                                                stor9[stor9.length].field_0 = uint128(stor9[stor9.length].field_0 + arg2)
                                            else:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    s = stor9.length + 1
                                                    while stor9.length > s:
                                                        stor9[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[stor9.length].field_0 + arg2)
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                s = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > s:
                                                    stor7[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    s = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > s:
                                                        stor7[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                else:
                    require 0 < stor9.length
                    if block.number < uint128(stor9.field_0):
                        require arg2 >= 0
                        if not stor7[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require arg2 >= 0
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), block.number
                                else:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), parentSnapShotBlock
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        idx = stor9.length + 1
                                        while stor9.length > idx:
                                            stor9[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor7[address(arg1)].field_0
                            if stor7[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require arg2 >= 0
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require ext_code.size(parentTokenAddress)
                                    if block.number < parentSnapShotBlock:
                                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                                gas gas_remaining wei
                                               args address(arg1), block.number
                                    else:
                                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                                gas gas_remaining wei
                                               args address(arg1), parentSnapShotBlock
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                if not stor7[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            idx = stor9.length + 1
                                            while stor9.length > idx:
                                                stor9[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 + arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
                                        if not stor9.length:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                idx = stor9.length + 1
                                                while stor9.length > idx:
                                                    stor9[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(arg2)
                                        else:
                                            require stor9.length - 1 < stor9.length
                                            if stor9[stor9.length].field_0 >= block.number:
                                                require stor9.length - 1 < stor9.length
                                                stor9[stor9.length].field_0 = uint128(arg2)
                                            else:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    idx = stor9.length + 1
                                                    while stor9.length > idx:
                                                        stor9[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(arg2)
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                    else:
                                        require 0 < stor7[address(arg1)].field_0
                                        if block.number < stor7[address(arg1)].field_0:
                                            require arg2 >= 0
                                            if not stor9.length:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    idx = stor9.length + 1
                                                    while stor9.length > idx:
                                                        stor9[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(arg2)
                                            else:
                                                require stor9.length - 1 < stor9.length
                                                if stor9[stor9.length].field_0 >= block.number:
                                                    require stor9.length - 1 < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(arg2)
                                                else:
                                                    stor9.length++
                                                    if stor9.length > stor9.length + 1:
                                                        idx = stor9.length + 1
                                                        while stor9.length > idx:
                                                            stor9[idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor9.length < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(block.number)
                                                    stor9[stor9.length].field_128 = uint128(arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                        idx = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > idx:
                                                            stor7[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                        else:
                                            idx = 0
                                            while stor7[address(arg1)].field_0 - 1 > idx:
                                                require idx + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 7)
                                                if stor7[address(arg1)][0.5 / idx + stor7[address(arg1)].field_0].field_0 > block.number:
                                                    idx = idx
                                                    continue 
                                                idx = idx + stor7[address(arg1)].field_0 / 2
                                                continue 
                                            require idx < stor7[address(arg1)].field_0
                                            require stor7[address(arg1)][idx].field_128 + arg2 >= stor7[address(arg1)][idx].field_128
                                            if not stor9.length:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    s = stor9.length + 1
                                                    while stor9.length > s:
                                                        stor9[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(arg2)
                                            else:
                                                require stor9.length - 1 < stor9.length
                                                if stor9[stor9.length].field_0 >= block.number:
                                                    require stor9.length - 1 < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(arg2)
                                                else:
                                                    stor9.length++
                                                    if stor9.length > stor9.length + 1:
                                                        s = stor9.length + 1
                                                        while stor9.length > s:
                                                            stor9[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor9.length < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(block.number)
                                                    stor9[stor9.length].field_128 = uint128(arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    s = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > s:
                                                        stor7[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                        s = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > s:
                                                            stor7[address(arg1)][s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][idx].field_128)
                    else:
                        idx = 0
                        while stor9.length - 1 > idx:
                            require idx + stor9.length / 2 < stor9.length
                            mem[0] = 9
                            if stor9[0.5 / idx + stor9.length].field_0 > block.number:
                                idx = idx
                                continue 
                            idx = idx + stor9.length / 2
                            continue 
                        require idx < stor9.length
                        require stor9[idx].field_128 + arg2 >= stor9[idx].field_128
                        if not stor7[address(arg1)].field_0:
                            if not parentTokenAddress:
                                require arg2 >= 0
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        s = stor9.length + 1
                                        while stor9.length > s:
                                            stor9[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 + arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require ext_code.size(parentTokenAddress)
                                if block.number < parentSnapShotBlock:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), block.number
                                else:
                                    staticcall parentTokenAddress.0x4ee2cd7e with:
                                            gas gas_remaining wei
                                           args address(arg1), parentSnapShotBlock
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                if not stor9.length:
                                    stor9.length++
                                    if stor9.length > stor9.length + 1:
                                        s = stor9.length + 1
                                        while stor9.length > s:
                                            stor9[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor9.length < stor9.length
                                    stor9[stor9.length].field_0 = uint128(block.number)
                                    stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                else:
                                    require stor9.length - 1 < stor9.length
                                    if stor9[stor9.length].field_0 >= block.number:
                                        require stor9.length - 1 < stor9.length
                                        stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 + arg2)
                                    else:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                if not stor7[address(arg1)].field_0:
                                    stor7[address(arg1)].field_0++
                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                        idx = stor7[address(arg1)].field_0 + 1
                                        while stor7[address(arg1)].field_0 > idx:
                                            stor7[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                        else:
                            require stor7[address(arg1)].field_0
                            if stor7[address(arg1)].field_0 > block.number:
                                if not parentTokenAddress:
                                    require arg2 >= 0
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 + arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require ext_code.size(parentTokenAddress)
                                    if block.number < parentSnapShotBlock:
                                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                                gas gas_remaining wei
                                               args address(arg1), block.number
                                    else:
                                        staticcall parentTokenAddress.0x4ee2cd7e with:
                                                gas gas_remaining wei
                                               args address(arg1), parentSnapShotBlock
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 + arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + ext_call.return_data[0])
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + ext_call.return_data[0])
                            else:
                                if not stor7[address(arg1)].field_0:
                                    require arg2 >= 0
                                    if not stor9.length:
                                        stor9.length++
                                        if stor9.length > stor9.length + 1:
                                            s = stor9.length + 1
                                            while stor9.length > s:
                                                stor9[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor9.length < stor9.length
                                        stor9[stor9.length].field_0 = uint128(block.number)
                                        stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                    else:
                                        require stor9.length - 1 < stor9.length
                                        if stor9[stor9.length].field_0 >= block.number:
                                            require stor9.length - 1 < stor9.length
                                            stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 + arg2)
                                        else:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                    if not stor7[address(arg1)].field_0:
                                        stor7[address(arg1)].field_0++
                                        if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                            idx = stor7[address(arg1)].field_0 + 1
                                            while stor7[address(arg1)].field_0 > idx:
                                                stor7[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                    if block.number >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0:
                                        require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                        require stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 + arg2 >= stor7[address(arg1)][stor7[address(arg1)].field_0].field_0
                                        if not stor9.length:
                                            stor9.length++
                                            if stor9.length > stor9.length + 1:
                                                s = stor9.length + 1
                                                while stor9.length > s:
                                                    stor9[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor9.length < stor9.length
                                            stor9[stor9.length].field_0 = uint128(block.number)
                                            stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                        else:
                                            require stor9.length - 1 < stor9.length
                                            if stor9[stor9.length].field_0 >= block.number:
                                                require stor9.length - 1 < stor9.length
                                                stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 + arg2)
                                            else:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    s = stor9.length + 1
                                                    while stor9.length > s:
                                                        stor9[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                        if not stor7[address(arg1)].field_0:
                                            stor7[address(arg1)].field_0++
                                            if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                idx = stor7[address(arg1)].field_0 + 1
                                                while stor7[address(arg1)].field_0 > idx:
                                                    stor7[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                        else:
                                            require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                            if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                            else:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][stor7[address(arg1)].field_0].field_0)
                                    else:
                                        require 0 < stor7[address(arg1)].field_0
                                        if block.number < stor7[address(arg1)].field_0:
                                            require arg2 >= 0
                                            if not stor9.length:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    s = stor9.length + 1
                                                    while stor9.length > s:
                                                        stor9[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                            else:
                                                require stor9.length - 1 < stor9.length
                                                if stor9[stor9.length].field_0 >= block.number:
                                                    require stor9.length - 1 < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 + arg2)
                                                else:
                                                    stor9.length++
                                                    if stor9.length > stor9.length + 1:
                                                        s = stor9.length + 1
                                                        while stor9.length > s:
                                                            stor9[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor9.length < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(block.number)
                                                    stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                        idx = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > idx:
                                                            stor7[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2)
                                        else:
                                            s = 0
                                            while stor7[address(arg1)].field_0 - 1 > s:
                                                require s + stor7[address(arg1)].field_0 / 2 < stor7[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 7)
                                                if stor7[address(arg1)][0.5 / s + stor7[address(arg1)].field_0].field_0 > block.number:
                                                    s = s
                                                    continue 
                                                s = s + stor7[address(arg1)].field_0 / 2
                                                continue 
                                            require s < stor7[address(arg1)].field_0
                                            require stor7[address(arg1)][s].field_128 + arg2 >= stor7[address(arg1)][s].field_128
                                            if not stor9.length:
                                                stor9.length++
                                                if stor9.length > stor9.length + 1:
                                                    t = stor9.length + 1
                                                    while stor9.length > t:
                                                        stor9[t].field_0 = 0
                                                        t = t + 1
                                                        continue 
                                                require stor9.length < stor9.length
                                                stor9[stor9.length].field_0 = uint128(block.number)
                                                stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                            else:
                                                require stor9.length - 1 < stor9.length
                                                if stor9[stor9.length].field_0 >= block.number:
                                                    require stor9.length - 1 < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(stor9[idx].field_128 + arg2)
                                                else:
                                                    stor9.length++
                                                    if stor9.length > stor9.length + 1:
                                                        t = stor9.length + 1
                                                        while stor9.length > t:
                                                            stor9[t].field_0 = 0
                                                            t = t + 1
                                                            continue 
                                                    require stor9.length < stor9.length
                                                    stor9[stor9.length].field_0 = uint128(block.number)
                                                    stor9[stor9.length].field_128 = uint128(stor9[idx].field_128 + arg2)
                                            if not stor7[address(arg1)].field_0:
                                                stor7[address(arg1)].field_0++
                                                if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                    idx = stor7[address(arg1)].field_0 + 1
                                                    while stor7[address(arg1)].field_0 > idx:
                                                        stor7[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][s].field_128)
                                            else:
                                                require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                if stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor7[address(arg1)].field_0 - 1 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(arg2 + stor7[address(arg1)][s].field_128)
                                                else:
                                                    stor7[address(arg1)].field_0++
                                                    if stor7[address(arg1)].field_0 > stor7[address(arg1)].field_0 + 1:
                                                        idx = stor7[address(arg1)].field_0 + 1
                                                        while stor7[address(arg1)].field_0 > idx:
                                                            stor7[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor7[address(arg1)].field_0 < stor7[address(arg1)].field_0
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor7[address(arg1)][stor7[address(arg1)].field_0].field_128 = uint128(arg2 + stor7[address(arg1)][s].field_128)
    emit 0xfeddf252: arg2, 0, arg1
    return 1
}



}
