contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;

function _fallback() {
    stor1[code.data[1047 len 20]] = 1
    stor1[code.data[1079 len 20]] = 1
    stor1[code.data[1111 len 20]] = 1
    return code.data[136 len 899]
}



// =====================  Runtime code  =====================


mapping of uint256 balances;
mapping of uint8 stor1;
array of struct txs;
uint256 stor3;

function balances(address arg1) {
    return balances[arg1]
}

function founders(address arg1) {
    return bool(stor1[arg1])
}

function txs(uint256 arg1) {
    require arg1 < txs.length
    return txs[arg1].field_0, txs[arg1].field_256
}

function _fallback() payable {
    stor3 += msg.value
}

function approveTx(uint8 arg1) {
    require stor1[address(msg.sender)]
    require arg1 < txs.length
    require txs[2 * uint8(arg1)].field_0 != msg.sender
    require arg1 < txs.length
    call txs[2 * uint8(arg1)].field_256 with:
       value stor3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor3 = 0
}

function proposeTx(address arg1) {
    require stor1[address(msg.sender)]
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
