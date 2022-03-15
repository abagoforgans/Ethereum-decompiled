contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1197]




// =====================  Runtime code  =====================


array of struct sub_39bfc4a1;
array of struct sub_15853113;
uint256 nonce;

function sub_15853113(?) payable {
    require arg2 < sub_15853113[arg1].field_0
    return sub_15853113[arg1][arg2].field_0
}

function sub_39bfc4a1(?) payable {
    return sub_39bfc4a1[address(msg.sender)][arg1].field_0
}

function nonce() payable {
    return nonce
}

function _fallback() payable {
  stop
}

function sendMessage(address arg1, string arg2) payable {
    nonce++
}

function sub_0a936fe5(?) payable {
    if sub_15853113[address(msg.sender)].field_0:
        mem[160] = sub_15853113[address(msg.sender)].field_0
        idx = 160
        s = 0
        while (32 * sub_15853113[address(msg.sender)].field_0) + 160 > idx + 32:
            mem[idx + 32] = sub_15853113[address(msg.sender)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_15853113[address(msg.sender)].field_0, data=mem[160 len 32 * sub_15853113[address(msg.sender)].field_0])
}

function sub_6939cd97(?) payable {
    if sub_39bfc4a1[address(msg.sender)][arg1].field_256:
        mem[160] = sub_39bfc4a1[address(msg.sender)][arg1][1].field_0
        idx = 160
        s = 0
        while sub_39bfc4a1[address(msg.sender)][arg1].field_256 + 160 > idx + 32:
            mem[idx + 32] = sub_39bfc4a1[address(msg.sender)][arg1][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
    return Array(len=sub_39bfc4a1[address(msg.sender)][arg1].field_256, data=mem[160 len sub_39bfc4a1[address(msg.sender)][arg1].field_256]), 
}

function sub_fe1e3eca(?) payable {
    sub_39bfc4a1[address(msg.sender)][arg1].field_0 = 0
    sub_39bfc4a1[address(msg.sender)][arg1].field_256 = 0
    idx = 0
    while sub_39bfc4a1[address(msg.sender)][arg1].field_256 + 31 / 32 > idx:
        sub_39bfc4a1[address(msg.sender)][arg1][idx + 1].field_0 = 0
        idx = idx + 1
        continue 
    idx = 0
    while idx < sub_15853113[address(msg.sender)].field_0:
        require idx < sub_15853113[address(msg.sender)].field_0
        if sub_15853113[address(msg.sender)][idx].field_0 == arg1:
            require idx < sub_15853113[address(msg.sender)].field_0
            sub_15853113[address(msg.sender)][idx].field_0 = 0
        mem[0] = msg.sender
        mem[32] = 1
        idx = idx + 1
        continue 
}

function sub_c36948b5(?) payable {
    if not sub_39bfc4a1[arg1][arg2].field_256:
        return sub_39bfc4a1[arg1][arg2].field_0, 64, sub_39bfc4a1[arg1][arg2].field_256
    mem[192] = sub_39bfc4a1[arg1][arg2][1].field_0
    if sub_39bfc4a1[arg1][arg2].field_256 + 192 <= 224:
        return sub_39bfc4a1[arg1][arg2].field_0, 
               Array(len=sub_39bfc4a1[arg1][arg2].field_256, data=mem[192 len sub_39bfc4a1[arg1][arg2].field_256 + (-sub_39bfc4a1[arg1][arg2].field_256 + 32 % 32)])
    mem[224] = sub_39bfc4a1[arg1][arg2][1].field_256
    idx = 224
    s = 1
    while sub_39bfc4a1[arg1][arg2].field_256 + 192 > idx + 32:
        mem[idx + 32] = sub_39bfc4a1[arg1][arg2][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_39bfc4a1[arg1][arg2].field_0, 
           Array(len=sub_39bfc4a1[arg1][arg2].field_256, data=mem[192 len sub_39bfc4a1[arg1][arg2].field_256 + (floor32(sub_39bfc4a1[arg1][arg2].field_256 - 33) + -sub_39bfc4a1[arg1][arg2].field_256 + 64 % 32)])
}



}
