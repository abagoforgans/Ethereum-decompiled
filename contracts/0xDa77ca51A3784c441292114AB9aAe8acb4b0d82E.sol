contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = 3 * 10^16
    require not msg.value
    stor1 = code.data[1549 len 20]
    stor0 = code.data[1581 len 20]
    return code.data[209 len 1328]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor2;
address tittyContractAddress;
array of struct stor4;
mapping of uint256 tittyVotes;

function tittyContract() {
    return tittyContractAddress
}

function tittyVotes(uint256 arg1) {
    return tittyVotes[arg1]
}

function getNumberOfVotes(uint256 arg1) {
    require tittyVotes[arg1] < stor4.length
    return stor4[stor5[arg1]].field_256, stor4[stor5[arg1]].field_0
}

function _fallback() {
  stop
}

function doVote(uint256 arg1, uint256 arg2) payable {
    require msg.value >= 0
    require msg.value == stor2 * arg2
    if tittyVotes[arg1]:
        require tittyVotes[arg1] < stor4.length
        stor4[stor5[arg1]].field_0 += stor2 * arg2
        stor4[stor5[arg1]].field_256 += arg2
    else:
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = 2 * stor4.length + 1
            while 2 * stor4.length > idx:
                stor4[idx].field_0 = 0
                stor4[idx].field_256 = 0
                idx = idx + 2
                continue 
        stor4[stor4.length].field_0 = stor2 * arg2
        stor4[stor4.length].field_256 = arg2
        tittyVotes[arg1] = stor4.length
        tittyVotes[arg1] = stor4.length
    call stor0 with:
       value 70 * msg.value / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call stor1 with:
       value msg.value - (70 * msg.value / 100) wei
         gas 2300 * is_zero(value) wei
}



}
