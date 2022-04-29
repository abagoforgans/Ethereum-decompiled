contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[94 len 2489]
}



// =====================  Runtime code  =====================


address stor0;
array of struct messageCountForRoom;
array of uint256 usernameFor;

function getUsernameForAddress(address arg1) {
    return usernameFor[address(arg1)][0 len usernameFor[address(arg1)].length]
}

function getMessageCountForRoom(string arg1) {
    return uint256(messageCountForRoom[arg1[all]].field_0)
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function getMessageByIndexForRoom(string arg1, uint256 arg2) {
    require arg2 < uint256(messageCountForRoom[arg1[all]].field_0)
    idx = 352
    s = 0
    while messageCountForRoom[arg1[all]][arg2].length + 320 > idx:
        mem[idx + 32] = uint256(messageCountForRoom[arg1[all]][(3 * arg2) + s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return 224
}

function createUser(string arg1) {
    usernameFor[address(msg.sender)] = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        usernameFor[address(msg.sender)][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while usernameFor[address(msg.sender)].length + 31 / 32 > idx:
        usernameFor[address(msg.sender)][idx] = 0
        idx = idx + 1
        continue 
}

function sendMessage(string arg1, string arg2) {
    uint256(messageCountForRoom[arg2[all]].field_0)++
    if not uint256(messageCountForRoom[arg2[all]].field_0) <= uint256(messageCountForRoom[arg2[all]].field_0) + 1:
        mem[0] = sha3(arg2[all], 1)
        idx = (3 * uint256(messageCountForRoom[arg2[all]].field_0)) + 3
        while sha3(sha3(arg2[all], 1)) + (3 * uint256(messageCountForRoom[arg2[all]].field_0)) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    uint256(messageCountForRoom[arg2[all]][uint256(messageCountForRoom[arg2[all]].field_0)][].field_0) = Array(len=arg1.length, data=arg1[all])
    address(messageCountForRoom[arg2[all]][uint256(messageCountForRoom[arg2[all]].field_0)].field_256) = msg.sender
    uint256(messageCountForRoom[arg2[all]][uint256(messageCountForRoom[arg2[all]].field_0)].field_512) = block.timestamp
    emit 0xfd5b8182: 224, 64, arg2.length, arg2[all]
}



}
