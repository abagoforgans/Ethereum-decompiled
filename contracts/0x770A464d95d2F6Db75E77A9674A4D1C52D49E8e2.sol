contract main {




// =====================  Runtime code  =====================


#
#  - burn(address arg1, uint256 arg2)
#
uint8 decimals; offset 160
address owner;
array of struct stor1;
array of struct stor2;

function decimals() payable {
    return decimals
}

function owner() payable {
    return owner
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function totalSupply() payable {
    if not stor2.length:
        return 0
    require 0 < stor2.length
    if uint128(stor2.field_0) > block.number:
        return 0
    if not stor2.length:
        return 0
    require stor2.length - 1 < stor2.length
    if block.number >= stor2[stor2.length].field_0:
        if stor2.length - 1 < stor2.length:
            return stor2[stor2.length].field_0
    else:
        if 0 < stor2.length:
            if block.number < uint128(stor2.field_0):
                return 0
            idx = 0
            while stor2.length - 1 > idx:
                require stor2.length + idx / 2 < stor2.length
                mem[0] = 2
                if stor2[0.5 / stor2.length + idx].field_0 > block.number:
                    idx = idx
                    continue 
                idx = stor2.length + idx / 2
                continue 
            if idx < stor2.length:
                return stor2[idx].field_128
    revert
}

function totalSupplyAt(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor2.length:
        return 0
    require 0 < stor2.length
    if uint128(stor2.field_0) > arg1:
        return 0
    if not stor2.length:
        return 0
    require stor2.length - 1 < stor2.length
    if arg1 >= stor2[stor2.length].field_0:
        if stor2.length - 1 < stor2.length:
            return stor2[stor2.length].field_0
    else:
        if 0 < stor2.length:
            if arg1 < uint128(stor2.field_0):
                return 0
            idx = 0
            while stor2.length - 1 > idx:
                require stor2.length + idx / 2 < stor2.length
                mem[0] = 2
                if stor2[0.5 / stor2.length + idx].field_0 > arg1:
                    idx = idx
                    continue 
                idx = stor2.length + idx / 2
                continue 
            if idx < stor2.length:
                return stor2[idx].field_128
    revert
}

function balanceOfAt(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor1[address(arg1)].field_0:
        return 0
    require 0 < stor1[address(arg1)].field_0
    if stor1[address(arg1)].field_0 > arg2:
        return 0
    if not stor1[address(arg1)].field_0:
        return 0
    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
    if arg2 >= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0:
        if stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0:
            return stor1[address(arg1)][stor1[address(arg1)].field_0].field_0
    else:
        if 0 < stor1[address(arg1)].field_0:
            if arg2 < stor1[address(arg1)].field_0:
                return 0
            idx = 0
            while stor1[address(arg1)].field_0 - 1 > idx:
                require stor1[address(arg1)].field_0 + idx / 2 < stor1[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 1)
                if stor1[address(arg1)][0.5 / stor1[address(arg1)].field_0 + idx].field_0 > arg2:
                    idx = idx
                    continue 
                idx = stor1[address(arg1)].field_0 + idx / 2
                continue 
            if idx < stor1[address(arg1)].field_0:
                return stor1[address(arg1)][idx].field_128
    revert
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[address(arg1)].field_0:
        return 0
    require 0 < stor1[address(arg1)].field_0
    if stor1[address(arg1)].field_0 > block.number:
        return 0
    if not stor1[address(arg1)].field_0:
        return 0
    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
    if block.number >= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0:
        if stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0:
            return stor1[address(arg1)][stor1[address(arg1)].field_0].field_0
    else:
        if 0 < stor1[address(arg1)].field_0:
            if block.number < stor1[address(arg1)].field_0:
                return 0
            idx = 0
            while stor1[address(arg1)].field_0 - 1 > idx:
                require stor1[address(arg1)].field_0 + idx / 2 < stor1[address(arg1)].field_0
                mem[0] = sha3(address(arg1), 1)
                if stor1[address(arg1)][0.5 / stor1[address(arg1)].field_0 + idx].field_0 > block.number:
                    idx = idx
                    continue 
                idx = stor1[address(arg1)].field_0 + idx / 2
                continue 
            if idx < stor1[address(arg1)].field_0:
                return stor1[address(arg1)][idx].field_128
    revert
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if not stor2.length:
        require 0 <= arg2
        if not stor1[address(arg1)].field_0:
            require 0 <= arg2
            require arg2 == uint128(arg2)
            if not stor2.length:
                stor2.length++
                if stor2.length > stor2.length + 1:
                    idx = stor2.length + 1
                    while stor2.length > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor2.length < stor2.length
                stor2[stor2.length].field_0 = uint128(block.number)
                stor2[stor2.length].field_128 = uint128(arg2)
            else:
                require stor2.length - 1 < stor2.length
                if stor2[stor2.length].field_0 >= block.number:
                    require stor2.length - 1 < stor2.length
                    stor2[stor2.length].field_0 = uint128(arg2)
                else:
                    stor2.length++
                    if stor2.length > stor2.length + 1:
                        idx = stor2.length + 1
                        while stor2.length > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor2.length < stor2.length
                    stor2[stor2.length].field_0 = uint128(block.number)
                    stor2[stor2.length].field_128 = uint128(arg2)
            require arg2 == uint128(arg2)
            if not stor1[address(arg1)].field_0:
                stor1[address(arg1)].field_0++
                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                    idx = stor1[address(arg1)].field_0 + 1
                    while stor1[address(arg1)].field_0 > idx:
                        stor1[address(arg1)][idx].field_0 = 0
                        idx = idx + 1
                        continue 
                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
            else:
                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                else:
                    stor1[address(arg1)].field_0++
                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                        idx = stor1[address(arg1)].field_0 + 1
                        while stor1[address(arg1)].field_0 > idx:
                            stor1[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
        else:
            require 0 < stor1[address(arg1)].field_0
            if stor1[address(arg1)].field_0 > block.number:
                require 0 <= arg2
                require arg2 == uint128(arg2)
                if not stor2.length:
                    stor2.length++
                    if stor2.length > stor2.length + 1:
                        idx = stor2.length + 1
                        while stor2.length > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor2.length < stor2.length
                    stor2[stor2.length].field_0 = uint128(block.number)
                    stor2[stor2.length].field_128 = uint128(arg2)
                else:
                    require stor2.length - 1 < stor2.length
                    if stor2[stor2.length].field_0 >= block.number:
                        require stor2.length - 1 < stor2.length
                        stor2[stor2.length].field_0 = uint128(arg2)
                    else:
                        stor2.length++
                        if stor2.length > stor2.length + 1:
                            idx = stor2.length + 1
                            while stor2.length > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = uint128(block.number)
                        stor2[stor2.length].field_128 = uint128(arg2)
                require arg2 == uint128(arg2)
                if not stor1[address(arg1)].field_0:
                    stor1[address(arg1)].field_0++
                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                        idx = stor1[address(arg1)].field_0 + 1
                        while stor1[address(arg1)].field_0 > idx:
                            stor1[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                    if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                    else:
                        stor1[address(arg1)].field_0++
                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                            idx = stor1[address(arg1)].field_0 + 1
                            while stor1[address(arg1)].field_0 > idx:
                                stor1[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
            else:
                if not stor1[address(arg1)].field_0:
                    require 0 <= arg2
                    require arg2 == uint128(arg2)
                    if not stor2.length:
                        stor2.length++
                        if stor2.length > stor2.length + 1:
                            idx = stor2.length + 1
                            while stor2.length > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = uint128(block.number)
                        stor2[stor2.length].field_128 = uint128(arg2)
                    else:
                        require stor2.length - 1 < stor2.length
                        if stor2[stor2.length].field_0 >= block.number:
                            require stor2.length - 1 < stor2.length
                            stor2[stor2.length].field_0 = uint128(arg2)
                        else:
                            stor2.length++
                            if stor2.length > stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = uint128(block.number)
                            stor2[stor2.length].field_128 = uint128(arg2)
                    require arg2 == uint128(arg2)
                    if not stor1[address(arg1)].field_0:
                        stor1[address(arg1)].field_0++
                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                            idx = stor1[address(arg1)].field_0 + 1
                            while stor1[address(arg1)].field_0 > idx:
                                stor1[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                        if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor1[address(arg1)].field_0++
                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                idx = stor1[address(arg1)].field_0 + 1
                                while stor1[address(arg1)].field_0 > idx:
                                    stor1[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                    if block.number >= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0:
                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                        require stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 <= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 + arg2
                        require arg2 == uint128(arg2)
                        if not stor2.length:
                            stor2.length++
                            if stor2.length > stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = uint128(block.number)
                            stor2[stor2.length].field_128 = uint128(arg2)
                        else:
                            require stor2.length - 1 < stor2.length
                            if stor2[stor2.length].field_0 >= block.number:
                                require stor2.length - 1 < stor2.length
                                stor2[stor2.length].field_0 = uint128(arg2)
                            else:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    idx = stor2.length + 1
                                    while stor2.length > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(arg2)
                        require arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 == uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                        if not stor1[address(arg1)].field_0:
                            stor1[address(arg1)].field_0++
                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                idx = stor1[address(arg1)].field_0 + 1
                                while stor1[address(arg1)].field_0 > idx:
                                    stor1[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                        else:
                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                            if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                            else:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                    else:
                        require 0 < stor1[address(arg1)].field_0
                        if block.number < stor1[address(arg1)].field_0:
                            require 0 <= arg2
                            require arg2 == uint128(arg2)
                            if not stor2.length:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    idx = stor2.length + 1
                                    while stor2.length > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(arg2)
                            else:
                                require stor2.length - 1 < stor2.length
                                if stor2[stor2.length].field_0 >= block.number:
                                    require stor2.length - 1 < stor2.length
                                    stor2[stor2.length].field_0 = uint128(arg2)
                                else:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        idx = stor2.length + 1
                                        while stor2.length > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(arg2)
                            require arg2 == uint128(arg2)
                            if not stor1[address(arg1)].field_0:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            idx = 0
                            while stor1[address(arg1)].field_0 - 1 > idx:
                                require stor1[address(arg1)].field_0 + idx / 2 < stor1[address(arg1)].field_0
                                mem[0] = sha3(address(arg1), 1)
                                if stor1[address(arg1)][0.5 / stor1[address(arg1)].field_0 + idx].field_0 > block.number:
                                    idx = idx
                                    continue 
                                idx = stor1[address(arg1)].field_0 + idx / 2
                                continue 
                            require idx < stor1[address(arg1)].field_0
                            require stor1[address(arg1)][idx].field_128 <= stor1[address(arg1)][idx].field_128 + arg2
                            require arg2 == uint128(arg2)
                            if not stor2.length:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    s = stor2.length + 1
                                    while stor2.length > s:
                                        stor2[s].field_0 = 0
                                        s = s + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(arg2)
                            else:
                                require stor2.length - 1 < stor2.length
                                if stor2[stor2.length].field_0 >= block.number:
                                    require stor2.length - 1 < stor2.length
                                    stor2[stor2.length].field_0 = uint128(arg2)
                                else:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        s = stor2.length + 1
                                        while stor2.length > s:
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(arg2)
                            require arg2 + stor1[address(arg1)][idx].field_128 == uint128(arg2 + stor1[address(arg1)][idx].field_128)
                            if not stor1[address(arg1)].field_0:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    s = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > s:
                                        stor1[address(arg1)][s].field_0 = 0
                                        s = s + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                            else:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                else:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        s = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > s:
                                            stor1[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
    else:
        require 0 < stor2.length
        if uint128(stor2.field_0) > block.number:
            require 0 <= arg2
            if not stor1[address(arg1)].field_0:
                require 0 <= arg2
                require arg2 == uint128(arg2)
                if not stor2.length:
                    stor2.length++
                    if stor2.length > stor2.length + 1:
                        idx = stor2.length + 1
                        while stor2.length > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor2.length < stor2.length
                    stor2[stor2.length].field_0 = uint128(block.number)
                    stor2[stor2.length].field_128 = uint128(arg2)
                else:
                    require stor2.length - 1 < stor2.length
                    if stor2[stor2.length].field_0 >= block.number:
                        require stor2.length - 1 < stor2.length
                        stor2[stor2.length].field_0 = uint128(arg2)
                    else:
                        stor2.length++
                        if stor2.length > stor2.length + 1:
                            idx = stor2.length + 1
                            while stor2.length > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = uint128(block.number)
                        stor2[stor2.length].field_128 = uint128(arg2)
                require arg2 == uint128(arg2)
                if not stor1[address(arg1)].field_0:
                    stor1[address(arg1)].field_0++
                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                        idx = stor1[address(arg1)].field_0 + 1
                        while stor1[address(arg1)].field_0 > idx:
                            stor1[address(arg1)][idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                    if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                    else:
                        stor1[address(arg1)].field_0++
                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                            idx = stor1[address(arg1)].field_0 + 1
                            while stor1[address(arg1)].field_0 > idx:
                                stor1[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
            else:
                require 0 < stor1[address(arg1)].field_0
                if stor1[address(arg1)].field_0 > block.number:
                    require 0 <= arg2
                    require arg2 == uint128(arg2)
                    if not stor2.length:
                        stor2.length++
                        if stor2.length > stor2.length + 1:
                            idx = stor2.length + 1
                            while stor2.length > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = uint128(block.number)
                        stor2[stor2.length].field_128 = uint128(arg2)
                    else:
                        require stor2.length - 1 < stor2.length
                        if stor2[stor2.length].field_0 >= block.number:
                            require stor2.length - 1 < stor2.length
                            stor2[stor2.length].field_0 = uint128(arg2)
                        else:
                            stor2.length++
                            if stor2.length > stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = uint128(block.number)
                            stor2[stor2.length].field_128 = uint128(arg2)
                    require arg2 == uint128(arg2)
                    if not stor1[address(arg1)].field_0:
                        stor1[address(arg1)].field_0++
                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                            idx = stor1[address(arg1)].field_0 + 1
                            while stor1[address(arg1)].field_0 > idx:
                                stor1[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                        if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor1[address(arg1)].field_0++
                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                idx = stor1[address(arg1)].field_0 + 1
                                while stor1[address(arg1)].field_0 > idx:
                                    stor1[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    if not stor1[address(arg1)].field_0:
                        require 0 <= arg2
                        require arg2 == uint128(arg2)
                        if not stor2.length:
                            stor2.length++
                            if stor2.length > stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = uint128(block.number)
                            stor2[stor2.length].field_128 = uint128(arg2)
                        else:
                            require stor2.length - 1 < stor2.length
                            if stor2[stor2.length].field_0 >= block.number:
                                require stor2.length - 1 < stor2.length
                                stor2[stor2.length].field_0 = uint128(arg2)
                            else:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    idx = stor2.length + 1
                                    while stor2.length > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(arg2)
                        require arg2 == uint128(arg2)
                        if not stor1[address(arg1)].field_0:
                            stor1[address(arg1)].field_0++
                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                idx = stor1[address(arg1)].field_0 + 1
                                while stor1[address(arg1)].field_0 > idx:
                                    stor1[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                            if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                        if block.number >= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0:
                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                            require stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 <= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 + arg2
                            require arg2 == uint128(arg2)
                            if not stor2.length:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    idx = stor2.length + 1
                                    while stor2.length > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(arg2)
                            else:
                                require stor2.length - 1 < stor2.length
                                if stor2[stor2.length].field_0 >= block.number:
                                    require stor2.length - 1 < stor2.length
                                    stor2[stor2.length].field_0 = uint128(arg2)
                                else:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        idx = stor2.length + 1
                                        while stor2.length > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(arg2)
                            require arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 == uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                            if not stor1[address(arg1)].field_0:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                            else:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                else:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                        else:
                            require 0 < stor1[address(arg1)].field_0
                            if block.number < stor1[address(arg1)].field_0:
                                require 0 <= arg2
                                require arg2 == uint128(arg2)
                                if not stor2.length:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        idx = stor2.length + 1
                                        while stor2.length > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(arg2)
                                else:
                                    require stor2.length - 1 < stor2.length
                                    if stor2[stor2.length].field_0 >= block.number:
                                        require stor2.length - 1 < stor2.length
                                        stor2[stor2.length].field_0 = uint128(arg2)
                                    else:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            idx = stor2.length + 1
                                            while stor2.length > idx:
                                                stor2[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(arg2)
                                require arg2 == uint128(arg2)
                                if not stor1[address(arg1)].field_0:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            idx = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > idx:
                                                stor1[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                idx = 0
                                while stor1[address(arg1)].field_0 - 1 > idx:
                                    require stor1[address(arg1)].field_0 + idx / 2 < stor1[address(arg1)].field_0
                                    mem[0] = sha3(address(arg1), 1)
                                    if stor1[address(arg1)][0.5 / stor1[address(arg1)].field_0 + idx].field_0 > block.number:
                                        idx = idx
                                        continue 
                                    idx = stor1[address(arg1)].field_0 + idx / 2
                                    continue 
                                require idx < stor1[address(arg1)].field_0
                                require stor1[address(arg1)][idx].field_128 <= stor1[address(arg1)][idx].field_128 + arg2
                                require arg2 == uint128(arg2)
                                if not stor2.length:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        s = stor2.length + 1
                                        while stor2.length > s:
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(arg2)
                                else:
                                    require stor2.length - 1 < stor2.length
                                    if stor2[stor2.length].field_0 >= block.number:
                                        require stor2.length - 1 < stor2.length
                                        stor2[stor2.length].field_0 = uint128(arg2)
                                    else:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            s = stor2.length + 1
                                            while stor2.length > s:
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(arg2)
                                require arg2 + stor1[address(arg1)][idx].field_128 == uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                if not stor1[address(arg1)].field_0:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        s = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > s:
                                            stor1[address(arg1)][s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                else:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                    else:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            s = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > s:
                                                stor1[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
        else:
            if not stor2.length:
                require 0 <= arg2
                if not stor1[address(arg1)].field_0:
                    require 0 <= arg2
                    require arg2 == uint128(arg2)
                    if not stor2.length:
                        stor2.length++
                        if stor2.length > stor2.length + 1:
                            idx = stor2.length + 1
                            while stor2.length > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor2.length < stor2.length
                        stor2[stor2.length].field_0 = uint128(block.number)
                        stor2[stor2.length].field_128 = uint128(arg2)
                    else:
                        require stor2.length - 1 < stor2.length
                        if stor2[stor2.length].field_0 >= block.number:
                            require stor2.length - 1 < stor2.length
                            stor2[stor2.length].field_0 = uint128(arg2)
                        else:
                            stor2.length++
                            if stor2.length > stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = uint128(block.number)
                            stor2[stor2.length].field_128 = uint128(arg2)
                    require arg2 == uint128(arg2)
                    if not stor1[address(arg1)].field_0:
                        stor1[address(arg1)].field_0++
                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                            idx = stor1[address(arg1)].field_0 + 1
                            while stor1[address(arg1)].field_0 > idx:
                                stor1[address(arg1)][idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                        if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                        else:
                            stor1[address(arg1)].field_0++
                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                idx = stor1[address(arg1)].field_0 + 1
                                while stor1[address(arg1)].field_0 > idx:
                                    stor1[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                else:
                    require 0 < stor1[address(arg1)].field_0
                    if stor1[address(arg1)].field_0 > block.number:
                        require 0 <= arg2
                        require arg2 == uint128(arg2)
                        if not stor2.length:
                            stor2.length++
                            if stor2.length > stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = uint128(block.number)
                            stor2[stor2.length].field_128 = uint128(arg2)
                        else:
                            require stor2.length - 1 < stor2.length
                            if stor2[stor2.length].field_0 >= block.number:
                                require stor2.length - 1 < stor2.length
                                stor2[stor2.length].field_0 = uint128(arg2)
                            else:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    idx = stor2.length + 1
                                    while stor2.length > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(arg2)
                        require arg2 == uint128(arg2)
                        if not stor1[address(arg1)].field_0:
                            stor1[address(arg1)].field_0++
                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                idx = stor1[address(arg1)].field_0 + 1
                                while stor1[address(arg1)].field_0 > idx:
                                    stor1[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                            if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        if not stor1[address(arg1)].field_0:
                            require 0 <= arg2
                            require arg2 == uint128(arg2)
                            if not stor2.length:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    idx = stor2.length + 1
                                    while stor2.length > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(arg2)
                            else:
                                require stor2.length - 1 < stor2.length
                                if stor2[stor2.length].field_0 >= block.number:
                                    require stor2.length - 1 < stor2.length
                                    stor2[stor2.length].field_0 = uint128(arg2)
                                else:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        idx = stor2.length + 1
                                        while stor2.length > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(arg2)
                            require arg2 == uint128(arg2)
                            if not stor1[address(arg1)].field_0:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                            if block.number >= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                require stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 <= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 + arg2
                                require arg2 == uint128(arg2)
                                if not stor2.length:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        idx = stor2.length + 1
                                        while stor2.length > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(arg2)
                                else:
                                    require stor2.length - 1 < stor2.length
                                    if stor2[stor2.length].field_0 >= block.number:
                                        require stor2.length - 1 < stor2.length
                                        stor2[stor2.length].field_0 = uint128(arg2)
                                    else:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            idx = stor2.length + 1
                                            while stor2.length > idx:
                                                stor2[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(arg2)
                                require arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 == uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                if not stor1[address(arg1)].field_0:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                else:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                    else:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            idx = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > idx:
                                                stor1[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                            else:
                                require 0 < stor1[address(arg1)].field_0
                                if block.number < stor1[address(arg1)].field_0:
                                    require 0 <= arg2
                                    require arg2 == uint128(arg2)
                                    if not stor2.length:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            idx = stor2.length + 1
                                            while stor2.length > idx:
                                                stor2[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(arg2)
                                    else:
                                        require stor2.length - 1 < stor2.length
                                        if stor2[stor2.length].field_0 >= block.number:
                                            require stor2.length - 1 < stor2.length
                                            stor2[stor2.length].field_0 = uint128(arg2)
                                        else:
                                            stor2.length++
                                            if stor2.length > stor2.length + 1:
                                                idx = stor2.length + 1
                                                while stor2.length > idx:
                                                    stor2[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor2.length < stor2.length
                                            stor2[stor2.length].field_0 = uint128(block.number)
                                            stor2[stor2.length].field_128 = uint128(arg2)
                                    require arg2 == uint128(arg2)
                                    if not stor1[address(arg1)].field_0:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            idx = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > idx:
                                                stor1[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor1[address(arg1)].field_0++
                                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                idx = stor1[address(arg1)].field_0 + 1
                                                while stor1[address(arg1)].field_0 > idx:
                                                    stor1[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    idx = 0
                                    while stor1[address(arg1)].field_0 - 1 > idx:
                                        require stor1[address(arg1)].field_0 + idx / 2 < stor1[address(arg1)].field_0
                                        mem[0] = sha3(address(arg1), 1)
                                        if stor1[address(arg1)][0.5 / stor1[address(arg1)].field_0 + idx].field_0 > block.number:
                                            idx = idx
                                            continue 
                                        idx = stor1[address(arg1)].field_0 + idx / 2
                                        continue 
                                    require idx < stor1[address(arg1)].field_0
                                    require stor1[address(arg1)][idx].field_128 <= stor1[address(arg1)][idx].field_128 + arg2
                                    require arg2 == uint128(arg2)
                                    if not stor2.length:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            s = stor2.length + 1
                                            while stor2.length > s:
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(arg2)
                                    else:
                                        require stor2.length - 1 < stor2.length
                                        if stor2[stor2.length].field_0 >= block.number:
                                            require stor2.length - 1 < stor2.length
                                            stor2[stor2.length].field_0 = uint128(arg2)
                                        else:
                                            stor2.length++
                                            if stor2.length > stor2.length + 1:
                                                s = stor2.length + 1
                                                while stor2.length > s:
                                                    stor2[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor2.length < stor2.length
                                            stor2[stor2.length].field_0 = uint128(block.number)
                                            stor2[stor2.length].field_128 = uint128(arg2)
                                    require arg2 + stor1[address(arg1)][idx].field_128 == uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                    if not stor1[address(arg1)].field_0:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            s = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > s:
                                                stor1[address(arg1)][s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                    else:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                        else:
                                            stor1[address(arg1)].field_0++
                                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                s = stor1[address(arg1)].field_0 + 1
                                                while stor1[address(arg1)].field_0 > s:
                                                    stor1[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
            else:
                require stor2.length - 1 < stor2.length
                if block.number >= stor2[stor2.length].field_0:
                    require stor2.length - 1 < stor2.length
                    require stor2[stor2.length].field_0 <= stor2[stor2.length].field_0 + arg2
                    if not stor1[address(arg1)].field_0:
                        require 0 <= arg2
                        require stor2[stor2.length].field_0 + arg2 == uint128(stor2[stor2.length].field_0 + arg2)
                        if not stor2.length:
                            stor2.length++
                            if stor2.length > stor2.length + 1:
                                idx = stor2.length + 1
                                while stor2.length > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor2.length < stor2.length
                            stor2[stor2.length].field_0 = uint128(block.number)
                            stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                        else:
                            require stor2.length - 1 < stor2.length
                            if stor2[stor2.length].field_0 >= block.number:
                                require stor2.length - 1 < stor2.length
                                stor2[stor2.length].field_0 = uint128(stor2[stor2.length].field_0 + arg2)
                            else:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    idx = stor2.length + 1
                                    while stor2.length > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                        require arg2 == uint128(arg2)
                        if not stor1[address(arg1)].field_0:
                            stor1[address(arg1)].field_0++
                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                idx = stor1[address(arg1)].field_0 + 1
                                while stor1[address(arg1)].field_0 > idx:
                                    stor1[address(arg1)][idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                            if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                            else:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                    else:
                        require 0 < stor1[address(arg1)].field_0
                        if stor1[address(arg1)].field_0 > block.number:
                            require 0 <= arg2
                            require stor2[stor2.length].field_0 + arg2 == uint128(stor2[stor2.length].field_0 + arg2)
                            if not stor2.length:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    idx = stor2.length + 1
                                    while stor2.length > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                            else:
                                require stor2.length - 1 < stor2.length
                                if stor2[stor2.length].field_0 >= block.number:
                                    require stor2.length - 1 < stor2.length
                                    stor2[stor2.length].field_0 = uint128(stor2[stor2.length].field_0 + arg2)
                                else:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        idx = stor2.length + 1
                                        while stor2.length > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                            require arg2 == uint128(arg2)
                            if not stor1[address(arg1)].field_0:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            if not stor1[address(arg1)].field_0:
                                require 0 <= arg2
                                require stor2[stor2.length].field_0 + arg2 == uint128(stor2[stor2.length].field_0 + arg2)
                                if not stor2.length:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        idx = stor2.length + 1
                                        while stor2.length > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                                else:
                                    require stor2.length - 1 < stor2.length
                                    if stor2[stor2.length].field_0 >= block.number:
                                        require stor2.length - 1 < stor2.length
                                        stor2[stor2.length].field_0 = uint128(stor2[stor2.length].field_0 + arg2)
                                    else:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            idx = stor2.length + 1
                                            while stor2.length > idx:
                                                stor2[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                                require arg2 == uint128(arg2)
                                if not stor1[address(arg1)].field_0:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            idx = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > idx:
                                                stor1[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                if block.number >= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    require stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 <= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 + arg2
                                    require stor2[stor2.length].field_0 + arg2 == uint128(stor2[stor2.length].field_0 + arg2)
                                    if not stor2.length:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            idx = stor2.length + 1
                                            while stor2.length > idx:
                                                stor2[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                                    else:
                                        require stor2.length - 1 < stor2.length
                                        if stor2[stor2.length].field_0 >= block.number:
                                            require stor2.length - 1 < stor2.length
                                            stor2[stor2.length].field_0 = uint128(stor2[stor2.length].field_0 + arg2)
                                        else:
                                            stor2.length++
                                            if stor2.length > stor2.length + 1:
                                                idx = stor2.length + 1
                                                while stor2.length > idx:
                                                    stor2[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor2.length < stor2.length
                                            stor2[stor2.length].field_0 = uint128(block.number)
                                            stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                                    require arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 == uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                    if not stor1[address(arg1)].field_0:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            idx = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > idx:
                                                stor1[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                    else:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                        else:
                                            stor1[address(arg1)].field_0++
                                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                idx = stor1[address(arg1)].field_0 + 1
                                                while stor1[address(arg1)].field_0 > idx:
                                                    stor1[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                else:
                                    require 0 < stor1[address(arg1)].field_0
                                    if block.number < stor1[address(arg1)].field_0:
                                        require 0 <= arg2
                                        require stor2[stor2.length].field_0 + arg2 == uint128(stor2[stor2.length].field_0 + arg2)
                                        if not stor2.length:
                                            stor2.length++
                                            if stor2.length > stor2.length + 1:
                                                idx = stor2.length + 1
                                                while stor2.length > idx:
                                                    stor2[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor2.length < stor2.length
                                            stor2[stor2.length].field_0 = uint128(block.number)
                                            stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                                        else:
                                            require stor2.length - 1 < stor2.length
                                            if stor2[stor2.length].field_0 >= block.number:
                                                require stor2.length - 1 < stor2.length
                                                stor2[stor2.length].field_0 = uint128(stor2[stor2.length].field_0 + arg2)
                                            else:
                                                stor2.length++
                                                if stor2.length > stor2.length + 1:
                                                    idx = stor2.length + 1
                                                    while stor2.length > idx:
                                                        stor2[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor2.length < stor2.length
                                                stor2[stor2.length].field_0 = uint128(block.number)
                                                stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                                        require arg2 == uint128(arg2)
                                        if not stor1[address(arg1)].field_0:
                                            stor1[address(arg1)].field_0++
                                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                idx = stor1[address(arg1)].field_0 + 1
                                                while stor1[address(arg1)].field_0 > idx:
                                                    stor1[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                        else:
                                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                            if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                            else:
                                                stor1[address(arg1)].field_0++
                                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                    idx = stor1[address(arg1)].field_0 + 1
                                                    while stor1[address(arg1)].field_0 > idx:
                                                        stor1[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        idx = 0
                                        while stor1[address(arg1)].field_0 - 1 > idx:
                                            require stor1[address(arg1)].field_0 + idx / 2 < stor1[address(arg1)].field_0
                                            mem[0] = sha3(address(arg1), 1)
                                            if stor1[address(arg1)][0.5 / stor1[address(arg1)].field_0 + idx].field_0 > block.number:
                                                idx = idx
                                                continue 
                                            idx = stor1[address(arg1)].field_0 + idx / 2
                                            continue 
                                        require idx < stor1[address(arg1)].field_0
                                        require stor1[address(arg1)][idx].field_128 <= stor1[address(arg1)][idx].field_128 + arg2
                                        require stor2[stor2.length].field_0 + arg2 == uint128(stor2[stor2.length].field_0 + arg2)
                                        if not stor2.length:
                                            stor2.length++
                                            if stor2.length > stor2.length + 1:
                                                s = stor2.length + 1
                                                while stor2.length > s:
                                                    stor2[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor2.length < stor2.length
                                            stor2[stor2.length].field_0 = uint128(block.number)
                                            stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                                        else:
                                            require stor2.length - 1 < stor2.length
                                            if stor2[stor2.length].field_0 >= block.number:
                                                require stor2.length - 1 < stor2.length
                                                stor2[stor2.length].field_0 = uint128(stor2[stor2.length].field_0 + arg2)
                                            else:
                                                stor2.length++
                                                if stor2.length > stor2.length + 1:
                                                    s = stor2.length + 1
                                                    while stor2.length > s:
                                                        stor2[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor2.length < stor2.length
                                                stor2[stor2.length].field_0 = uint128(block.number)
                                                stor2[stor2.length].field_128 = uint128(stor2[stor2.length].field_0 + arg2)
                                        require arg2 + stor1[address(arg1)][idx].field_128 == uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                        if not stor1[address(arg1)].field_0:
                                            stor1[address(arg1)].field_0++
                                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                s = stor1[address(arg1)].field_0 + 1
                                                while stor1[address(arg1)].field_0 > s:
                                                    stor1[address(arg1)][s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                        else:
                                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                            if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                            else:
                                                stor1[address(arg1)].field_0++
                                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                    s = stor1[address(arg1)].field_0 + 1
                                                    while stor1[address(arg1)].field_0 > s:
                                                        stor1[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                else:
                    require 0 < stor2.length
                    if block.number < uint128(stor2.field_0):
                        require 0 <= arg2
                        if not stor1[address(arg1)].field_0:
                            require 0 <= arg2
                            require arg2 == uint128(arg2)
                            if not stor2.length:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    idx = stor2.length + 1
                                    while stor2.length > idx:
                                        stor2[idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(arg2)
                            else:
                                require stor2.length - 1 < stor2.length
                                if stor2[stor2.length].field_0 >= block.number:
                                    require stor2.length - 1 < stor2.length
                                    stor2[stor2.length].field_0 = uint128(arg2)
                                else:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        idx = stor2.length + 1
                                        while stor2.length > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(arg2)
                            require arg2 == uint128(arg2)
                            if not stor1[address(arg1)].field_0:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < stor1[address(arg1)].field_0
                            if stor1[address(arg1)].field_0 > block.number:
                                require 0 <= arg2
                                require arg2 == uint128(arg2)
                                if not stor2.length:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        idx = stor2.length + 1
                                        while stor2.length > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(arg2)
                                else:
                                    require stor2.length - 1 < stor2.length
                                    if stor2[stor2.length].field_0 >= block.number:
                                        require stor2.length - 1 < stor2.length
                                        stor2[stor2.length].field_0 = uint128(arg2)
                                    else:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            idx = stor2.length + 1
                                            while stor2.length > idx:
                                                stor2[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(arg2)
                                require arg2 == uint128(arg2)
                                if not stor1[address(arg1)].field_0:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            idx = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > idx:
                                                stor1[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                if not stor1[address(arg1)].field_0:
                                    require 0 <= arg2
                                    require arg2 == uint128(arg2)
                                    if not stor2.length:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            idx = stor2.length + 1
                                            while stor2.length > idx:
                                                stor2[idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(arg2)
                                    else:
                                        require stor2.length - 1 < stor2.length
                                        if stor2[stor2.length].field_0 >= block.number:
                                            require stor2.length - 1 < stor2.length
                                            stor2[stor2.length].field_0 = uint128(arg2)
                                        else:
                                            stor2.length++
                                            if stor2.length > stor2.length + 1:
                                                idx = stor2.length + 1
                                                while stor2.length > idx:
                                                    stor2[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor2.length < stor2.length
                                            stor2[stor2.length].field_0 = uint128(block.number)
                                            stor2[stor2.length].field_128 = uint128(arg2)
                                    require arg2 == uint128(arg2)
                                    if not stor1[address(arg1)].field_0:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            idx = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > idx:
                                                stor1[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor1[address(arg1)].field_0++
                                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                idx = stor1[address(arg1)].field_0 + 1
                                                while stor1[address(arg1)].field_0 > idx:
                                                    stor1[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    if block.number >= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        require stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 <= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 + arg2
                                        require arg2 == uint128(arg2)
                                        if not stor2.length:
                                            stor2.length++
                                            if stor2.length > stor2.length + 1:
                                                idx = stor2.length + 1
                                                while stor2.length > idx:
                                                    stor2[idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor2.length < stor2.length
                                            stor2[stor2.length].field_0 = uint128(block.number)
                                            stor2[stor2.length].field_128 = uint128(arg2)
                                        else:
                                            require stor2.length - 1 < stor2.length
                                            if stor2[stor2.length].field_0 >= block.number:
                                                require stor2.length - 1 < stor2.length
                                                stor2[stor2.length].field_0 = uint128(arg2)
                                            else:
                                                stor2.length++
                                                if stor2.length > stor2.length + 1:
                                                    idx = stor2.length + 1
                                                    while stor2.length > idx:
                                                        stor2[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor2.length < stor2.length
                                                stor2[stor2.length].field_0 = uint128(block.number)
                                                stor2[stor2.length].field_128 = uint128(arg2)
                                        require arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 == uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                        if not stor1[address(arg1)].field_0:
                                            stor1[address(arg1)].field_0++
                                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                idx = stor1[address(arg1)].field_0 + 1
                                                while stor1[address(arg1)].field_0 > idx:
                                                    stor1[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                        else:
                                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                            if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                            else:
                                                stor1[address(arg1)].field_0++
                                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                    idx = stor1[address(arg1)].field_0 + 1
                                                    while stor1[address(arg1)].field_0 > idx:
                                                        stor1[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                    else:
                                        require 0 < stor1[address(arg1)].field_0
                                        if block.number < stor1[address(arg1)].field_0:
                                            require 0 <= arg2
                                            require arg2 == uint128(arg2)
                                            if not stor2.length:
                                                stor2.length++
                                                if stor2.length > stor2.length + 1:
                                                    idx = stor2.length + 1
                                                    while stor2.length > idx:
                                                        stor2[idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor2.length < stor2.length
                                                stor2[stor2.length].field_0 = uint128(block.number)
                                                stor2[stor2.length].field_128 = uint128(arg2)
                                            else:
                                                require stor2.length - 1 < stor2.length
                                                if stor2[stor2.length].field_0 >= block.number:
                                                    require stor2.length - 1 < stor2.length
                                                    stor2[stor2.length].field_0 = uint128(arg2)
                                                else:
                                                    stor2.length++
                                                    if stor2.length > stor2.length + 1:
                                                        idx = stor2.length + 1
                                                        while stor2.length > idx:
                                                            stor2[idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor2.length < stor2.length
                                                    stor2[stor2.length].field_0 = uint128(block.number)
                                                    stor2[stor2.length].field_128 = uint128(arg2)
                                            require arg2 == uint128(arg2)
                                            if not stor1[address(arg1)].field_0:
                                                stor1[address(arg1)].field_0++
                                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                    idx = stor1[address(arg1)].field_0 + 1
                                                    while stor1[address(arg1)].field_0 > idx:
                                                        stor1[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                            else:
                                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                                else:
                                                    stor1[address(arg1)].field_0++
                                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                        idx = stor1[address(arg1)].field_0 + 1
                                                        while stor1[address(arg1)].field_0 > idx:
                                                            stor1[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                        else:
                                            idx = 0
                                            while stor1[address(arg1)].field_0 - 1 > idx:
                                                require stor1[address(arg1)].field_0 + idx / 2 < stor1[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 1)
                                                if stor1[address(arg1)][0.5 / stor1[address(arg1)].field_0 + idx].field_0 > block.number:
                                                    idx = idx
                                                    continue 
                                                idx = stor1[address(arg1)].field_0 + idx / 2
                                                continue 
                                            require idx < stor1[address(arg1)].field_0
                                            require stor1[address(arg1)][idx].field_128 <= stor1[address(arg1)][idx].field_128 + arg2
                                            require arg2 == uint128(arg2)
                                            if not stor2.length:
                                                stor2.length++
                                                if stor2.length > stor2.length + 1:
                                                    s = stor2.length + 1
                                                    while stor2.length > s:
                                                        stor2[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor2.length < stor2.length
                                                stor2[stor2.length].field_0 = uint128(block.number)
                                                stor2[stor2.length].field_128 = uint128(arg2)
                                            else:
                                                require stor2.length - 1 < stor2.length
                                                if stor2[stor2.length].field_0 >= block.number:
                                                    require stor2.length - 1 < stor2.length
                                                    stor2[stor2.length].field_0 = uint128(arg2)
                                                else:
                                                    stor2.length++
                                                    if stor2.length > stor2.length + 1:
                                                        s = stor2.length + 1
                                                        while stor2.length > s:
                                                            stor2[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor2.length < stor2.length
                                                    stor2[stor2.length].field_0 = uint128(block.number)
                                                    stor2[stor2.length].field_128 = uint128(arg2)
                                            require arg2 + stor1[address(arg1)][idx].field_128 == uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                            if not stor1[address(arg1)].field_0:
                                                stor1[address(arg1)].field_0++
                                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                    s = stor1[address(arg1)].field_0 + 1
                                                    while stor1[address(arg1)].field_0 > s:
                                                        stor1[address(arg1)][s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                            else:
                                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                                                else:
                                                    stor1[address(arg1)].field_0++
                                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                        s = stor1[address(arg1)].field_0 + 1
                                                        while stor1[address(arg1)].field_0 > s:
                                                            stor1[address(arg1)][s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][idx].field_128)
                    else:
                        idx = 0
                        while stor2.length - 1 > idx:
                            require stor2.length + idx / 2 < stor2.length
                            mem[0] = 2
                            if stor2[0.5 / stor2.length + idx].field_0 > block.number:
                                idx = idx
                                continue 
                            idx = stor2.length + idx / 2
                            continue 
                        require idx < stor2.length
                        require stor2[idx].field_128 <= stor2[idx].field_128 + arg2
                        if not stor1[address(arg1)].field_0:
                            require 0 <= arg2
                            require stor2[idx].field_128 + arg2 == uint128(stor2[idx].field_128 + arg2)
                            if not stor2.length:
                                stor2.length++
                                if stor2.length > stor2.length + 1:
                                    s = stor2.length + 1
                                    while stor2.length > s:
                                        stor2[s].field_0 = 0
                                        s = s + 1
                                        continue 
                                require stor2.length < stor2.length
                                stor2[stor2.length].field_0 = uint128(block.number)
                                stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                            else:
                                require stor2.length - 1 < stor2.length
                                if stor2[stor2.length].field_0 >= block.number:
                                    require stor2.length - 1 < stor2.length
                                    stor2[stor2.length].field_0 = uint128(stor2[idx].field_128 + arg2)
                                else:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        s = stor2.length + 1
                                        while stor2.length > s:
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                            require arg2 == uint128(arg2)
                            if not stor1[address(arg1)].field_0:
                                stor1[address(arg1)].field_0++
                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                    idx = stor1[address(arg1)].field_0 + 1
                                    while stor1[address(arg1)].field_0 > idx:
                                        stor1[address(arg1)][idx].field_0 = 0
                                        idx = idx + 1
                                        continue 
                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                else:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                        else:
                            require 0 < stor1[address(arg1)].field_0
                            if stor1[address(arg1)].field_0 > block.number:
                                require 0 <= arg2
                                require stor2[idx].field_128 + arg2 == uint128(stor2[idx].field_128 + arg2)
                                if not stor2.length:
                                    stor2.length++
                                    if stor2.length > stor2.length + 1:
                                        s = stor2.length + 1
                                        while stor2.length > s:
                                            stor2[s].field_0 = 0
                                            s = s + 1
                                            continue 
                                    require stor2.length < stor2.length
                                    stor2[stor2.length].field_0 = uint128(block.number)
                                    stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                else:
                                    require stor2.length - 1 < stor2.length
                                    if stor2[stor2.length].field_0 >= block.number:
                                        require stor2.length - 1 < stor2.length
                                        stor2[stor2.length].field_0 = uint128(stor2[idx].field_128 + arg2)
                                    else:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            s = stor2.length + 1
                                            while stor2.length > s:
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                require arg2 == uint128(arg2)
                                if not stor1[address(arg1)].field_0:
                                    stor1[address(arg1)].field_0++
                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                        idx = stor1[address(arg1)].field_0 + 1
                                        while stor1[address(arg1)].field_0 > idx:
                                            stor1[address(arg1)][idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                    else:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            idx = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > idx:
                                                stor1[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                            else:
                                if not stor1[address(arg1)].field_0:
                                    require 0 <= arg2
                                    require stor2[idx].field_128 + arg2 == uint128(stor2[idx].field_128 + arg2)
                                    if not stor2.length:
                                        stor2.length++
                                        if stor2.length > stor2.length + 1:
                                            s = stor2.length + 1
                                            while stor2.length > s:
                                                stor2[s].field_0 = 0
                                                s = s + 1
                                                continue 
                                        require stor2.length < stor2.length
                                        stor2[stor2.length].field_0 = uint128(block.number)
                                        stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                    else:
                                        require stor2.length - 1 < stor2.length
                                        if stor2[stor2.length].field_0 >= block.number:
                                            require stor2.length - 1 < stor2.length
                                            stor2[stor2.length].field_0 = uint128(stor2[idx].field_128 + arg2)
                                        else:
                                            stor2.length++
                                            if stor2.length > stor2.length + 1:
                                                s = stor2.length + 1
                                                while stor2.length > s:
                                                    stor2[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor2.length < stor2.length
                                            stor2[stor2.length].field_0 = uint128(block.number)
                                            stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                    require arg2 == uint128(arg2)
                                    if not stor1[address(arg1)].field_0:
                                        stor1[address(arg1)].field_0++
                                        if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                            idx = stor1[address(arg1)].field_0 + 1
                                            while stor1[address(arg1)].field_0 > idx:
                                                stor1[address(arg1)][idx].field_0 = 0
                                                idx = idx + 1
                                                continue 
                                        require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                        stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                    else:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                        else:
                                            stor1[address(arg1)].field_0++
                                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                idx = stor1[address(arg1)].field_0 + 1
                                                while stor1[address(arg1)].field_0 > idx:
                                                    stor1[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                else:
                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                    if block.number >= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0:
                                        require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                        require stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 <= stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 + arg2
                                        require stor2[idx].field_128 + arg2 == uint128(stor2[idx].field_128 + arg2)
                                        if not stor2.length:
                                            stor2.length++
                                            if stor2.length > stor2.length + 1:
                                                s = stor2.length + 1
                                                while stor2.length > s:
                                                    stor2[s].field_0 = 0
                                                    s = s + 1
                                                    continue 
                                            require stor2.length < stor2.length
                                            stor2[stor2.length].field_0 = uint128(block.number)
                                            stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                        else:
                                            require stor2.length - 1 < stor2.length
                                            if stor2[stor2.length].field_0 >= block.number:
                                                require stor2.length - 1 < stor2.length
                                                stor2[stor2.length].field_0 = uint128(stor2[idx].field_128 + arg2)
                                            else:
                                                stor2.length++
                                                if stor2.length > stor2.length + 1:
                                                    s = stor2.length + 1
                                                    while stor2.length > s:
                                                        stor2[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor2.length < stor2.length
                                                stor2[stor2.length].field_0 = uint128(block.number)
                                                stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                        require arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 == uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                        if not stor1[address(arg1)].field_0:
                                            stor1[address(arg1)].field_0++
                                            if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                idx = stor1[address(arg1)].field_0 + 1
                                                while stor1[address(arg1)].field_0 > idx:
                                                    stor1[address(arg1)][idx].field_0 = 0
                                                    idx = idx + 1
                                                    continue 
                                            require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                            stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                        else:
                                            require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                            if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                            else:
                                                stor1[address(arg1)].field_0++
                                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                    idx = stor1[address(arg1)].field_0 + 1
                                                    while stor1[address(arg1)].field_0 > idx:
                                                        stor1[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][stor1[address(arg1)].field_0].field_0)
                                    else:
                                        require 0 < stor1[address(arg1)].field_0
                                        if block.number < stor1[address(arg1)].field_0:
                                            require 0 <= arg2
                                            require stor2[idx].field_128 + arg2 == uint128(stor2[idx].field_128 + arg2)
                                            if not stor2.length:
                                                stor2.length++
                                                if stor2.length > stor2.length + 1:
                                                    s = stor2.length + 1
                                                    while stor2.length > s:
                                                        stor2[s].field_0 = 0
                                                        s = s + 1
                                                        continue 
                                                require stor2.length < stor2.length
                                                stor2[stor2.length].field_0 = uint128(block.number)
                                                stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                            else:
                                                require stor2.length - 1 < stor2.length
                                                if stor2[stor2.length].field_0 >= block.number:
                                                    require stor2.length - 1 < stor2.length
                                                    stor2[stor2.length].field_0 = uint128(stor2[idx].field_128 + arg2)
                                                else:
                                                    stor2.length++
                                                    if stor2.length > stor2.length + 1:
                                                        s = stor2.length + 1
                                                        while stor2.length > s:
                                                            stor2[s].field_0 = 0
                                                            s = s + 1
                                                            continue 
                                                    require stor2.length < stor2.length
                                                    stor2[stor2.length].field_0 = uint128(block.number)
                                                    stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                            require arg2 == uint128(arg2)
                                            if not stor1[address(arg1)].field_0:
                                                stor1[address(arg1)].field_0++
                                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                    idx = stor1[address(arg1)].field_0 + 1
                                                    while stor1[address(arg1)].field_0 > idx:
                                                        stor1[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                            else:
                                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2)
                                                else:
                                                    stor1[address(arg1)].field_0++
                                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                        idx = stor1[address(arg1)].field_0 + 1
                                                        while stor1[address(arg1)].field_0 > idx:
                                                            stor1[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2)
                                        else:
                                            s = 0
                                            while stor1[address(arg1)].field_0 - 1 > s:
                                                require stor1[address(arg1)].field_0 + s / 2 < stor1[address(arg1)].field_0
                                                mem[0] = sha3(address(arg1), 1)
                                                if stor1[address(arg1)][0.5 / stor1[address(arg1)].field_0 + s].field_0 > block.number:
                                                    s = s
                                                    continue 
                                                s = stor1[address(arg1)].field_0 + s / 2
                                                continue 
                                            require s < stor1[address(arg1)].field_0
                                            require stor1[address(arg1)][s].field_128 <= stor1[address(arg1)][s].field_128 + arg2
                                            require stor2[idx].field_128 + arg2 == uint128(stor2[idx].field_128 + arg2)
                                            if not stor2.length:
                                                stor2.length++
                                                if stor2.length > stor2.length + 1:
                                                    t = stor2.length + 1
                                                    while stor2.length > t:
                                                        stor2[t].field_0 = 0
                                                        t = t + 1
                                                        continue 
                                                require stor2.length < stor2.length
                                                stor2[stor2.length].field_0 = uint128(block.number)
                                                stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                            else:
                                                require stor2.length - 1 < stor2.length
                                                if stor2[stor2.length].field_0 >= block.number:
                                                    require stor2.length - 1 < stor2.length
                                                    stor2[stor2.length].field_0 = uint128(stor2[idx].field_128 + arg2)
                                                else:
                                                    stor2.length++
                                                    if stor2.length > stor2.length + 1:
                                                        t = stor2.length + 1
                                                        while stor2.length > t:
                                                            stor2[t].field_0 = 0
                                                            t = t + 1
                                                            continue 
                                                    require stor2.length < stor2.length
                                                    stor2[stor2.length].field_0 = uint128(block.number)
                                                    stor2[stor2.length].field_128 = uint128(stor2[idx].field_128 + arg2)
                                            require arg2 + stor1[address(arg1)][s].field_128 == uint128(arg2 + stor1[address(arg1)][s].field_128)
                                            if not stor1[address(arg1)].field_0:
                                                stor1[address(arg1)].field_0++
                                                if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                    idx = stor1[address(arg1)].field_0 + 1
                                                    while stor1[address(arg1)].field_0 > idx:
                                                        stor1[address(arg1)][idx].field_0 = 0
                                                        idx = idx + 1
                                                        continue 
                                                require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][s].field_128)
                                            else:
                                                require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                if stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 >= block.number:
                                                    require stor1[address(arg1)].field_0 - 1 < stor1[address(arg1)].field_0
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(arg2 + stor1[address(arg1)][s].field_128)
                                                else:
                                                    stor1[address(arg1)].field_0++
                                                    if stor1[address(arg1)].field_0 > stor1[address(arg1)].field_0 + 1:
                                                        idx = stor1[address(arg1)].field_0 + 1
                                                        while stor1[address(arg1)].field_0 > idx:
                                                            stor1[address(arg1)][idx].field_0 = 0
                                                            idx = idx + 1
                                                            continue 
                                                    require stor1[address(arg1)].field_0 < stor1[address(arg1)].field_0
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_0 = uint128(block.number)
                                                    stor1[address(arg1)][stor1[address(arg1)].field_0].field_128 = uint128(arg2 + stor1[address(arg1)][s].field_128)
    emit Mint(arg2, arg1);
    return 1
}



}
