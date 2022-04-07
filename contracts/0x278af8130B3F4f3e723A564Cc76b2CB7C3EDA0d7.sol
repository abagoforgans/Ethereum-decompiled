contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;

function _fallback() {
    stor0 = msg.sender
    stor1 = block.timestamp
    return code.data[61 len 962]
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
array of struct stor2;

function changeAdmin(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function status() {
    return eth.balance(this.address), stor2.length, block.timestamp - stor1, block.timestamp - stor1 / 24 * 3600
}

function Invest() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = (3 * stor2.length) + 3
        while 3 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor2[stor2.length].field_0 = msg.sender
    stor2[stor2.length].field_256 = msg.value
    stor2[stor2.length].field_512 = block.timestamp
}

function _fallback() payable {
    stor2.length++
    if not stor2.length <= stor2.length + 1:
        idx = (3 * stor2.length) + 3
        while 3 * stor2.length > idx:
            stor2[idx].field_0 = 0
            stor2[idx].field_256 = 0
            stor2[idx].field_512 = 0
            idx = idx + 3
            continue 
    stor2[stor2.length].field_0 = msg.sender
    stor2[stor2.length].field_256 = msg.value
    stor2[stor2.length].field_512 = block.timestamp
}

function performPayouts() {
    s = 0
    s = 0
    while stor1 + (24 * 3600) < block.timestamp:
        idx = stor2.length
        while idx > 0:
            require idx - 1 < stor2.length
            mem[0] = 2
            if stor2[idx].field_0 <= stor1 + (24 * 3600):
                require idx - 1 < stor2.length
                require idx - 1 < stor2.length
                mem[0] = 2
                call stor2[idx].field_0 with:
                   value 10 * stor2[idx].field_0 / 1000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
            idx = idx - 1
            continue 
        stor1 += 24 * 3600
        s = idx - 1
        s = s + 1
        continue 
    emit Payout(s, 0);
}



}
