contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
array of uint256 stor2;
uint256 stor3;
address stor4;

function _fallback() payable {
    stor4 = msg.sender
    mem[96 len -923] = code.data[1281 len -923]
    mem[64] = -827
    stor1 = mem[160]
    stor3 = mem[128]
    stor2[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor0 = block.timestamp
    return code.data[358 len 923]
}



// =====================  Runtime code  =====================


uint256 timestamp;
uint256 sub_4583b029;
array of uint256 title;
uint256 hash;
address owner;

function getTimestamp() {
    return timestamp
}

function sub_4583b029(?) {
    return sub_4583b029
}

function owner() {
    return owner
}

function getHash() {
    return hash
}

function getTitle() {
    return title[0 len title.length]
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}



}
