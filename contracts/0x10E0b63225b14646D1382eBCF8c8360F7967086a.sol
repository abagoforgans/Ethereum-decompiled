contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    return code.data[36 len 673]
}



// =====================  Runtime code  =====================


mapping of struct sub_9445e05c;
mapping of address sub_6dc77107;
uint256 tradeCount;

function sub_6dc77107(?) {
    return sub_6dc77107[arg1]
}

function sub_9445e05c(?) {
    return sub_9445e05c[address(arg1)][arg2].field_0, 
           sub_9445e05c[address(arg1)][arg2].field_256,
           sub_9445e05c[address(arg1)][arg2].field_512,
           sub_9445e05c[address(arg1)][arg2].field_768,
           sub_9445e05c[address(arg1)][arg2].field_1024,
           sub_9445e05c[address(arg1)][arg2].field_1280
}

function getTradeCount() {
    return tradeCount
}

function _fallback() payable {
    revert
}

function sub_82e0fd61(?) {
    tradeCount++
    sub_9445e05c[address(arg1)][stor2 + 1].field_0 = arg2
    sub_9445e05c[address(arg1)][stor2].field_256 = arg3
    sub_9445e05c[address(arg1)][stor2].field_512 = arg4
    sub_9445e05c[address(arg1)][stor2].field_768 = arg5
    sub_9445e05c[address(arg1)][stor2].field_1024 = arg6
    sub_9445e05c[address(arg1)][stor2].field_1280 = tradeCount - 1
    sub_6dc77107[stor2 - 1] = arg1
    return (tradeCount - 1)
}



}
