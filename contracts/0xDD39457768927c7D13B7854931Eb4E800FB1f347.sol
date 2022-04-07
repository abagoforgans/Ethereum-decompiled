contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() {
    stor0 = block.timestamp
    return code.data[34 len 895]
}



// =====================  Runtime code  =====================


uint256 stor0;
array of struct stor1;

function status() {
    return eth.balance(this.address), stor1.length, block.timestamp - stor0, block.timestamp - stor0 / 24 * 3600
}

function _fallback() payable {
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = (3 * stor1.length) + 3
        while 3 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            stor1[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor1[stor1.length].field_0 = msg.sender
    stor1[stor1.length].field_256 = msg.value
    stor1[stor1.length].field_512 = block.timestamp
}

function Make_Deposit() payable {
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = (3 * stor1.length) + 3
        while 3 * stor1.length > idx:
            stor1[idx].field_0 = 0
            stor1[idx].field_256 = 0
            stor1[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor1[stor1.length].field_0 = msg.sender
    stor1[stor1.length].field_256 = msg.value
    stor1[stor1.length].field_512 = block.timestamp
}

function performPayouts() {
    s = 0
    s = 0
    while stor0 + (24 * 3600) < block.timestamp:
        idx = stor1.length
        while idx > 0:
            require idx - 1 < stor1.length
            mem[0] = 1
            if stor1[idx].field_0 <= stor0 + (24 * 3600):
                require idx - 1 < stor1.length
                require idx - 1 < stor1.length
                mem[0] = 1
                call stor1[idx].field_0 with:
                   value 10 * stor1[idx].field_0 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            idx = idx - 1
            continue 
        stor0 += 24 * 3600
        s = idx - 1
        s = s + 1
        continue 
    emit Payout(s, 0);
}



}
