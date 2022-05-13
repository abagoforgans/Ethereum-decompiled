contract main {




// =====================  Runtime code  =====================


const name = 'Aegis Economy Coin'

const decimals = 18

const symbol = 'AGEC'


mapping of uint256 stor0;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function paused() {
    return bool(stor3)
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require owner == msg.sender
    require stor3
    stor3 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not stor3
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not stor3
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function totalSupply() {
    if block.timestamp <= stor9:
        if not block.timestamp - stor7:
            if stor6:
                if stor4 <= stor5:
                    if not stor5 - stor4:
                        if stor10:
                            if stor4 + (0 / stor10) >= 0 / stor10:
                                return (stor4 + (0 / stor10))
                    else:
                        if (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor5 - stor4 == 0 / stor6:
                            if stor10:
                                if stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) >= (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10:
                                    return (stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10))
        else:
            if (block.timestamp * stor10) - (stor7 * stor10) / block.timestamp - stor7 == stor10:
                if stor6:
                    if stor4 <= stor5:
                        if not stor5 - stor4:
                            if stor10:
                                if stor4 + (0 / stor10) >= 0 / stor10:
                                    return (stor4 + (0 / stor10))
                        else:
                            if (stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor5 - stor4 == (block.timestamp * stor10) - (stor7 * stor10) / stor6:
                                if stor10:
                                    if stor4 + ((stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10) >= (stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10:
                                        return (stor4 + ((stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10))
    else:
        if not stor9 - stor7:
            if stor6:
                if stor4 <= stor5:
                    if not stor5 - stor4:
                        if stor10:
                            if stor4 + (0 / stor10) >= 0 / stor10:
                                return (stor4 + (0 / stor10))
                    else:
                        if (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor5 - stor4 == 0 / stor6:
                            if stor10:
                                if stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) >= (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10:
                                    return (stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10))
        else:
            if (stor9 * stor10) - (stor7 * stor10) / stor9 - stor7 == stor10:
                if stor6:
                    if stor4 <= stor5:
                        if not stor5 - stor4:
                            if stor10:
                                if stor4 + (0 / stor10) >= 0 / stor10:
                                    return (stor4 + (0 / stor10))
                        else:
                            if (stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor5 - stor4 == (stor9 * stor10) - (stor7 * stor10) / stor6:
                                if stor10:
                                    if stor4 + ((stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10) >= (stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10:
                                        return (stor4 + ((stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10))
    revert
}

function balanceOf(address arg1) {
    if owner != arg1:
        return stor0[address(arg1)]
    if block.timestamp <= stor9:
        if not block.timestamp - stor7:
            if stor6:
                if stor4 <= stor5:
                    if not stor5 - stor4:
                        if stor10:
                            if stor4 + (0 / stor10) >= 0 / stor10:
                                return (stor4 + (0 / stor10) - stor8)
                    else:
                        if (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor5 - stor4 == 0 / stor6:
                            if stor10:
                                if stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) >= (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10:
                                    return (stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) - stor8)
        else:
            if (block.timestamp * stor10) - (stor7 * stor10) / block.timestamp - stor7 == stor10:
                if stor6:
                    if stor4 <= stor5:
                        if not stor5 - stor4:
                            if stor10:
                                if stor4 + (0 / stor10) >= 0 / stor10:
                                    return (stor4 + (0 / stor10) - stor8)
                        else:
                            if (stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor5 - stor4 == (block.timestamp * stor10) - (stor7 * stor10) / stor6:
                                if stor10:
                                    if stor4 + ((stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10) >= (stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10:
                                        return (stor4 + ((stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10) - stor8)
    else:
        if not stor9 - stor7:
            if stor6:
                if stor4 <= stor5:
                    if not stor5 - stor4:
                        if stor10:
                            if stor4 + (0 / stor10) >= 0 / stor10:
                                return (stor4 + (0 / stor10) - stor8)
                    else:
                        if (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor5 - stor4 == 0 / stor6:
                            if stor10:
                                if stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) >= (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10:
                                    return (stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) - stor8)
        else:
            if (stor9 * stor10) - (stor7 * stor10) / stor9 - stor7 == stor10:
                if stor6:
                    if stor4 <= stor5:
                        if not stor5 - stor4:
                            if stor10:
                                if stor4 + (0 / stor10) >= 0 / stor10:
                                    return (stor4 + (0 / stor10) - stor8)
                        else:
                            if (stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor5 - stor4 == (stor9 * stor10) - (stor7 * stor10) / stor6:
                                if stor10:
                                    if stor4 + ((stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10) >= (stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10:
                                        return (stor4 + ((stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10) - stor8)
    revert
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    if owner != msg.sender:
        require stor0[address(msg.sender)] >= arg2
    else:
        if block.timestamp <= stor9:
            if not block.timestamp - stor7:
                require stor6
                require stor4 <= stor5
                if not stor5 - stor4:
                    require stor10
                    require stor4 + (0 / stor10) >= 0 / stor10
                    require stor4 + (0 / stor10) - stor8 >= arg2
                else:
                    require (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor5 - stor4 == 0 / stor6
                    require stor10
                    require stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) >= (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10
                    require stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) - stor8 >= arg2
            else:
                require (block.timestamp * stor10) - (stor7 * stor10) / block.timestamp - stor7 == stor10
                require stor6
                require stor4 <= stor5
                if not stor5 - stor4:
                    require stor10
                    require stor4 + (0 / stor10) >= 0 / stor10
                    require stor4 + (0 / stor10) - stor8 >= arg2
                else:
                    require (stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor5 - stor4 == (block.timestamp * stor10) - (stor7 * stor10) / stor6
                    require stor10
                    require stor4 + ((stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10) >= (stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10
                    require stor4 + ((stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10) - stor8 >= arg2
        else:
            if not stor9 - stor7:
                require stor6
                require stor4 <= stor5
                if not stor5 - stor4:
                    require stor10
                    require stor4 + (0 / stor10) >= 0 / stor10
                    require stor4 + (0 / stor10) - stor8 >= arg2
                else:
                    require (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor5 - stor4 == 0 / stor6
                    require stor10
                    require stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) >= (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10
                    require stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) - stor8 >= arg2
            else:
                require (stor9 * stor10) - (stor7 * stor10) / stor9 - stor7 == stor10
                require stor6
                require stor4 <= stor5
                if not stor5 - stor4:
                    require stor10
                    require stor4 + (0 / stor10) >= 0 / stor10
                    require stor4 + (0 / stor10) - stor8 >= arg2
                else:
                    require (stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor5 - stor4 == (stor9 * stor10) - (stor7 * stor10) / stor6
                    require stor10
                    require stor4 + ((stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10) >= (stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10
                    require stor4 + ((stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10) - stor8 >= arg2
    if owner != msg.sender:
        require arg2 <= stor0[address(msg.sender)]
        stor0[address(msg.sender)] -= arg2
    else:
        require arg2 + stor8 >= stor8
        stor8 += arg2
    if owner != arg1:
        require arg2 + stor0[address(arg1)] >= stor0[address(arg1)]
        stor0[address(arg1)] += arg2
    else:
        require arg2 <= stor8
        stor8 -= arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor3
    if owner != arg1:
        require stor0[address(arg1)] >= arg3
    else:
        if block.timestamp <= stor9:
            if not block.timestamp - stor7:
                require stor6
                require stor4 <= stor5
                if not stor5 - stor4:
                    require stor10
                    require stor4 + (0 / stor10) >= 0 / stor10
                    require stor4 + (0 / stor10) - stor8 >= arg3
                else:
                    require (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor5 - stor4 == 0 / stor6
                    require stor10
                    require stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) >= (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10
                    require stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) - stor8 >= arg3
            else:
                require (block.timestamp * stor10) - (stor7 * stor10) / block.timestamp - stor7 == stor10
                require stor6
                require stor4 <= stor5
                if not stor5 - stor4:
                    require stor10
                    require stor4 + (0 / stor10) >= 0 / stor10
                    require stor4 + (0 / stor10) - stor8 >= arg3
                else:
                    require (stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor5 - stor4 == (block.timestamp * stor10) - (stor7 * stor10) / stor6
                    require stor10
                    require stor4 + ((stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10) >= (stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10
                    require stor4 + ((stor5 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) - (stor4 * (block.timestamp * stor10) - (stor7 * stor10) / stor6) / stor10) - stor8 >= arg3
        else:
            if not stor9 - stor7:
                require stor6
                require stor4 <= stor5
                if not stor5 - stor4:
                    require stor10
                    require stor4 + (0 / stor10) >= 0 / stor10
                    require stor4 + (0 / stor10) - stor8 >= arg3
                else:
                    require (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor5 - stor4 == 0 / stor6
                    require stor10
                    require stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) >= (stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10
                    require stor4 + ((stor5 * 0 / stor6) - (stor4 * 0 / stor6) / stor10) - stor8 >= arg3
            else:
                require (stor9 * stor10) - (stor7 * stor10) / stor9 - stor7 == stor10
                require stor6
                require stor4 <= stor5
                if not stor5 - stor4:
                    require stor10
                    require stor4 + (0 / stor10) >= 0 / stor10
                    require stor4 + (0 / stor10) - stor8 >= arg3
                else:
                    require (stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor5 - stor4 == (stor9 * stor10) - (stor7 * stor10) / stor6
                    require stor10
                    require stor4 + ((stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10) >= (stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10
                    require stor4 + ((stor5 * (stor9 * stor10) - (stor7 * stor10) / stor6) - (stor4 * (stor9 * stor10) - (stor7 * stor10) / stor6) / stor10) - stor8 >= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    if owner != arg1:
        require arg3 <= stor0[address(arg1)]
        stor0[address(arg1)] -= arg3
    else:
        require arg3 + stor8 >= stor8
        stor8 += arg3
    if owner != arg2:
        require arg3 + stor0[address(arg2)] >= stor0[address(arg2)]
        stor0[address(arg2)] += arg3
    else:
        require arg3 <= stor8
        stor8 -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
