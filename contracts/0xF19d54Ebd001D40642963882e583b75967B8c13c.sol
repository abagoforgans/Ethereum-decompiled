contract main {




// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 stor8;
mapping of uint256 stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor1))
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require msg.sender == owner
    require uint8(stor1)
    Mask(96, 0, stor1) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1)
    Mask(96, 0, stor1) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1)
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_2070d6d5(?) {
    require calldata.size - 4 >= 32
    if block.timestamp < 431952 * 24 * 3600:
        return stor9[address(arg1)]
    require 431952 * 24 * 3600 <= block.timestamp
    require (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= block.timestamp - (431952 * 24 * 3600) / 24 * 3600
    if (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= 365:
        return 0
    if stor9[address(arg1)]:
        require stor9[address(arg1)]
        require (364 * stor9[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(arg1)]) / stor9[address(arg1)] == -(block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 364
    return ((364 * stor9[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(arg1)]) / 365)
}

function sub_b2b6a56a(?) {
    require calldata.size - 4 >= 32
    if block.timestamp < 431952 * 24 * 3600:
        return stor8[address(arg1)]
    require 431952 * 24 * 3600 <= block.timestamp
    require (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= block.timestamp - (431952 * 24 * 3600) / 24 * 3600
    if (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= 1095:
        return 0
    if stor8[address(arg1)]:
        require stor8[address(arg1)]
        require (1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / stor8[address(arg1)] == -(block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1094
    return ((1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / 1095)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require not uint8(stor1)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if block.timestamp < 431952 * 24 * 3600:
        require stor8[address(arg1)] + stor9[address(arg1)] >= stor8[address(arg1)]
        require arg3 <= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] - arg3 >= stor8[address(arg1)] + stor9[address(arg1)]
    else:
        require 431952 * 24 * 3600 <= block.timestamp
        require (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= block.timestamp - (431952 * 24 * 3600) / 24 * 3600
        if (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= 365:
            if block.timestamp < 431952 * 24 * 3600:
                require stor8[address(arg1)] >= stor8[address(arg1)]
                require arg3 <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] - arg3 >= stor8[address(arg1)]
            else:
                require 431952 * 24 * 3600 <= block.timestamp
                require (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= block.timestamp - (431952 * 24 * 3600) / 24 * 3600
                if (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= 1095:
                    require arg3 <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] - arg3 >= 0
                else:
                    if stor8[address(arg1)]:
                        require stor8[address(arg1)]
                        require (1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / stor8[address(arg1)] == -(block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1094
                    require (1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / 1095 >= (1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / 1095
                    require arg3 <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] - arg3 >= (1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / 1095
        else:
            if stor9[address(arg1)]:
                require stor9[address(arg1)]
                require (364 * stor9[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(arg1)]) / stor9[address(arg1)] == -(block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 364
            if block.timestamp < 431952 * 24 * 3600:
                require stor8[address(arg1)] + ((364 * stor9[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(arg1)]) / 365) >= stor8[address(arg1)]
                require arg3 <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] - arg3 >= stor8[address(arg1)] + ((364 * stor9[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(arg1)]) / 365)
            else:
                require 431952 * 24 * 3600 <= block.timestamp
                require (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= block.timestamp - (431952 * 24 * 3600) / 24 * 3600
                if (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= 1095:
                    require (364 * stor9[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(arg1)]) / 365 >= 0
                    require arg3 <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] - arg3 >= (364 * stor9[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(arg1)]) / 365
                else:
                    if stor8[address(arg1)]:
                        require stor8[address(arg1)]
                        require (1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / stor8[address(arg1)] == -(block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1094
                    require ((1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / 1095) + ((364 * stor9[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(arg1)]) / 365) >= (1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / 1095
                    require arg3 <= balanceOf[address(arg1)]
                    require balanceOf[address(arg1)] - arg3 >= ((1094 * stor8[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(arg1)]) / 1095) + ((364 * stor9[address(arg1)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(arg1)]) / 365)
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not uint8(stor1)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    if block.timestamp < 431952 * 24 * 3600:
        require stor8[address(msg.sender)] + stor9[address(msg.sender)] >= stor8[address(msg.sender)]
        require arg2 <= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] - arg2 >= stor8[address(msg.sender)] + stor9[address(msg.sender)]
    else:
        require 431952 * 24 * 3600 <= block.timestamp
        require (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= block.timestamp - (431952 * 24 * 3600) / 24 * 3600
        if (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= 365:
            if block.timestamp < 431952 * 24 * 3600:
                require stor8[address(msg.sender)] >= stor8[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - arg2 >= stor8[address(msg.sender)]
            else:
                require 431952 * 24 * 3600 <= block.timestamp
                require (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= block.timestamp - (431952 * 24 * 3600) / 24 * 3600
                if (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= 1095:
                    require arg2 <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - arg2 >= 0
                else:
                    if stor8[address(msg.sender)]:
                        require stor8[address(msg.sender)]
                        require (1094 * stor8[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(msg.sender)]) / stor8[address(msg.sender)] == -(block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1094
                    require (1094 * stor8[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(msg.sender)]) / 1095 >= (1094 * stor8[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(msg.sender)]) / 1095
                    require arg2 <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - arg2 >= (1094 * stor8[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(msg.sender)]) / 1095
        else:
            if stor9[address(msg.sender)]:
                require stor9[address(msg.sender)]
                require (364 * stor9[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(msg.sender)]) / stor9[address(msg.sender)] == -(block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 364
            if block.timestamp < 431952 * 24 * 3600:
                require stor8[address(msg.sender)] + ((364 * stor9[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(msg.sender)]) / 365) >= stor8[address(msg.sender)]
                require arg2 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - arg2 >= stor8[address(msg.sender)] + ((364 * stor9[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(msg.sender)]) / 365)
            else:
                require 431952 * 24 * 3600 <= block.timestamp
                require (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= block.timestamp - (431952 * 24 * 3600) / 24 * 3600
                if (block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1 >= 1095:
                    require (364 * stor9[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(msg.sender)]) / 365 >= 0
                    require arg2 <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - arg2 >= (364 * stor9[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(msg.sender)]) / 365
                else:
                    if stor8[address(msg.sender)]:
                        require stor8[address(msg.sender)]
                        require (1094 * stor8[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(msg.sender)]) / stor8[address(msg.sender)] == -(block.timestamp - (431952 * 24 * 3600) / 24 * 3600) + 1094
                    require ((1094 * stor8[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(msg.sender)]) / 1095) + ((364 * stor9[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(msg.sender)]) / 365) >= (1094 * stor8[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(msg.sender)]) / 1095
                    require arg2 <= balanceOf[address(msg.sender)]
                    require balanceOf[address(msg.sender)] - arg2 >= ((1094 * stor8[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor8[address(msg.sender)]) / 1095) + ((364 * stor9[address(msg.sender)]) - (block.timestamp - (431952 * 24 * 3600) / 24 * 3600 * stor9[address(msg.sender)]) / 365)
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if msg.sender == 0xce7e0775d41daafbb9fabd2816a8dc9049f60555:
        require stor8[address(arg1)] + arg2 >= stor8[address(arg1)]
        stor8[address(arg1)] += arg2
    else:
        if msg.sender == 0xe134f5ce9657ab2a6970a6a91d5b2afaa733c639:
            require stor9[address(arg1)] + arg2 >= stor9[address(arg1)]
            stor9[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
