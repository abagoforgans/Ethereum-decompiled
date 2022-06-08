contract main {




// =====================  Runtime code  =====================


array of uint256 stor0;

function _fallback() payable {
    call 0xfd2072af46c9413a70908296b16ccdf47d90bcff with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0.length++
    stor0[stor0.length] = msg.value
    emit ReceivedFunds(msg.sender, msg.value);
}

function getPayments() {
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
