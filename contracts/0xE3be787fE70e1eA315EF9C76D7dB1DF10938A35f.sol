contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
mapping of uint256 stor7;
mapping of uint256 stor9;
mapping of uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    stor0 = 300000000 * 10^18
    stor1 = 1200000000 * 10^18
    stor2 = 1500000000 * 10^18
    stor3 = 150000000 * 10^18
    stor4 = 0
    stor12 = 0
    stor13 = 0
    stor14 = 0
    require not msg.value
    stor5 = msg.sender
    stor12 = stor2 + stor0 + stor1
    stor7[address(msg.sender)] = stor0
    stor9[address(msg.sender)] = stor1
    stor11[address(msg.sender)] = stor2
    return code.data[205 len 4009]
}



// =====================  Runtime code  =====================


const name = 'UTSToken'

const approve(address arg1, uint256 arg2) = 1

const decimals = 18

const symbol = 'UTS'


uint256 stor4;
address stor5;
address stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of struct stor9;
mapping of uint256 stor10;
mapping of uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
mapping of uint256 stor15;

function isAccountFreeze(address arg1) {
    return bool(stor15[address(arg1)])
}

function sub_19e9ea85(?) {
    return bool(stor14)
}

function sub_63b0cc19(?) {
    return bool(stor4)
}

function _fallback() payable {
    revert
}

function totalSupply() {
    return (stor12 + stor13)
}

function sub_aa251d57(?) {
    require stor5 == msg.sender
    stor6 = arg1
}

function sub_37ee707a(?) {
    require stor5 == msg.sender
    stor14 = arg1
}

function sub_8f6fad8b(?) {
    require stor5 == msg.sender
    require not stor4
    stor4 = block.timestamp
}

function sub_d70855b8(?) {
    require stor5 != arg1
    require stor5 == msg.sender
    stor15[address(arg1)] = arg2
}

function sub_6b5b844a(?) {
    require stor5 == msg.sender
    require arg2 <= stor7[address(msg.sender)]
    require arg1
    require arg2 <= stor7[address(msg.sender)]
    stor7[address(msg.sender)] -= arg2
    require arg2 + stor7[arg1] >= stor7[arg1]
    stor7[address(arg1)] = arg2 + stor7[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require stor8[address(arg1)] <= stor7[address(arg1)]
    require stor10[address(arg1)] <= stor9[address(arg1)].field_0
    require stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]
    require stor7[address(arg1)] - stor8[address(arg1)] >= 0
    return (stor7[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require msg.sender == arg1
    require arg2 == arg1
    require stor8[address(arg1)] <= stor7[address(arg1)]
    require stor10[address(arg1)] <= stor9[address(arg1)].field_0
    require stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]
    require stor7[address(arg1)] - stor8[address(arg1)] >= 0
    return (stor7[address(arg1)] - stor8[address(arg1)] + stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)])
}

