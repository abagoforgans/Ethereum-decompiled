contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor31;
uint256 stor32;

function _fallback() {
    stor0 = msg.sender
    stor31 = 0
    stor32 = 0
    return code.data[68 len 1722]
}



// =====================  Runtime code  =====================


address stor0;
array of address messageSender;
array of uint256 messageTimestamp;
uint256 messagesCount;
uint256 stor32;

function getMessagesCount() {
    return messagesCount
}

function getMessageTimestamp(uint256 arg1) {
    require arg1 < messagesCount
    require arg1 < 10
    return messageTimestamp[arg1]
}

function getMessage(uint256 arg1) {
    return stor[(3 * arg1) + 1][0 len stor[(3 * arg1) + 1].length]
}

function getMessageSender(uint256 arg1) {
    require arg1 < messagesCount
    require arg1 < 10
    return messageSender[arg1]
}

function closeWall() {
    require stor0 == msg.sender
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function addMessage(string arg1) payable {
    require messagesCount < 10
    stor[sha3((3 * stor31) + 1)][] = Array(len=arg1.length, data=arg1[all])
    messageSender[stor31] = msg.sender
    messageTimestamp[stor31] = block.timestamp
    emit 0x19fab16a: block.timestamp, messagesCount, Array(len=arg1.length, data=arg1[all]), msg.sender
    messagesCount++
    messagesCount = messagesCount + 1 % 10
    stor32++
}

function messages(uint256 arg1) {
    require arg1 < 10
    mem[224] = stor[sha3((3 * arg1) + 1)]
    idx = 224
    s = 0
    while stor[(3 * arg1) + 1].length + 224 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + 1) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(3 * arg1) + 1].length, data=mem[224 len stor[(3 * arg1) + 1].length + (floor32(stor[(3 * arg1) + 1].length - 1) + -stor[(3 * arg1) + 1].length + 32 % 32)]), 
           messageSender[arg1],
           messageTimestamp[arg1]
}



}
