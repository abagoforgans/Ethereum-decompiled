contract main {




// =====================  Runtime code  =====================


mapping of uint256 sub_5fba3dec;
mapping of uint256 sub_1dbc85a9;
mapping of uint256 sub_03586bdd;
mapping of uint256 sub_5377c857;

function sub_03586bdd(?) {
    return uint256(sub_03586bdd[arg1][arg2])
}

function sub_1dbc85a9(?) {
    return sub_1dbc85a9[arg1]
}

function sub_5377c857(?) {
    return sub_5377c857[arg1][arg2]
}

function sub_5fba3dec(?) {
    return sub_5fba3dec[arg1]
}

function _fallback() payable {
    require msg.sender != tx.origin
}

function sub_c6c416ec(?) {
    sub_5377c857[address(arg1)][msg.sender] = arg2
}

function sub_5ed89d59(?) payable {
    uint256(sub_03586bdd[address(arg1)][msg.sender]) += msg.value
    sub_5fba3dec[address(arg1)] += msg.value
}

function exit(address arg1) {
    require 0 < uint256(sub_03586bdd[address(arg1)][msg.sender])
    require ext_code.size(arg1)
    call arg1.exit() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_1dbc85a9[address(arg1)] = 0
}

function get(address arg1) {
    require sub_1dbc85a9[address(arg1)] != 1
    require sub_5fba3dec[address(arg1)]
    call msg.sender with:
       value Mask(192, 64, Mask(192, 0, sub_03586bdd[address(arg1)][msg.sender]) / sub_5fba3dec[address(arg1)] * sub_1dbc85a9[address(arg1)]) >> 64 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c7af3456(?) {
    require not sub_1dbc85a9[address(arg1)]
    require eth.balance(arg1) <= sub_5377c857[address(arg1)][msg.sender]
    require ext_code.size(arg1)
    call arg1.buy(address arg1) with:
       value sub_5fba3dec[address(arg1)] wei
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_1dbc85a9[address(arg1)] = 1
}

function sub_7acb20f4(?) {
    require 0 < uint256(sub_03586bdd[address(arg1)][msg.sender])
    uint256(sub_03586bdd[address(arg1)][msg.sender]) = 0
    require uint256(sub_03586bdd[address(arg1)][msg.sender]) <= sub_5fba3dec[address(arg1)]
    sub_5fba3dec[address(arg1)] -= uint256(sub_03586bdd[address(arg1)][msg.sender])
    call msg.sender with:
       value uint256(sub_03586bdd[address(arg1)][msg.sender]) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
