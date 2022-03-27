contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 480]




// =====================  Runtime code  =====================


uint256 stor0;
mapping of struct stor1;

function _fallback() payable {
    revert 
}

function newCampaign(address arg1, uint256 arg2) {
    stor0++
    stor1[stor0].field_0 = stor1[stor0].field_160
    stor1[stor0].field_256 = arg2
    stor1[stor0].field_512 = 0
    stor1[stor0].field_768 = 0
    return stor0
}

function contribute(uint256 arg1) payable {
    stor1[arg1].field_512++
    stor1[arg1][4][stor1[arg1].field_512].field_0 = stor1[arg1][4][stor1[arg1].field_512].field_160
    stor1[arg1][4][stor1[arg1].field_512].field_256 = msg.value
    stor1[arg1].field_768 += msg.value
}

function checkGoalReached(uint256 arg1) {
    if stor1[arg1].field_768 < stor1[arg1].field_256:
        return 0
    stor1[arg1].field_768 = 0
    call stor1[arg1].field_0 with:
       value stor1[arg1].field_768 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}
