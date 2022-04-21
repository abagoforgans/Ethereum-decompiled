contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor3 = block.timestamp
    require not msg.value
    mem[96 len -1392] = code.data[1787 len -1392]
    mem[64] = -1296
    stor0 = msg.sender
    stor1 = mem[108 len 20]
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    return code.data[395 len 1392]
}



// =====================  Runtime code  =====================


address owner;
address clientAddress;
array of struct sub_9f91e6bf;
uint256 creationTime;
uint256 sub_256d3ff9;

function client() {
    return clientAddress
}

function sub_256d3ff9(?) {
    return sub_256d3ff9
}

function owner() {
    return owner
}

function sub_9f91e6bf(?) {
    return sub_9f91e6bf[0 len sub_9f91e6bf.length].field_0
}

function creationTime() {
    return creationTime
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_49233d5d(?) {
    require owner == msg.sender
    sub_256d3ff9 = block.timestamp
    mem[224] = uint256(sub_9f91e6bf.field_0)
    idx = 224
    s = 0
    while sub_9f91e6bf.length + 224 > idx + 32:
        mem[idx + 32] = sub_9f91e6bf[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0xf1a0f4cc: clientAddress, Array(len=sub_9f91e6bf.length, data=mem[224 len sub_9f91e6bf.length + (floor32(sub_9f91e6bf.length - 1) + -sub_9f91e6bf.length + 32 % 32)]), sub_256d3ff9
}



}
