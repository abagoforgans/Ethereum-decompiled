contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor0 = 10^6
    stor1 = 1000
    stor2 = 0
    require not msg.value
    return code.data[46 len 1252]
}



// =====================  Runtime code  =====================


uint256 sub_df7fedf7;
uint256 sub_93e2e226;
uint256 sub_7336971e;
mapping of uint256 sub_d2d35f82;
mapping of uint256 equity_in_usd;

function equity_in_usd(address arg1) {
    return equity_in_usd[address(arg1)]
}

function sub_7336971e(?) {
    return sub_7336971e
}

function sub_93e2e226(?) {
    return sub_93e2e226
}

function sub_d2d35f82(?) {
    return sub_d2d35f82[address(arg1)]
}

function sub_df7fedf7(?) {
    return sub_df7fedf7
}

function _fallback() payable {
    revert
}

function sub_e9052574(?) {
    sub_d2d35f82[address(arg1)] -= arg2
    equity_in_usd[address(arg1)] = sub_d2d35f82[address(arg1)] / 1000
    sub_7336971e -= arg2
}

function sub_92088770(?) {
    require sub_7336971e + (arg2 * sub_93e2e226) <= sub_df7fedf7
    sub_d2d35f82[address(arg1)] += arg2 * sub_93e2e226
    equity_in_usd[address(arg1)] = sub_d2d35f82[address(arg1)] / 1000
    sub_7336971e += arg2 * sub_93e2e226
}



}
