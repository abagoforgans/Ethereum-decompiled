contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 414]




// =====================  Runtime code  =====================


uint256 numCampaigns;
mapping of struct stor1;

function numCampaigns() payable {
    return numCampaigns
}

function _fallback() payable {
  stop
}

function checkGoalReached(uint256 arg1) payable {
    if stor1[arg1].field_768 < stor1[arg1].field_256:
        return 0
    call stor1[arg1].field_0 with:
       value stor1[arg1].field_768 wei
         gas 0 wei
    stor1[arg1].field_768 = 0
    return 1
}

function newCampaign(address arg1, uint256 arg2) payable {
    numCampaigns++
    stor1[stor0].field_0 = arg1 or Mask(96, 160, stor1[stor0].field_0)
    stor1[stor0].field_256 = arg2
    stor1[stor0].field_512 = 0
    stor1[stor0].field_768 = 0
    return numCampaigns
}

function contribute(uint256 arg1) payable {
    stor1[arg1].field_512++
    stor1[arg1][4][stor1[arg1].field_512].field_0 = stor1[arg1][4][stor1[arg1].field_512].field_160
    stor1[arg1][4][stor1[arg1].field_512].field_256 = msg.value
    stor1[arg1].field_768 += msg.value
}



}