function sub_08fa5c82(?) {
    require stor11[address(msg.sender)] + stor9[address(msg.sender)].field_0 >= stor9[address(msg.sender)].field_0
    require arg2 <= stor11[address(msg.sender)] + stor9[address(msg.sender)].field_0
    require arg1
    if arg2 <= stor9[address(msg.sender)].field_0:
        require arg2 <= stor9[address(msg.sender)].field_0
        stor9[address(msg.sender)].field_0 -= arg2
        require arg2 + stor9[arg1].field_0 >= stor9[arg1].field_0
        stor9[address(arg1)].field_0 = arg2 + stor9[arg1].field_0
    else:
        require stor9[address(msg.sender)].field_0 <= arg2
        require stor9[address(msg.sender)].field_0 <= stor9[address(msg.sender)].field_0
        stor9[address(msg.sender)].field_0 = 0
        require stor9[address(msg.sender)].field_0 + stor9[arg1].field_0 >= stor9[arg1].field_0
        stor9[address(arg1)].field_0 = stor9[address(msg.sender)].field_0 + stor9[arg1].field_0
        if arg2 - stor9[address(msg.sender)].field_0:
            require arg2 - stor9[address(msg.sender)].field_0 <= stor11[address(msg.sender)]
            stor11[address(msg.sender)] = stor11[address(msg.sender)] - arg2 + stor9[address(msg.sender)].field_0
            require arg2 - stor9[address(msg.sender)].field_0 + stor11[arg1] >= stor11[arg1]
            stor11[address(arg1)] = arg2 - stor9[address(msg.sender)].field_0 + stor11[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_b23affe1(?) {
    require arg1
    require stor4
    if stor9[address(msg.sender)].field_0:
        if block.timestamp >= stor4 + 3312:
            require stor10[address(msg.sender)] <= stor9[address(msg.sender)].field_0
            if stor9[address(msg.sender)].field_0 - stor10[address(msg.sender)]:
                require stor9[address(msg.sender)].field_0 >= stor10[address(msg.sender)]
                stor10[address(msg.sender)] = stor9[address(msg.sender)].field_0
                require stor9[address(msg.sender)].field_0 - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                stor11[address(msg.sender)] = stor9[address(msg.sender)].field_0 - stor10[address(msg.sender)] + stor11[address(msg.sender)]
        else:
            if block.timestamp >= stor4 + 2232:
                if not stor9[address(msg.sender)].field_0:
                    require stor10[address(msg.sender)] <= 0
                    if -stor10[address(msg.sender)]:
                        require 0 >= stor10[address(msg.sender)]
                        stor10[address(msg.sender)] = 0
                        require -stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                        stor11[address(msg.sender)] -= stor10[address(msg.sender)]
                else:
                    require 7 * stor9[address(msg.sender)].field_0 / stor9[address(msg.sender)].field_0 == 7
                    require stor10[address(msg.sender)] <= 7 * stor9[address(msg.sender)].field_0 / 10
                    if (7 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)]:
                        require 7 * stor9[address(msg.sender)].field_0 / 10 >= stor10[address(msg.sender)]
                        stor10[address(msg.sender)] = 7 * stor9[address(msg.sender)].field_0 / 10
                        require (7 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                        stor11[address(msg.sender)] = (7 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)]
            else:
                if block.timestamp >= stor4 + 1152:
                    require stor10[address(msg.sender)] <= stor9[address(msg.sender)].field_1
                    if stor9[address(msg.sender)].field_1 - stor10[address(msg.sender)]:
                        require stor9[address(msg.sender)].field_1 >= stor10[address(msg.sender)]
                        stor10[address(msg.sender)] = stor9[address(msg.sender)].field_1
                        require stor9[address(msg.sender)].field_1 - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                        stor11[address(msg.sender)] = stor9[address(msg.sender)].field_1 - stor10[address(msg.sender)] + stor11[address(msg.sender)]
                else:
                    if block.timestamp >= stor4 + 72:
                        if not stor9[address(msg.sender)].field_0:
                            require stor10[address(msg.sender)] <= 0
                            if -stor10[address(msg.sender)]:
                                require 0 >= stor10[address(msg.sender)]
                                stor10[address(msg.sender)] = 0
                                require -stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                                stor11[address(msg.sender)] -= stor10[address(msg.sender)]
                        else:
                            require 3 * stor9[address(msg.sender)].field_0 / stor9[address(msg.sender)].field_0 == 3
                            require stor10[address(msg.sender)] <= 3 * stor9[address(msg.sender)].field_0 / 10
                            if (3 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)]:
                                require 3 * stor9[address(msg.sender)].field_0 / 10 >= stor10[address(msg.sender)]
                                stor10[address(msg.sender)] = 3 * stor9[address(msg.sender)].field_0 / 10
                                require (3 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                                stor11[address(msg.sender)] = (3 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)]
    if stor7[address(msg.sender)]:
        if block.timestamp >= stor4 + 6480:
            require stor4 <= block.timestamp
            require 6480 <= block.timestamp - stor4
            if (block.timestamp + -stor4 - 6480 / 1095) + 1 <= 12:
                if not stor7[address(msg.sender)]:
                    require stor8[address(msg.sender)] <= 0
                    if -stor8[address(msg.sender)]:
                        require 0 >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] = 0
                        require -stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                        stor11[address(msg.sender)] -= stor8[address(msg.sender)]
                else:
                    require stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / stor7[address(msg.sender)] == (block.timestamp + -stor4 - 6480 / 1095) + 1
                    require stor8[address(msg.sender)] <= stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12
                    if (stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12) - stor8[address(msg.sender)]:
                        require stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12 >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] = stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12
                        require (stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                        stor11[address(msg.sender)] = (stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)]
            else:
                if not stor7[address(msg.sender)]:
                    require stor8[address(msg.sender)] <= 0
                    if -stor8[address(msg.sender)]:
                        require 0 >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] = 0
                        require -stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                        stor11[address(msg.sender)] -= stor8[address(msg.sender)]
                else:
                    require 12 * stor7[address(msg.sender)] / stor7[address(msg.sender)] == 12
                    require stor8[address(msg.sender)] <= 12 * stor7[address(msg.sender)] / 12
                    if (12 * stor7[address(msg.sender)] / 12) - stor8[address(msg.sender)]:
                        require 12 * stor7[address(msg.sender)] / 12 >= stor8[address(msg.sender)]
                        stor8[address(msg.sender)] = 12 * stor7[address(msg.sender)] / 12
                        require (12 * stor7[address(msg.sender)] / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                        stor11[address(msg.sender)] = (12 * stor7[address(msg.sender)] / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)]
    if arg2 > stor11[address(msg.sender)]:
        return 0
    require arg2 <= stor11[address(msg.sender)]
    stor11[address(msg.sender)] -= arg2
    require arg2 + stor11[arg1] >= stor11[arg1]
    stor11[address(arg1)] = arg2 + stor11[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor14
    require not stor15[address(arg1)]
    require not stor15[address(msg.sender)]
    if not stor4:
        require stor11[address(msg.sender)] + stor9[address(msg.sender)].field_0 >= stor9[address(msg.sender)].field_0
        require arg2 <= stor11[address(msg.sender)] + stor9[address(msg.sender)].field_0
        require arg1
        if arg2 <= stor9[address(msg.sender)].field_0:
            require arg2 <= stor9[address(msg.sender)].field_0
            stor9[address(msg.sender)].field_0 -= arg2
            require arg2 + stor9[arg1].field_0 >= stor9[arg1].field_0
            stor9[address(arg1)].field_0 = arg2 + stor9[arg1].field_0
        else:
            require stor9[address(msg.sender)].field_0 <= arg2
            require stor9[address(msg.sender)].field_0 <= stor9[address(msg.sender)].field_0
            stor9[address(msg.sender)].field_0 = 0
            require stor9[address(msg.sender)].field_0 + stor9[arg1].field_0 >= stor9[arg1].field_0
            stor9[address(arg1)].field_0 = stor9[address(msg.sender)].field_0 + stor9[arg1].field_0
            if arg2 - stor9[address(msg.sender)].field_0:
                require arg2 - stor9[address(msg.sender)].field_0 <= stor11[address(msg.sender)]
                stor11[address(msg.sender)] = stor11[address(msg.sender)] - arg2 + stor9[address(msg.sender)].field_0
                require arg2 - stor9[address(msg.sender)].field_0 + stor11[arg1] >= stor11[arg1]
                stor11[address(arg1)] = arg2 - stor9[address(msg.sender)].field_0 + stor11[arg1]
    else:
        require arg1
        require stor4
        if stor9[address(msg.sender)].field_0:
            if block.timestamp >= stor4 + 3312:
                require stor10[address(msg.sender)] <= stor9[address(msg.sender)].field_0
                if stor9[address(msg.sender)].field_0 - stor10[address(msg.sender)]:
                    require stor9[address(msg.sender)].field_0 >= stor10[address(msg.sender)]
                    stor10[address(msg.sender)] = stor9[address(msg.sender)].field_0
                    require stor9[address(msg.sender)].field_0 - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                    stor11[address(msg.sender)] = stor9[address(msg.sender)].field_0 - stor10[address(msg.sender)] + stor11[address(msg.sender)]
            else:
                if block.timestamp >= stor4 + 2232:
                    if not stor9[address(msg.sender)].field_0:
                        require stor10[address(msg.sender)] <= 0
                        if -stor10[address(msg.sender)]:
                            require 0 >= stor10[address(msg.sender)]
                            stor10[address(msg.sender)] = 0
                            require -stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] -= stor10[address(msg.sender)]
                    else:
                        require 7 * stor9[address(msg.sender)].field_0 / stor9[address(msg.sender)].field_0 == 7
                        require stor10[address(msg.sender)] <= 7 * stor9[address(msg.sender)].field_0 / 10
                        if (7 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)]:
                            require 7 * stor9[address(msg.sender)].field_0 / 10 >= stor10[address(msg.sender)]
                            stor10[address(msg.sender)] = 7 * stor9[address(msg.sender)].field_0 / 10
                            require (7 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] = (7 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)]
                else:
                    if block.timestamp >= stor4 + 1152:
                        require stor10[address(msg.sender)] <= stor9[address(msg.sender)].field_1
                        if stor9[address(msg.sender)].field_1 - stor10[address(msg.sender)]:
                            require stor9[address(msg.sender)].field_1 >= stor10[address(msg.sender)]
                            stor10[address(msg.sender)] = stor9[address(msg.sender)].field_1
                            require stor9[address(msg.sender)].field_1 - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] = stor9[address(msg.sender)].field_1 - stor10[address(msg.sender)] + stor11[address(msg.sender)]
                    else:
                        if block.timestamp >= stor4 + 72:
                            if not stor9[address(msg.sender)].field_0:
                                require stor10[address(msg.sender)] <= 0
                                if -stor10[address(msg.sender)]:
                                    require 0 >= stor10[address(msg.sender)]
                                    stor10[address(msg.sender)] = 0
                                    require -stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                                    stor11[address(msg.sender)] -= stor10[address(msg.sender)]
                            else:
                                require 3 * stor9[address(msg.sender)].field_0 / stor9[address(msg.sender)].field_0 == 3
                                require stor10[address(msg.sender)] <= 3 * stor9[address(msg.sender)].field_0 / 10
                                if (3 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)]:
                                    require 3 * stor9[address(msg.sender)].field_0 / 10 >= stor10[address(msg.sender)]
                                    stor10[address(msg.sender)] = 3 * stor9[address(msg.sender)].field_0 / 10
                                    require (3 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                                    stor11[address(msg.sender)] = (3 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)]
        if stor7[address(msg.sender)]:
            if block.timestamp >= stor4 + 6480:
                require stor4 <= block.timestamp
                require 6480 <= block.timestamp - stor4
                if (block.timestamp + -stor4 - 6480 / 1095) + 1 <= 12:
                    if not stor7[address(msg.sender)]:
                        require stor8[address(msg.sender)] <= 0
                        if -stor8[address(msg.sender)]:
                            require 0 >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = 0
                            require -stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] -= stor8[address(msg.sender)]
                    else:
                        require stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / stor7[address(msg.sender)] == (block.timestamp + -stor4 - 6480 / 1095) + 1
                        require stor8[address(msg.sender)] <= stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12
                        if (stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12) - stor8[address(msg.sender)]:
                            require stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12 >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12
                            require (stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] = (stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)]
                else:
                    if not stor7[address(msg.sender)]:
                        require stor8[address(msg.sender)] <= 0
                        if -stor8[address(msg.sender)]:
                            require 0 >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = 0
                            require -stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] -= stor8[address(msg.sender)]
                    else:
                        require 12 * stor7[address(msg.sender)] / stor7[address(msg.sender)] == 12
                        require stor8[address(msg.sender)] <= 12 * stor7[address(msg.sender)] / 12
                        if (12 * stor7[address(msg.sender)] / 12) - stor8[address(msg.sender)]:
                            require 12 * stor7[address(msg.sender)] / 12 >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = 12 * stor7[address(msg.sender)] / 12
                            require (12 * stor7[address(msg.sender)] / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] = (12 * stor7[address(msg.sender)] / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)]
        if arg2 > stor11[address(msg.sender)]:
            return 0
        require arg2 <= stor11[address(msg.sender)]
        stor11[address(msg.sender)] -= arg2
        require arg2 + stor11[arg1] >= stor11[arg1]
        stor11[address(arg1)] = arg2 + stor11[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.sender == arg1
    require not stor14
    require not stor15[address(arg2)]
    require not stor15[address(msg.sender)]
    if not stor4:
        require stor11[address(msg.sender)] + stor9[address(msg.sender)].field_0 >= stor9[address(msg.sender)].field_0
        require arg3 <= stor11[address(msg.sender)] + stor9[address(msg.sender)].field_0
        require arg2
        if arg3 <= stor9[address(msg.sender)].field_0:
            require arg3 <= stor9[address(msg.sender)].field_0
            stor9[address(msg.sender)].field_0 -= arg3
            require arg3 + stor9[arg2].field_0 >= stor9[arg2].field_0
            stor9[address(arg2)].field_0 = arg3 + stor9[arg2].field_0
        else:
            require stor9[address(msg.sender)].field_0 <= arg3
            require stor9[address(msg.sender)].field_0 <= stor9[address(msg.sender)].field_0
            stor9[address(msg.sender)].field_0 = 0
            require stor9[address(msg.sender)].field_0 + stor9[arg2].field_0 >= stor9[arg2].field_0
            stor9[address(arg2)].field_0 = stor9[address(msg.sender)].field_0 + stor9[arg2].field_0
            if arg3 - stor9[address(msg.sender)].field_0:
                require arg3 - stor9[address(msg.sender)].field_0 <= stor11[address(msg.sender)]
                stor11[address(msg.sender)] = stor11[address(msg.sender)] - arg3 + stor9[address(msg.sender)].field_0
                require arg3 - stor9[address(msg.sender)].field_0 + stor11[arg2] >= stor11[arg2]
                stor11[address(arg2)] = arg3 - stor9[address(msg.sender)].field_0 + stor11[arg2]
    else:
        require arg2
        require stor4
        if stor9[address(msg.sender)].field_0:
            if block.timestamp >= stor4 + 3312:
                require stor10[address(msg.sender)] <= stor9[address(msg.sender)].field_0
                if stor9[address(msg.sender)].field_0 - stor10[address(msg.sender)]:
                    require stor9[address(msg.sender)].field_0 >= stor10[address(msg.sender)]
                    stor10[address(msg.sender)] = stor9[address(msg.sender)].field_0
                    require stor9[address(msg.sender)].field_0 - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                    stor11[address(msg.sender)] = stor9[address(msg.sender)].field_0 - stor10[address(msg.sender)] + stor11[address(msg.sender)]
            else:
                if block.timestamp >= stor4 + 2232:
                    if not stor9[address(msg.sender)].field_0:
                        require stor10[address(msg.sender)] <= 0
                        if -stor10[address(msg.sender)]:
                            require 0 >= stor10[address(msg.sender)]
                            stor10[address(msg.sender)] = 0
                            require -stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] -= stor10[address(msg.sender)]
                    else:
                        require 7 * stor9[address(msg.sender)].field_0 / stor9[address(msg.sender)].field_0 == 7
                        require stor10[address(msg.sender)] <= 7 * stor9[address(msg.sender)].field_0 / 10
                        if (7 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)]:
                            require 7 * stor9[address(msg.sender)].field_0 / 10 >= stor10[address(msg.sender)]
                            stor10[address(msg.sender)] = 7 * stor9[address(msg.sender)].field_0 / 10
                            require (7 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] = (7 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)]
                else:
                    if block.timestamp >= stor4 + 1152:
                        require stor10[address(msg.sender)] <= stor9[address(msg.sender)].field_1
                        if stor9[address(msg.sender)].field_1 - stor10[address(msg.sender)]:
                            require stor9[address(msg.sender)].field_1 >= stor10[address(msg.sender)]
                            stor10[address(msg.sender)] = stor9[address(msg.sender)].field_1
                            require stor9[address(msg.sender)].field_1 - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] = stor9[address(msg.sender)].field_1 - stor10[address(msg.sender)] + stor11[address(msg.sender)]
                    else:
                        if block.timestamp >= stor4 + 72:
                            if not stor9[address(msg.sender)].field_0:
                                require stor10[address(msg.sender)] <= 0
                                if -stor10[address(msg.sender)]:
                                    require 0 >= stor10[address(msg.sender)]
                                    stor10[address(msg.sender)] = 0
                                    require -stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                                    stor11[address(msg.sender)] -= stor10[address(msg.sender)]
                            else:
                                require 3 * stor9[address(msg.sender)].field_0 / stor9[address(msg.sender)].field_0 == 3
                                require stor10[address(msg.sender)] <= 3 * stor9[address(msg.sender)].field_0 / 10
                                if (3 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)]:
                                    require 3 * stor9[address(msg.sender)].field_0 / 10 >= stor10[address(msg.sender)]
                                    stor10[address(msg.sender)] = 3 * stor9[address(msg.sender)].field_0 / 10
                                    require (3 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                                    stor11[address(msg.sender)] = (3 * stor9[address(msg.sender)].field_0 / 10) - stor10[address(msg.sender)] + stor11[address(msg.sender)]
        if stor7[address(msg.sender)]:
            if block.timestamp >= stor4 + 6480:
                require stor4 <= block.timestamp
                require 6480 <= block.timestamp - stor4
                if (block.timestamp + -stor4 - 6480 / 1095) + 1 <= 12:
                    if not stor7[address(msg.sender)]:
                        require stor8[address(msg.sender)] <= 0
                        if -stor8[address(msg.sender)]:
                            require 0 >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = 0
                            require -stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] -= stor8[address(msg.sender)]
                    else:
                        require stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / stor7[address(msg.sender)] == (block.timestamp + -stor4 - 6480 / 1095) + 1
                        require stor8[address(msg.sender)] <= stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12
                        if (stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12) - stor8[address(msg.sender)]:
                            require stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12 >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12
                            require (stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] = (stor7[address(msg.sender)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(msg.sender)]) / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)]
                else:
                    if not stor7[address(msg.sender)]:
                        require stor8[address(msg.sender)] <= 0
                        if -stor8[address(msg.sender)]:
                            require 0 >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = 0
                            require -stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] -= stor8[address(msg.sender)]
                    else:
                        require 12 * stor7[address(msg.sender)] / stor7[address(msg.sender)] == 12
                        require stor8[address(msg.sender)] <= 12 * stor7[address(msg.sender)] / 12
                        if (12 * stor7[address(msg.sender)] / 12) - stor8[address(msg.sender)]:
                            require 12 * stor7[address(msg.sender)] / 12 >= stor8[address(msg.sender)]
                            stor8[address(msg.sender)] = 12 * stor7[address(msg.sender)] / 12
                            require (12 * stor7[address(msg.sender)] / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)] >= stor11[address(msg.sender)]
                            stor11[address(msg.sender)] = (12 * stor7[address(msg.sender)] / 12) - stor8[address(msg.sender)] + stor11[address(msg.sender)]
        if arg3 > stor11[address(msg.sender)]:
            return 0
        require arg3 <= stor11[address(msg.sender)]
        stor11[address(msg.sender)] -= arg3
        require arg3 + stor11[arg2] >= stor11[arg2]
        stor11[address(arg2)] = arg3 + stor11[arg2]
    emit Transfer(arg3, msg.sender, arg2);
    return 1
}

