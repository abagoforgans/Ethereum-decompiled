contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() {
    stor2 = code.data[3353 len 20]
    require ext_code.size(code.data[3353 len 20])
    call code.data[3353 len 20].0xa0a8e460 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require 100201707171503 == ext_call.return_data[0]
    return code.data[209 len 3132]
}



// =====================  Runtime code  =====================


#
#  - accountBalancePublish(string arg1, string arg2, uint256 arg3, string arg4, string arg5, uint256 arg6)
#  - accountBalances(uint256 arg1)
#
const contractVersion = 200201707071127


array of struct stor0;
uint256 accountBalanceCount;
address stor2;

function accountBalanceCount() {
    return accountBalanceCount
}

function fundValueCount() {
    return stor0.length
}

function _fallback() payable {
    revert
}

function fundValues(uint256 arg1) {
    require arg1 < stor0.length
    return stor0[arg1].field_0, stor0[arg1].field_256, stor0[arg1].field_512, stor0[arg1].field_768
}

function fundValuePublish(uint256 arg1, uint256 arg2, uint256 arg3) {
    require ext_code.size(stor2)
    call stor2.0xbbb896ad with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        idx = 4 * stor0.length + 1
        while 4 * stor0.length > idx:
            stor0[idx].field_0 = 0
            stor0[idx].field_256 = 0
            stor0[idx].field_512 = 0
            stor0[idx].field_768 = 0
            idx = idx + 4
            continue 
    require stor0.length - 1 < stor0.length
    stor0[stor0.length - 1].field_0 = arg1
    stor0[stor0.length - 1].field_256 = arg2
    stor0[stor0.length - 1].field_512 = arg3
    stor0[stor0.length - 1].field_768 = block.timestamp
    emit FundValue(arg1, arg2, arg3, block.timestamp);
}



}
