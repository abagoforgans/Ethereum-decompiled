contract main {


// =======================  Init code  ======================


uint8 stor49BE;
uint8 stor6901;
uint8 stor7899;

function _fallback() {
    stor7899 = 1
    stor6901 = 1
    stor49BE = 1
    return code.data[193 len 1396]
}



// =====================  Runtime code  =====================


mapping of uint8 stor0;
array of struct txs;

function founders(address arg1) {
    return bool(stor0[arg1])
}

function txs(uint256 arg1) {
    require arg1 < txs.length
    return txs[arg1].field_0, txs[arg1].field_256, bool(txs[arg1].field_416)
}

function _fallback() payable {
  stop
}

function cancelTx(uint8 arg1) {
    require stor0[address(msg.sender)]
    require arg1 < txs.length
    require txs[2 * uint8(arg1)].field_0 == msg.sender
    require arg1 < txs.length
    txs[2 * uint8(arg1)].field_416 = 0
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
    txs[txs.length].field_416 = 1
}

function approveTx(uint8 arg1) {
    require stor0[address(msg.sender)]
    require arg1 < txs.length
    require txs[2 * uint8(arg1)].field_0 != msg.sender
    require arg1 < txs.length
    require txs[2 * uint8(arg1)].field_416
    require arg1 < txs.length
    txs[2 * uint8(arg1)].field_416 = 0
    call txs[2 * uint8(arg1)].field_256 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