function transferableBalanceOf(address arg1) {
    if not stor4:
        if stor9[address(arg1)].field_0 + stor11[address(arg1)] >= stor11[address(arg1)]:
            return (stor9[address(arg1)].field_0 + stor11[address(arg1)])
    else:
        if not stor7[address(arg1)]:
            if not stor9[address(arg1)].field_0:
                if stor11[address(arg1)] >= stor11[address(arg1)]:
                    return stor11[address(arg1)]
            else:
                if block.timestamp >= stor4 + 3312:
                    if stor10[address(arg1)] <= stor9[address(arg1)].field_0:
                        if stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                            return (stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)])
                else:
                    if block.timestamp >= stor4 + 2232:
                        if not stor9[address(arg1)].field_0:
                            if stor10[address(arg1)] <= 0:
                                if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                    return (-stor10[address(arg1)] + stor11[address(arg1)])
                        else:
                            if 7 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 7:
                                if stor10[address(arg1)] <= 7 * stor9[address(arg1)].field_0 / 10:
                                    if (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                        return ((7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
                    else:
                        if block.timestamp >= stor4 + 1152:
                            if stor10[address(arg1)] <= stor9[address(arg1)].field_1:
                                if stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                    return (stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)])
                        else:
                            if block.timestamp < stor4 + 72:
                                if stor11[address(arg1)] >= stor11[address(arg1)]:
                                    return stor11[address(arg1)]
                            else:
                                if not stor9[address(arg1)].field_0:
                                    if stor10[address(arg1)] <= 0:
                                        if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                            return (-stor10[address(arg1)] + stor11[address(arg1)])
                                else:
                                    if 3 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 3:
                                        if stor10[address(arg1)] <= 3 * stor9[address(arg1)].field_0 / 10:
                                            if (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                return ((3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
        else:
            if block.timestamp < stor4 + 6480:
                if not stor9[address(arg1)].field_0:
                    if stor11[address(arg1)] >= stor11[address(arg1)]:
                        return stor11[address(arg1)]
                else:
                    if block.timestamp >= stor4 + 3312:
                        if stor10[address(arg1)] <= stor9[address(arg1)].field_0:
                            if stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                return (stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)])
                    else:
                        if block.timestamp >= stor4 + 2232:
                            if not stor9[address(arg1)].field_0:
                                if stor10[address(arg1)] <= 0:
                                    if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                        return (-stor10[address(arg1)] + stor11[address(arg1)])
                            else:
                                if 7 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 7:
                                    if stor10[address(arg1)] <= 7 * stor9[address(arg1)].field_0 / 10:
                                        if (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                            return ((7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
                        else:
                            if block.timestamp >= stor4 + 1152:
                                if stor10[address(arg1)] <= stor9[address(arg1)].field_1:
                                    if stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                        return (stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)])
                            else:
                                if block.timestamp < stor4 + 72:
                                    if stor11[address(arg1)] >= stor11[address(arg1)]:
                                        return stor11[address(arg1)]
                                else:
                                    if not stor9[address(arg1)].field_0:
                                        if stor10[address(arg1)] <= 0:
                                            if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                return (-stor10[address(arg1)] + stor11[address(arg1)])
                                    else:
                                        if 3 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 3:
                                            if stor10[address(arg1)] <= 3 * stor9[address(arg1)].field_0 / 10:
                                                if (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                    return ((3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
            else:
                if stor4 <= block.timestamp:
                    if 6480 <= block.timestamp - stor4:
                        if (block.timestamp + -stor4 - 6480 / 1095) + 1 <= 12:
                            if not stor7[address(arg1)]:
                                if stor8[address(arg1)] <= 0:
                                    if not stor9[address(arg1)].field_0:
                                        if stor11[address(arg1)] >= stor11[address(arg1)]:
                                            if -stor8[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                return (-stor8[address(arg1)] + stor11[address(arg1)])
                                    else:
                                        if block.timestamp >= stor4 + 3312:
                                            if stor10[address(arg1)] <= stor9[address(arg1)].field_0:
                                                if stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                    if -stor8[address(arg1)] >= 0:
                                                        return (-stor8[address(arg1)] + stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)])
                                        else:
                                            if block.timestamp >= stor4 + 2232:
                                                if not stor9[address(arg1)].field_0:
                                                    if stor10[address(arg1)] <= 0:
                                                        if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                            if -stor8[address(arg1)] >= 0:
                                                                return (-stor8[address(arg1)] - stor10[address(arg1)] + stor11[address(arg1)])
                                                else:
                                                    if 7 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 7:
                                                        if stor10[address(arg1)] <= 7 * stor9[address(arg1)].field_0 / 10:
                                                            if (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                if -stor8[address(arg1)] >= 0:
                                                                    return (-stor8[address(arg1)] + (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
                                            else:
                                                if block.timestamp >= stor4 + 1152:
                                                    if stor10[address(arg1)] <= stor9[address(arg1)].field_1:
                                                        if stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                            if -stor8[address(arg1)] >= 0:
                                                                return (-stor8[address(arg1)] + stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)])
                                                else:
                                                    if block.timestamp < stor4 + 72:
                                                        if stor11[address(arg1)] >= stor11[address(arg1)]:
                                                            if -stor8[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                return (-stor8[address(arg1)] + stor11[address(arg1)])
                                                    else:
                                                        if not stor9[address(arg1)].field_0:
                                                            if stor10[address(arg1)] <= 0:
                                                                if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                    if -stor8[address(arg1)] >= 0:
                                                                        return (-stor8[address(arg1)] - stor10[address(arg1)] + stor11[address(arg1)])
                                                        else:
                                                            if 3 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 3:
                                                                if stor10[address(arg1)] <= 3 * stor9[address(arg1)].field_0 / 10:
                                                                    if (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                        if -stor8[address(arg1)] >= 0:
                                                                            return (-stor8[address(arg1)] + (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
                            else:
                                if stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / stor7[address(arg1)] == (block.timestamp + -stor4 - 6480 / 1095) + 1:
                                    if stor8[address(arg1)] <= stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12:
                                        if not stor9[address(arg1)].field_0:
                                            if stor11[address(arg1)] >= stor11[address(arg1)]:
                                                if (stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                    return ((stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] + stor11[address(arg1)])
                                        else:
                                            if block.timestamp >= stor4 + 3312:
                                                if stor10[address(arg1)] <= stor9[address(arg1)].field_0:
                                                    if stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                        if (stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] >= 0:
                                                            return ((stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] + stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)])
                                            else:
                                                if block.timestamp >= stor4 + 2232:
                                                    if not stor9[address(arg1)].field_0:
                                                        if stor10[address(arg1)] <= 0:
                                                            if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                if (stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] >= 0:
                                                                    return ((stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] - stor10[address(arg1)] + stor11[address(arg1)])
                                                    else:
                                                        if 7 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 7:
                                                            if stor10[address(arg1)] <= 7 * stor9[address(arg1)].field_0 / 10:
                                                                if (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                    if (stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] >= 0:
                                                                        return ((stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] + (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
                                                else:
                                                    if block.timestamp >= stor4 + 1152:
                                                        if stor10[address(arg1)] <= stor9[address(arg1)].field_1:
                                                            if stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                if (stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] >= 0:
                                                                    return ((stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] + stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)])
                                                    else:
                                                        if block.timestamp < stor4 + 72:
                                                            if stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                if (stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                    return ((stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] + stor11[address(arg1)])
                                                        else:
                                                            if not stor9[address(arg1)].field_0:
                                                                if stor10[address(arg1)] <= 0:
                                                                    if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                        if (stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] >= 0:
                                                                            return ((stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] - stor10[address(arg1)] + stor11[address(arg1)])
                                                            else:
                                                                if 3 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 3:
                                                                    if stor10[address(arg1)] <= 3 * stor9[address(arg1)].field_0 / 10:
                                                                        if (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                            if (stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] >= 0:
                                                                                return ((stor7[address(arg1)] + (block.timestamp + -stor4 - 6480 / 1095 * stor7[address(arg1)]) / 12) - stor8[address(arg1)] + (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
                        else:
                            if not stor7[address(arg1)]:
                                if stor8[address(arg1)] <= 0:
                                    if not stor9[address(arg1)].field_0:
                                        if stor11[address(arg1)] >= stor11[address(arg1)]:
                                            if -stor8[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                return (-stor8[address(arg1)] + stor11[address(arg1)])
                                    else:
                                        if block.timestamp >= stor4 + 3312:
                                            if stor10[address(arg1)] <= stor9[address(arg1)].field_0:
                                                if stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                    if -stor8[address(arg1)] >= 0:
                                                        return (-stor8[address(arg1)] + stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)])
                                        else:
                                            if block.timestamp >= stor4 + 2232:
                                                if not stor9[address(arg1)].field_0:
                                                    if stor10[address(arg1)] <= 0:
                                                        if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                            if -stor8[address(arg1)] >= 0:
                                                                return (-stor8[address(arg1)] - stor10[address(arg1)] + stor11[address(arg1)])
                                                else:
                                                    if 7 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 7:
                                                        if stor10[address(arg1)] <= 7 * stor9[address(arg1)].field_0 / 10:
                                                            if (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                if -stor8[address(arg1)] >= 0:
                                                                    return (-stor8[address(arg1)] + (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
                                            else:
                                                if block.timestamp >= stor4 + 1152:
                                                    if stor10[address(arg1)] <= stor9[address(arg1)].field_1:
                                                        if stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                            if -stor8[address(arg1)] >= 0:
                                                                return (-stor8[address(arg1)] + stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)])
                                                else:
                                                    if block.timestamp < stor4 + 72:
                                                        if stor11[address(arg1)] >= stor11[address(arg1)]:
                                                            if -stor8[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                return (-stor8[address(arg1)] + stor11[address(arg1)])
                                                    else:
                                                        if not stor9[address(arg1)].field_0:
                                                            if stor10[address(arg1)] <= 0:
                                                                if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                    if -stor8[address(arg1)] >= 0:
                                                                        return (-stor8[address(arg1)] - stor10[address(arg1)] + stor11[address(arg1)])
                                                        else:
                                                            if 3 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 3:
                                                                if stor10[address(arg1)] <= 3 * stor9[address(arg1)].field_0 / 10:
                                                                    if (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                        if -stor8[address(arg1)] >= 0:
                                                                            return (-stor8[address(arg1)] + (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
                            else:
                                if 12 * stor7[address(arg1)] / stor7[address(arg1)] == 12:
                                    if stor8[address(arg1)] <= 12 * stor7[address(arg1)] / 12:
                                        if not stor9[address(arg1)].field_0:
                                            if stor11[address(arg1)] >= stor11[address(arg1)]:
                                                if (12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                    return ((12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] + stor11[address(arg1)])
                                        else:
                                            if block.timestamp >= stor4 + 3312:
                                                if stor10[address(arg1)] <= stor9[address(arg1)].field_0:
                                                    if stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                        if (12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] >= 0:
                                                            return ((12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] + stor9[address(arg1)].field_0 - stor10[address(arg1)] + stor11[address(arg1)])
                                            else:
                                                if block.timestamp >= stor4 + 2232:
                                                    if not stor9[address(arg1)].field_0:
                                                        if stor10[address(arg1)] <= 0:
                                                            if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                if (12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] >= 0:
                                                                    return ((12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] - stor10[address(arg1)] + stor11[address(arg1)])
                                                    else:
                                                        if 7 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 7:
                                                            if stor10[address(arg1)] <= 7 * stor9[address(arg1)].field_0 / 10:
                                                                if (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                    if (12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] >= 0:
                                                                        return ((12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] + (7 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
                                                else:
                                                    if block.timestamp >= stor4 + 1152:
                                                        if stor10[address(arg1)] <= stor9[address(arg1)].field_1:
                                                            if stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                if (12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] >= 0:
                                                                    return ((12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] + stor9[address(arg1)].field_1 - stor10[address(arg1)] + stor11[address(arg1)])
                                                    else:
                                                        if block.timestamp < stor4 + 72:
                                                            if stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                if (12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                    return ((12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] + stor11[address(arg1)])
                                                        else:
                                                            if not stor9[address(arg1)].field_0:
                                                                if stor10[address(arg1)] <= 0:
                                                                    if -stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                        if (12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] >= 0:
                                                                            return ((12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] - stor10[address(arg1)] + stor11[address(arg1)])
                                                            else:
                                                                if 3 * stor9[address(arg1)].field_0 / stor9[address(arg1)].field_0 == 3:
                                                                    if stor10[address(arg1)] <= 3 * stor9[address(arg1)].field_0 / 10:
                                                                        if (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)] >= stor11[address(arg1)]:
                                                                            if (12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] >= 0:
                                                                                return ((12 * stor7[address(arg1)] / 12) - stor8[address(arg1)] + (3 * stor9[address(arg1)].field_0 / 10) - stor10[address(arg1)] + stor11[address(arg1)])
    revert
}



}
