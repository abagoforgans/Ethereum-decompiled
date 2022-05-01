contract main {


// =======================  Init code  ======================


uint8 stor24AB;
uint8 stor373D;
uint8 storE0FD;

function _fallback() {
    stor24AB = 1
    stor373D = 1
    storE0FD = 1
    return code.data[192 len 1339]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct txs;

function founders(address arg1) {
    return bool(stor0[arg1])
}

function txs(uint256 arg1) {
    require arg1 < txs.length
    return txs[arg1].field_0, txs[arg1].field_256, txs[arg1].field_512, bool(txs[arg1].field_768)
}

function _fallback() payable {
  stop
}

function cancelTx(uint8 arg1) {
    require arg1 < txs.length
    require txs[4 * uint8(arg1)].field_0 == msg.sender
    require arg1 < txs.length
    require txs[4 * uint8(arg1)].field_768
    require arg1 < txs.length
    txs[4 * uint8(arg1)].field_768 = 0
}

function approveTx(uint8 arg1) {
    require stor0[address(msg.sender)]
    require arg1 < txs.length
    require txs[4 * uint8(arg1)].field_0 != msg.sender
    require arg1 < txs.length
    require txs[4 * uint8(arg1)].field_768
    require arg1 < txs.length
    txs[4 * uint8(arg1)].field_768 = 0
    call txs[4 * uint8(arg1)].field_256 with:
       value txs[4 * uint8(arg1)].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function proposeTx(address arg1, uint256 arg2) {
    require stor0[address(msg.sender)]
    txs.length++
    if not txs.length <= txs.length + 1:
        idx = 4 * txs.length + 1
        while 4 * txs.length > idx:
            txs[idx].field_0 = 0
            txs[idx].field_256 = 0
            txs[idx].field_512 = 0
            txs[idx].field_768 = 0
            idx = idx + 4
            continue 
    txs[txs.length].field_0 = msg.sender
    txs[txs.length].field_256 = arg1
    txs[txs.length].field_512 = arg2
    txs[txs.length].field_768 = 1
}



}
