contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;
array of uint256 stor1;

function _fallback() payable {
    call 0xfd2072af46c9413a70908296b16ccdf47d90bcff with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0.length++
    stor0[stor0.length] = msg.value
    stor1.length++
    stor1[stor1.length] = block.timestamp
    emit ReceivedFunds(msg.sender, msg.value);
}

function sub_f8defa3c(?) {
    if stor0.length:
        mem[128 len 32 * stor0.length] = code.data[1055 len 32 * stor0.length]
    idx = 0
    while idx < stor0.length:
        mem[0] = 0
        require idx < stor0.length
        mem[(32 * idx) + 128] = stor0[idx]
        idx = idx + 1
        continue 
    if stor1.length:
        mem[(32 * stor0.length) + 160 len 32 * stor1.length] = code.data[1055 len 32 * stor1.length]
    idx = 0
    while idx < stor1.length:
        mem[0] = 1
        require idx < stor1.length
        mem[(32 * idx) + (32 * stor0.length) + 160] = stor1[idx]
        idx = idx + 1
        continue 
    mem[(32 * stor0.length) + (32 * stor1.length) + 256 len floor32(stor1.length)] = mem[(32 * stor0.length) + 160 len floor32(stor1.length)]
    mem[(64 * stor1.length) + (32 * stor0.length) + 256] = stor0.length
    mem[(64 * stor1.length) + (32 * stor0.length) + 288 len floor32(stor0.length)] = mem[128 len floor32(stor0.length)]
    return Array(len=stor1.length, data=mem[(32 * stor0.length) + 160 len floor32(stor1.length)], mem[(32 * stor0.length) + (32 * stor1.length) + floor32(stor1.length) + 256 len (32 * stor0.length) + (32 * stor1.length) + -floor32(stor1.length) + 32]), 
           (32 * stor1.length) + 96
}

function getTotalPayments() {
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        require s + stor0[idx] >= s
        idx = idx + 1
        s = s + stor0[idx]
        continue 
    return (s * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length * stor0.length)
}



}
