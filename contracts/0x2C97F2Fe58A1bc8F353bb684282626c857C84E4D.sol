contract main {




// =====================  Runtime code  =====================


array of uint256 sub_c45d9bea;

function sub_c45d9bea(?) {
    require calldata.size - 4 >= 64
    require arg2 < sub_c45d9bea[arg1]
    return sub_c45d9bea[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_f9d53aeb(?) {
    require calldata.size - 4 >= 64
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'messageId should be greater than zero'
    sub_c45d9bea[address(arg1)]++
    sub_c45d9bea[address(arg1)][sub_c45d9bea[address(arg1)]] = arg2
}

function getMessages() {
    if sub_c45d9bea[address(msg.sender)]:
        mem[128 len 32 * sub_c45d9bea[address(msg.sender)]] = code.data[1025 len 32 * sub_c45d9bea[address(msg.sender)]]
    idx = 0
    while idx < sub_c45d9bea[address(msg.sender)]:
        mem[32] = 1
        require idx < sub_c45d9bea[address(msg.sender)]
        mem[0] = sha3(address(msg.sender), 1)
        require idx < sub_c45d9bea[address(msg.sender)]
        mem[(32 * idx) + 128] = sub_c45d9bea[address(msg.sender)][idx]
        idx = idx + 1
        continue 
    mem[(32 * sub_c45d9bea[address(msg.sender)]) + 192 len floor32(sub_c45d9bea[address(msg.sender)])] = mem[128 len floor32(sub_c45d9bea[address(msg.sender)])]
    return Array(len=sub_c45d9bea[address(msg.sender)], data=mem[128 len floor32(sub_c45d9bea[address(msg.sender)])], mem[(32 * sub_c45d9bea[address(msg.sender)]) + floor32(sub_c45d9bea[address(msg.sender)]) + 192 len (32 * sub_c45d9bea[address(msg.sender)]) - floor32(sub_c45d9bea[address(msg.sender)])]), 
}



}
