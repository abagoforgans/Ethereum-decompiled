contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    mem[96 len -672] = code.data[910 len -672]
    mem[64] = -576
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[238 len 672]
}



// =====================  Runtime code  =====================


array of struct message;

function message() {
    return message[0 len message.length].field_0
}

function setMessage(string arg1) {
    message[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function _fallback() payable {
    if uint32(call.func_hash) == unknown_0x368b8772(?????):
        require not msg.value
        message[].field_0 = Array(len=arg1.length, data=arg1[all])
    require unknown_0xe21f37ce(?????) == uint32(call.func_hash)
    require not msg.value
    mem[128] = uint256(message.field_0)
    idx = 128
    s = 0
    while message.length + 96 > idx:
        mem[idx + 32] = message[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=message.length, data=mem[128 len message.length])
}



}
