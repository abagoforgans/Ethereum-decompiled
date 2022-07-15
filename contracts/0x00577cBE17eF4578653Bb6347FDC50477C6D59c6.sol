contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - update()
#  - setState(bool arg1)
#
uint256 sub_dfba5095;
uint256 ticker;
uint256 stor11;
uint256 stor12;

function getTicker() {
    if ticker <= 0:
        revert with 0, 'Invalid ticker'
    if sub_dfba5095 <= 0:
        revert with 0, 'Invalid ticker'
    if sub_dfba5095 + stor12 < block.timestamp:
        revert with 0, 'Invalid ticker'
    return ticker
}

function sub_dfba5095(?) {
    return sub_dfba5095
}

function _fallback() payable {
    revert
}

function sub_01b0b2ff(?) {
    require calldata.size - 4 >= 32
    require 10^stor11 > 0
    require 10^stor11
    return (arg1 / 10^stor11)
}

function sub_7a027837(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        return 0
    require 10^stor11 * arg1 / arg1 == 10^stor11
    return (10^stor11 * arg1)
}

function sub_f2db183e(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        require ticker > 0
        if ticker:
            return (0 / ticker)
    else:
        require 10^stor11 * arg1 / arg1 == 10^stor11
        require ticker > 0
        if ticker:
            return (10^stor11 * arg1 / ticker)
    ('iszero', ('stor', ('name', 'ticker', 9)))
    revert
}

function sub_bdf8ec72(?) {
    require calldata.size - 4 >= 32
    if not arg1:
        require 10^stor11 > 0
        if 10^stor11:
            return (0 / 10^stor11)
    else:
        require ticker * arg1 / arg1 == ticker
        require 10^stor11 > 0
        if 10^stor11:
            return (ticker * arg1 / 10^stor11)
    ('iszero', ('exp', 10, ('stor', ('name', 'stor11', 11))))
    revert
}



}
