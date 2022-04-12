contract main {


// =======================  Init code  ======================


uint8 stor49BE;
uint8 stor5106;
uint8 stor8F91;

function _fallback() {
    stor5106 = 1
    stor49BE = 1
    stor8F91 = 1
    return code.data[194 len 931]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct txs;
uint256 stor2;

function founders(address arg1) {
    return bool(stor0[arg1])
}

function txs(uint256 arg1) {
    require arg1 < txs.length
    return txs[arg1].field_0, txs[arg1].field_256
}

function _fallback() payable {
    stor2 += msg.value
}

function approveTx(uint8 arg1) {
    require stor0[address(msg.sender)]
    require arg1 < txs.length
    require txs[2 * uint8(arg1)].field_0 != msg.sender
    require arg1 < txs.length
    call txs[2 * uint8(arg1)].field_256 with:
       value stor2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor2 = 0
}

function proposeTx(address arg1) {
    require stor0[address(msg.sender)]
    txs.length++
    if not txs.length <= txs.length + 1:
        idx = 2 * txs.length + 1
        while 2 * txs.length > idx:
            txs[idx].field_0 = 0
            txs[idx].field_256 = 0
            idx = idx + 2
            continue 
    txs[txs.length].field_0 = msg.sender
    txs[txs.length].field_256 = arg1
}



}
