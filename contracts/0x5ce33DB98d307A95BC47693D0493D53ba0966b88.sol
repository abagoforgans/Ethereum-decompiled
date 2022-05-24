contract main {




// =====================  Runtime code  =====================


const name = 'GTOKEN'

const decimals = 18

const symbol = 'GTOKEN'


uint256 stor3;
address stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of struct stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 stor12;

function totalSupply() {
    return totalSupply
}

function sub_19e9ea85(?) {
    return bool(stor12)
}

function sub_63b0cc19(?) {
    return bool(stor3)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_37ee707a(?) {
    require msg.sender == stor4
    stor12 = arg1
}

function sub_8f6fad8b(?) {
    require msg.sender == stor4
    require not stor3
    stor3 = block.timestamp
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function sub_6b5b844a(?) {
    require msg.sender == stor4
    require arg2 <= stor5[msg.sender]
    require arg1
    require arg2 <= stor5[msg.sender]
    stor5[msg.sender] -= arg2
    require arg2 + stor5[arg1] >= stor5[arg1]
    stor5[address(arg1)] = arg2 + stor5[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require stor6[address(arg1)] <= stor5[address(arg1)]
    require stor8[address(arg1)] <= stor7[address(arg1)].field_0
    require stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]
    require stor5[address(arg1)] - stor6[address(arg1)] >= 0
    return (stor5[address(arg1)] - stor6[address(arg1)] + stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)])
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require not stor12
    if not stor3:
        require stor9[address(msg.sender)] + stor7[address(msg.sender)].field_0 >= stor7[address(msg.sender)].field_0
        require arg2 <= stor9[address(msg.sender)] + stor7[address(msg.sender)].field_0
        require msg.sender
        require arg1
        if arg2 <= stor7[address(msg.sender)].field_0:
            require arg2 <= stor7[address(msg.sender)].field_0
            stor7[address(msg.sender)].field_0 -= arg2
            require arg2 + stor7[arg1].field_0 >= stor7[arg1].field_0
            stor7[address(arg1)].field_0 = arg2 + stor7[arg1].field_0
        else:
            require stor7[address(msg.sender)].field_0 <= arg2
            require stor7[address(msg.sender)].field_0 <= stor7[address(msg.sender)].field_0
            stor7[address(msg.sender)].field_0 = 0
            require stor7[address(msg.sender)].field_0 + stor7[arg1].field_0 >= stor7[arg1].field_0
            stor7[address(arg1)].field_0 = stor7[address(msg.sender)].field_0 + stor7[arg1].field_0
            if arg2 - stor7[address(msg.sender)].field_0:
                require arg2 - stor7[address(msg.sender)].field_0 <= stor9[address(msg.sender)]
                stor9[address(msg.sender)] = stor9[address(msg.sender)] - arg2 + stor7[address(msg.sender)].field_0
                require arg2 - stor7[address(msg.sender)].field_0 + stor9[arg1] >= stor9[arg1]
                stor9[address(arg1)] = arg2 - stor7[address(msg.sender)].field_0 + stor9[arg1]
    else:
        require msg.sender
        require arg1
        require stor3
        if stor7[address(msg.sender)].field_0:
            if block.timestamp >= stor3 + (2208 * 24 * 3600):
                require stor8[address(msg.sender)] <= stor7[address(msg.sender)].field_0
                if stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)]:
                    require stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                    stor8[msg.sender] = stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)] + stor8[msg.sender]
                    require stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                    stor9[msg.sender] = stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)] + stor9[msg.sender]
            else:
                if block.timestamp >= stor3 + (1488 * 24 * 3600):
                    if not stor7[address(msg.sender)].field_0:
                        require stor8[address(msg.sender)] <= 0
                        if -stor8[address(msg.sender)]:
                            require -stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                            stor8[msg.sender] -= stor8[address(msg.sender)]
                            require -stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] -= stor8[address(msg.sender)]
                    else:
                        require 7 * stor7[address(msg.sender)].field_0 / stor7[address(msg.sender)].field_0 == 7
                        require stor8[address(msg.sender)] <= 7 * stor7[address(msg.sender)].field_0 / 10
                        if (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)]:
                            require (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                            stor8[msg.sender] = (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor8[msg.sender]
                            require (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] = (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor9[msg.sender]
                else:
                    if block.timestamp >= stor3 + (768 * 24 * 3600):
                        require stor8[address(msg.sender)] <= stor7[address(msg.sender)].field_1
                        if stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)]:
                            require stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                            stor8[msg.sender] = stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)] + stor8[msg.sender]
                            require stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] = stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)] + stor9[msg.sender]
                    else:
                        if block.timestamp >= stor3 + (48 * 24 * 3600):
                            if not stor7[address(msg.sender)].field_0:
                                require stor8[address(msg.sender)] <= 0
                                if -stor8[address(msg.sender)]:
                                    require -stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                                    stor8[msg.sender] -= stor8[address(msg.sender)]
                                    require -stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                                    stor9[msg.sender] -= stor8[address(msg.sender)]
                            else:
                                require 3 * stor7[address(msg.sender)].field_0 / stor7[address(msg.sender)].field_0 == 3
                                require stor8[address(msg.sender)] <= 3 * stor7[address(msg.sender)].field_0 / 10
                                if (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)]:
                                    require (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                                    stor8[msg.sender] = (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor8[msg.sender]
                                    require (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                                    stor9[msg.sender] = (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor9[msg.sender]
        if stor5[address(msg.sender)]:
            if block.timestamp >= stor3 + (4320 * 24 * 3600):
                require stor3 <= block.timestamp
                require 4320 * 24 * 3600 <= block.timestamp - stor3
                if (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600) + 1 <= 12:
                    if not stor5[address(msg.sender)]:
                        require stor6[address(msg.sender)] <= 0
                        if -stor6[address(msg.sender)]:
                            require -stor6[address(msg.sender)] + stor6[msg.sender] >= stor6[msg.sender]
                            stor6[msg.sender] -= stor6[address(msg.sender)]
                            require -stor6[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] -= stor6[address(msg.sender)]
                    else:
                        require stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / stor5[address(msg.sender)] == (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600) + 1
                        require stor6[address(msg.sender)] <= stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12
                        if (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)]:
                            require (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)] + stor6[msg.sender] >= stor6[msg.sender]
                            stor6[msg.sender] = (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)] + stor6[msg.sender]
                            require (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] = (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)] + stor9[msg.sender]
                else:
                    if not stor5[address(msg.sender)]:
                        require stor6[address(msg.sender)] <= 0
                        if -stor6[address(msg.sender)]:
                            require -stor6[address(msg.sender)] + stor6[msg.sender] >= stor6[msg.sender]
                            stor6[msg.sender] -= stor6[address(msg.sender)]
                            require -stor6[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] -= stor6[address(msg.sender)]
                    else:
                        require 12 * stor5[address(msg.sender)] / stor5[address(msg.sender)] == 12
                        require stor6[address(msg.sender)] <= 12 * stor5[address(msg.sender)] / 12
                        if (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)]:
                            require (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)] + stor6[msg.sender] >= stor6[msg.sender]
                            stor6[msg.sender] = (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)] + stor6[msg.sender]
                            require (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] = (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)] + stor9[msg.sender]
        require arg2 <= stor9[address(msg.sender)]
        require arg2 <= stor9[address(msg.sender)]
        stor9[address(msg.sender)] -= arg2
        require arg2 + stor9[arg1] >= stor9[arg1]
        stor9[address(arg1)] = arg2 + stor9[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require not stor12
    require arg3 <= allowance[address(arg1)][msg.sender]
    if not stor3:
        require stor9[address(arg1)] + stor7[address(arg1)].field_0 >= stor7[address(arg1)].field_0
        require arg3 <= stor9[address(arg1)] + stor7[address(arg1)].field_0
        require arg1
        require arg2
        if arg3 <= stor7[address(arg1)].field_0:
            require arg3 <= stor7[address(arg1)].field_0
            stor7[address(arg1)].field_0 -= arg3
            require arg3 + stor7[arg2].field_0 >= stor7[arg2].field_0
            stor7[address(arg2)].field_0 = arg3 + stor7[arg2].field_0
        else:
            require stor7[address(arg1)].field_0 <= arg3
            require stor7[address(arg1)].field_0 <= stor7[address(arg1)].field_0
            stor7[address(arg1)].field_0 = 0
            require stor7[address(arg1)].field_0 + stor7[arg2].field_0 >= stor7[arg2].field_0
            stor7[address(arg2)].field_0 = stor7[address(arg1)].field_0 + stor7[arg2].field_0
            if arg3 - stor7[address(arg1)].field_0:
                require arg3 - stor7[address(arg1)].field_0 <= stor9[address(arg1)]
                stor9[address(arg1)] = stor9[address(arg1)] - arg3 + stor7[address(arg1)].field_0
                require arg3 - stor7[address(arg1)].field_0 + stor9[arg2] >= stor9[arg2]
                stor9[address(arg2)] = arg3 - stor7[address(arg1)].field_0 + stor9[arg2]
    else:
        require arg1
        require arg2
        require stor3
        if stor7[address(msg.sender)].field_0:
            if block.timestamp >= stor3 + (2208 * 24 * 3600):
                require stor8[address(msg.sender)] <= stor7[address(msg.sender)].field_0
                if stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)]:
                    require stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                    stor8[msg.sender] = stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)] + stor8[msg.sender]
                    require stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                    stor9[msg.sender] = stor7[address(msg.sender)].field_0 - stor8[address(msg.sender)] + stor9[msg.sender]
            else:
                if block.timestamp >= stor3 + (1488 * 24 * 3600):
                    if not stor7[address(msg.sender)].field_0:
                        require stor8[address(msg.sender)] <= 0
                        if -stor8[address(msg.sender)]:
                            require -stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                            stor8[msg.sender] -= stor8[address(msg.sender)]
                            require -stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] -= stor8[address(msg.sender)]
                    else:
                        require 7 * stor7[address(msg.sender)].field_0 / stor7[address(msg.sender)].field_0 == 7
                        require stor8[address(msg.sender)] <= 7 * stor7[address(msg.sender)].field_0 / 10
                        if (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)]:
                            require (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                            stor8[msg.sender] = (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor8[msg.sender]
                            require (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] = (7 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor9[msg.sender]
                else:
                    if block.timestamp >= stor3 + (768 * 24 * 3600):
                        require stor8[address(msg.sender)] <= stor7[address(msg.sender)].field_1
                        if stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)]:
                            require stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                            stor8[msg.sender] = stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)] + stor8[msg.sender]
                            require stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] = stor7[address(msg.sender)].field_1 - stor8[address(msg.sender)] + stor9[msg.sender]
                    else:
                        if block.timestamp >= stor3 + (48 * 24 * 3600):
                            if not stor7[address(msg.sender)].field_0:
                                require stor8[address(msg.sender)] <= 0
                                if -stor8[address(msg.sender)]:
                                    require -stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                                    stor8[msg.sender] -= stor8[address(msg.sender)]
                                    require -stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                                    stor9[msg.sender] -= stor8[address(msg.sender)]
                            else:
                                require 3 * stor7[address(msg.sender)].field_0 / stor7[address(msg.sender)].field_0 == 3
                                require stor8[address(msg.sender)] <= 3 * stor7[address(msg.sender)].field_0 / 10
                                if (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)]:
                                    require (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor8[msg.sender] >= stor8[msg.sender]
                                    stor8[msg.sender] = (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor8[msg.sender]
                                    require (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                                    stor9[msg.sender] = (3 * stor7[address(msg.sender)].field_0 / 10) - stor8[address(msg.sender)] + stor9[msg.sender]
        if stor5[address(msg.sender)]:
            if block.timestamp >= stor3 + (4320 * 24 * 3600):
                require stor3 <= block.timestamp
                require 4320 * 24 * 3600 <= block.timestamp - stor3
                if (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600) + 1 <= 12:
                    if not stor5[address(msg.sender)]:
                        require stor6[address(msg.sender)] <= 0
                        if -stor6[address(msg.sender)]:
                            require -stor6[address(msg.sender)] + stor6[msg.sender] >= stor6[msg.sender]
                            stor6[msg.sender] -= stor6[address(msg.sender)]
                            require -stor6[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] -= stor6[address(msg.sender)]
                    else:
                        require stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / stor5[address(msg.sender)] == (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600) + 1
                        require stor6[address(msg.sender)] <= stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12
                        if (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)]:
                            require (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)] + stor6[msg.sender] >= stor6[msg.sender]
                            stor6[msg.sender] = (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)] + stor6[msg.sender]
                            require (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] = (stor5[address(msg.sender)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(msg.sender)]) / 12) - stor6[address(msg.sender)] + stor9[msg.sender]
                else:
                    if not stor5[address(msg.sender)]:
                        require stor6[address(msg.sender)] <= 0
                        if -stor6[address(msg.sender)]:
                            require -stor6[address(msg.sender)] + stor6[msg.sender] >= stor6[msg.sender]
                            stor6[msg.sender] -= stor6[address(msg.sender)]
                            require -stor6[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] -= stor6[address(msg.sender)]
                    else:
                        require 12 * stor5[address(msg.sender)] / stor5[address(msg.sender)] == 12
                        require stor6[address(msg.sender)] <= 12 * stor5[address(msg.sender)] / 12
                        if (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)]:
                            require (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)] + stor6[msg.sender] >= stor6[msg.sender]
                            stor6[msg.sender] = (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)] + stor6[msg.sender]
                            require (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)] + stor9[msg.sender] >= stor9[msg.sender]
                            stor9[msg.sender] = (12 * stor5[address(msg.sender)] / 12) - stor6[address(msg.sender)] + stor9[msg.sender]
        require arg3 <= stor9[address(arg1)]
        require arg3 <= stor9[address(arg1)]
        stor9[address(arg1)] -= arg3
        require arg3 + stor9[arg2] >= stor9[arg2]
        stor9[address(arg2)] = arg3 + stor9[arg2]
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    return 1
}

