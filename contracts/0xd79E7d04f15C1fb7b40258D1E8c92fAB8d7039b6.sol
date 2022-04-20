contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function _fallback() payable {
    stor7 = 0
    stor8 = 0
    stor9 = 0
    stor10 = 0
    require not msg.value
    stor1 = msg.sender
    stor0 = code.data[1510 len 32]
    stor5 = code.data[1542 len 32]
    stor6 = code.data[1574 len 32]
    stor2 = code.data[1618 len 20]
    stor4 = code.data[1650 len 20]
    return code.data[179 len 1331]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;

function sub_290305d4(?) {
    return stor8, stor9, stor10
}

function sub_6eff5e07(?) {
    if stor1 == msg.sender:
        stor7 = arg1
}

function sub_2ccdc2c4(?) {
    if stor1 != msg.sender:
        return 0
    return stor1, stor2
}

function _fallback() payable {
    require msg.value == stor5
    require not stor8
    stor7 += msg.value
    stor8 = 1
}

function sub_0185c831(?) {
    if stor1 != msg.sender:
        return 0
    return stor0, stor3, stor4, stor5, stor6, stor7
}

function sub_1fa60a5f(?) {
    if stor1 != msg.sender:
        return -1
    call stor2 with:
       value stor7 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        stor7 = 0
        stor8 = 6
        return 0
    else:
        return 0
}

function sub_9af6283c(?) {
    if stor1 != msg.sender:
        if 1 == stor8:
            stor10 = -10
        else:
            stor10 = -11
    else:
        if stor8 != 1:
            stor10 = -11
        else:
            stor8 = 5
            call stor4 with:
               value stor7 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                stor10 = -2
            else:
                stor8 = 3
                stor10 = 0
}

function sub_9b05b1ea(?) {
    if stor1 != msg.sender:
        if stor7 >= stor5:
            if 1 == stor8:
                stor9 = -10
            else:
                stor9 = -12
        else:
            if 1 == stor8:
                stor9 = -11
            else:
                stor9 = -12
    else:
        if stor7 < stor5:
            if 1 == stor8:
                stor9 = -11
            else:
                stor9 = -12
        else:
            if stor8 != 1:
                stor9 = -12
            else:
                stor8 = 4
                stor3 = arg1
                if stor6 <= 0:
                    call stor3 with:
                       value stor7 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        stor9 = -4
                    else:
                        stor8 = 2
                        stor9 = 0
                else:
                    call stor2 with:
                       value stor6 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        stor9 = -3
                    else:
                        call stor3 with:
                           value stor7 - stor6 wei
                             gas 2300 * is_zero(value) wei
                        stor8 = 2
                        stor9 = 0
}



}
