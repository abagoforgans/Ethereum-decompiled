contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;

function _fallback() {
    mem[96 len -1519] = code.data[1819 len -1519]
    mem[64] = -1423
    require mem[128]
    stor0 = msg.sender
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1 = block.timestamp
    return code.data[300 len 1519]
}



// =====================  Runtime code  =====================


address owner;
uint256 sub_7bfb218d;
array of struct ipfsHash;

function getLastHash() {
    return ipfsHash[0 len ipfsHash.length].field_0
}

function sub_7bfb218d(?) {
    return sub_7bfb218d
}

function owner() {
    return owner
}

function ipfsHash() {
    return ipfsHash[0 len ipfsHash.length].field_0
}

function disable() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function logEvent(string arg1, bool arg2) {
    require arg2
    ipfsHash[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 256] = uint256(ipfsHash.field_0)
    idx = ceil32(arg1.length) + 256
    s = 0
    while ceil32(arg1.length) + ipfsHash.length + 256 > idx + 32:
        mem[idx + 32] = ipfsHash[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit Logging(msg.sender, Array(len=ipfsHash.length, data=mem[ceil32(arg1.length) + 256 len ipfsHash.length + (floor32(ipfsHash.length - 1) + -ipfsHash.length + 32 % 32)]), block.timestamp);
}



}
