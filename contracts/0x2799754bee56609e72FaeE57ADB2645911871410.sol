contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 886]




// =====================  Runtime code  =====================


array of struct message;

function getMessage() {
    return message[0 len message.length].field_0
}

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
    if unknown_0xce6d41de(?????) == uint32(call.func_hash):
        require not msg.value
        mem[160] = uint256(message.field_0)
        idx = 160
        s = 0
        while message.length + 128 > idx:
            mem[idx + 32] = message[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=message.length, data=mem[160 len message.length])
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