function transferableBalanceOf(address arg1) {
    if not stor3:
        if stor7[address(arg1)].field_0 + stor9[address(arg1)] >= stor9[address(arg1)]:
            return (stor7[address(arg1)].field_0 + stor9[address(arg1)])
    else:
        if not stor5[address(arg1)]:
            if not stor7[address(arg1)].field_0:
                if stor9[address(arg1)] >= stor9[address(arg1)]:
                    return stor9[address(arg1)]
            else:
                if block.timestamp >= stor3 + (2208 * 24 * 3600):
                    if stor8[address(arg1)] <= stor7[address(arg1)].field_0:
                        if stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                            return (stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)])
                else:
                    if block.timestamp >= stor3 + (1488 * 24 * 3600):
                        if not stor7[address(arg1)].field_0:
                            if stor8[address(arg1)] <= 0:
                                if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                    return (-stor8[address(arg1)] + stor9[address(arg1)])
                        else:
                            if 7 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 7:
                                if stor8[address(arg1)] <= 7 * stor7[address(arg1)].field_0 / 10:
                                    if (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                        return ((7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
                    else:
                        if block.timestamp >= stor3 + (768 * 24 * 3600):
                            if stor8[address(arg1)] <= stor7[address(arg1)].field_1:
                                if stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                    return (stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)])
                        else:
                            if block.timestamp < stor3 + (48 * 24 * 3600):
                                if stor9[address(arg1)] >= stor9[address(arg1)]:
                                    return stor9[address(arg1)]
                            else:
                                if not stor7[address(arg1)].field_0:
                                    if stor8[address(arg1)] <= 0:
                                        if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                            return (-stor8[address(arg1)] + stor9[address(arg1)])
                                else:
                                    if 3 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 3:
                                        if stor8[address(arg1)] <= 3 * stor7[address(arg1)].field_0 / 10:
                                            if (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                return ((3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
        else:
            if block.timestamp < stor3 + (4320 * 24 * 3600):
                if not stor7[address(arg1)].field_0:
                    if stor9[address(arg1)] >= stor9[address(arg1)]:
                        return stor9[address(arg1)]
                else:
                    if block.timestamp >= stor3 + (2208 * 24 * 3600):
                        if stor8[address(arg1)] <= stor7[address(arg1)].field_0:
                            if stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                return (stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)])
                    else:
                        if block.timestamp >= stor3 + (1488 * 24 * 3600):
                            if not stor7[address(arg1)].field_0:
                                if stor8[address(arg1)] <= 0:
                                    if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                        return (-stor8[address(arg1)] + stor9[address(arg1)])
                            else:
                                if 7 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 7:
                                    if stor8[address(arg1)] <= 7 * stor7[address(arg1)].field_0 / 10:
                                        if (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                            return ((7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
                        else:
                            if block.timestamp >= stor3 + (768 * 24 * 3600):
                                if stor8[address(arg1)] <= stor7[address(arg1)].field_1:
                                    if stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                        return (stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)])
                            else:
                                if block.timestamp < stor3 + (48 * 24 * 3600):
                                    if stor9[address(arg1)] >= stor9[address(arg1)]:
                                        return stor9[address(arg1)]
                                else:
                                    if not stor7[address(arg1)].field_0:
                                        if stor8[address(arg1)] <= 0:
                                            if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                return (-stor8[address(arg1)] + stor9[address(arg1)])
                                    else:
                                        if 3 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 3:
                                            if stor8[address(arg1)] <= 3 * stor7[address(arg1)].field_0 / 10:
                                                if (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                    return ((3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
            else:
                if stor3 <= block.timestamp:
                    if 4320 * 24 * 3600 <= block.timestamp - stor3:
                        if (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600) + 1 <= 12:
                            if not stor5[address(arg1)]:
                                if stor6[address(arg1)] <= 0:
                                    if not stor7[address(arg1)].field_0:
                                        if stor9[address(arg1)] >= stor9[address(arg1)]:
                                            if -stor6[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                return (-stor6[address(arg1)] + stor9[address(arg1)])
                                    else:
                                        if block.timestamp >= stor3 + (2208 * 24 * 3600):
                                            if stor8[address(arg1)] <= stor7[address(arg1)].field_0:
                                                if stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                    if -stor6[address(arg1)] >= 0:
                                                        return (-stor6[address(arg1)] + stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)])
                                        else:
                                            if block.timestamp >= stor3 + (1488 * 24 * 3600):
                                                if not stor7[address(arg1)].field_0:
                                                    if stor8[address(arg1)] <= 0:
                                                        if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                            if -stor6[address(arg1)] >= 0:
                                                                return (-stor6[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)])
                                                else:
                                                    if 7 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 7:
                                                        if stor8[address(arg1)] <= 7 * stor7[address(arg1)].field_0 / 10:
                                                            if (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                if -stor6[address(arg1)] >= 0:
                                                                    return (-stor6[address(arg1)] + (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
                                            else:
                                                if block.timestamp >= stor3 + (768 * 24 * 3600):
                                                    if stor8[address(arg1)] <= stor7[address(arg1)].field_1:
                                                        if stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                            if -stor6[address(arg1)] >= 0:
                                                                return (-stor6[address(arg1)] + stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)])
                                                else:
                                                    if block.timestamp < stor3 + (48 * 24 * 3600):
                                                        if stor9[address(arg1)] >= stor9[address(arg1)]:
                                                            if -stor6[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                return (-stor6[address(arg1)] + stor9[address(arg1)])
                                                    else:
                                                        if not stor7[address(arg1)].field_0:
                                                            if stor8[address(arg1)] <= 0:
                                                                if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                    if -stor6[address(arg1)] >= 0:
                                                                        return (-stor6[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)])
                                                        else:
                                                            if 3 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 3:
                                                                if stor8[address(arg1)] <= 3 * stor7[address(arg1)].field_0 / 10:
                                                                    if (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                        if -stor6[address(arg1)] >= 0:
                                                                            return (-stor6[address(arg1)] + (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
                            else:
                                if stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / stor5[address(arg1)] == (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600) + 1:
                                    if stor6[address(arg1)] <= stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12:
                                        if not stor7[address(arg1)].field_0:
                                            if stor9[address(arg1)] >= stor9[address(arg1)]:
                                                if (stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                    return ((stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] + stor9[address(arg1)])
                                        else:
                                            if block.timestamp >= stor3 + (2208 * 24 * 3600):
                                                if stor8[address(arg1)] <= stor7[address(arg1)].field_0:
                                                    if stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                        if (stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] >= 0:
                                                            return ((stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] + stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)])
                                            else:
                                                if block.timestamp >= stor3 + (1488 * 24 * 3600):
                                                    if not stor7[address(arg1)].field_0:
                                                        if stor8[address(arg1)] <= 0:
                                                            if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                if (stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] >= 0:
                                                                    return ((stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)])
                                                    else:
                                                        if 7 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 7:
                                                            if stor8[address(arg1)] <= 7 * stor7[address(arg1)].field_0 / 10:
                                                                if (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                    if (stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] >= 0:
                                                                        return ((stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] + (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
                                                else:
                                                    if block.timestamp >= stor3 + (768 * 24 * 3600):
                                                        if stor8[address(arg1)] <= stor7[address(arg1)].field_1:
                                                            if stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                if (stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] >= 0:
                                                                    return ((stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] + stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)])
                                                    else:
                                                        if block.timestamp < stor3 + (48 * 24 * 3600):
                                                            if stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                if (stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                    return ((stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] + stor9[address(arg1)])
                                                        else:
                                                            if not stor7[address(arg1)].field_0:
                                                                if stor8[address(arg1)] <= 0:
                                                                    if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                        if (stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] >= 0:
                                                                            return ((stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)])
                                                            else:
                                                                if 3 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 3:
                                                                    if stor8[address(arg1)] <= 3 * stor7[address(arg1)].field_0 / 10:
                                                                        if (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                            if (stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] >= 0:
                                                                                return ((stor5[address(arg1)] + (block.timestamp + -stor3 - (4320 * 24 * 3600) / 730 * 3600 * stor5[address(arg1)]) / 12) - stor6[address(arg1)] + (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
                        else:
                            if not stor5[address(arg1)]:
                                if stor6[address(arg1)] <= 0:
                                    if not stor7[address(arg1)].field_0:
                                        if stor9[address(arg1)] >= stor9[address(arg1)]:
                                            if -stor6[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                return (-stor6[address(arg1)] + stor9[address(arg1)])
                                    else:
                                        if block.timestamp >= stor3 + (2208 * 24 * 3600):
                                            if stor8[address(arg1)] <= stor7[address(arg1)].field_0:
                                                if stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                    if -stor6[address(arg1)] >= 0:
                                                        return (-stor6[address(arg1)] + stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)])
                                        else:
                                            if block.timestamp >= stor3 + (1488 * 24 * 3600):
                                                if not stor7[address(arg1)].field_0:
                                                    if stor8[address(arg1)] <= 0:
                                                        if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                            if -stor6[address(arg1)] >= 0:
                                                                return (-stor6[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)])
                                                else:
                                                    if 7 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 7:
                                                        if stor8[address(arg1)] <= 7 * stor7[address(arg1)].field_0 / 10:
                                                            if (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                if -stor6[address(arg1)] >= 0:
                                                                    return (-stor6[address(arg1)] + (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
                                            else:
                                                if block.timestamp >= stor3 + (768 * 24 * 3600):
                                                    if stor8[address(arg1)] <= stor7[address(arg1)].field_1:
                                                        if stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                            if -stor6[address(arg1)] >= 0:
                                                                return (-stor6[address(arg1)] + stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)])
                                                else:
                                                    if block.timestamp < stor3 + (48 * 24 * 3600):
                                                        if stor9[address(arg1)] >= stor9[address(arg1)]:
                                                            if -stor6[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                return (-stor6[address(arg1)] + stor9[address(arg1)])
                                                    else:
                                                        if not stor7[address(arg1)].field_0:
                                                            if stor8[address(arg1)] <= 0:
                                                                if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                    if -stor6[address(arg1)] >= 0:
                                                                        return (-stor6[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)])
                                                        else:
                                                            if 3 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 3:
                                                                if stor8[address(arg1)] <= 3 * stor7[address(arg1)].field_0 / 10:
                                                                    if (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                        if -stor6[address(arg1)] >= 0:
                                                                            return (-stor6[address(arg1)] + (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
                            else:
                                if 12 * stor5[address(arg1)] / stor5[address(arg1)] == 12:
                                    if stor6[address(arg1)] <= 12 * stor5[address(arg1)] / 12:
                                        if not stor7[address(arg1)].field_0:
                                            if stor9[address(arg1)] >= stor9[address(arg1)]:
                                                if (12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                    return ((12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] + stor9[address(arg1)])
                                        else:
                                            if block.timestamp >= stor3 + (2208 * 24 * 3600):
                                                if stor8[address(arg1)] <= stor7[address(arg1)].field_0:
                                                    if stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                        if (12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] >= 0:
                                                            return ((12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] + stor7[address(arg1)].field_0 - stor8[address(arg1)] + stor9[address(arg1)])
                                            else:
                                                if block.timestamp >= stor3 + (1488 * 24 * 3600):
                                                    if not stor7[address(arg1)].field_0:
                                                        if stor8[address(arg1)] <= 0:
                                                            if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                if (12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] >= 0:
                                                                    return ((12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)])
                                                    else:
                                                        if 7 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 7:
                                                            if stor8[address(arg1)] <= 7 * stor7[address(arg1)].field_0 / 10:
                                                                if (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                    if (12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] >= 0:
                                                                        return ((12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] + (7 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
                                                else:
                                                    if block.timestamp >= stor3 + (768 * 24 * 3600):
                                                        if stor8[address(arg1)] <= stor7[address(arg1)].field_1:
                                                            if stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                if (12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] >= 0:
                                                                    return ((12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] + stor7[address(arg1)].field_1 - stor8[address(arg1)] + stor9[address(arg1)])
                                                    else:
                                                        if block.timestamp < stor3 + (48 * 24 * 3600):
                                                            if stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                if (12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                    return ((12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] + stor9[address(arg1)])
                                                        else:
                                                            if not stor7[address(arg1)].field_0:
                                                                if stor8[address(arg1)] <= 0:
                                                                    if -stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                        if (12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] >= 0:
                                                                            return ((12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)])
                                                            else:
                                                                if 3 * stor7[address(arg1)].field_0 / stor7[address(arg1)].field_0 == 3:
                                                                    if stor8[address(arg1)] <= 3 * stor7[address(arg1)].field_0 / 10:
                                                                        if (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)] >= stor9[address(arg1)]:
                                                                            if (12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] >= 0:
                                                                                return ((12 * stor5[address(arg1)] / 12) - stor6[address(arg1)] + (3 * stor7[address(arg1)].field_0 / 10) - stor8[address(arg1)] + stor9[address(arg1)])
    revert
}



}
