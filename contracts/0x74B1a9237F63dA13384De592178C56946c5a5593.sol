contract main {




// =====================  Runtime code  =====================


#
#  - _fallback()
#
uint256 stor44;
mapping of uint256 currentJackpot;
mapping of uint256 sub_550e8d37;
mapping of uint256 sub_b490a360;
address stor50;
uint256 stor51;

function sub_550e8d37(?) {
    return sub_550e8d37[arg1][arg2]
}

function sub_b490a360(?) {
    return sub_b490a360[arg1]
}

function currentJackpot() {
    return currentJackpot[stor44]
}

function changeOwner(address arg1) {
    require msg.sender == stor50
    stor50 = arg1
}

function withdrawDeposit() {
    require msg.sender == stor50
    call stor50 with:
       value stor51 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor51 = 0
}



}
