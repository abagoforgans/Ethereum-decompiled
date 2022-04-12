contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
address stor5;

function _fallback() {
    mem[96 len -1795] = code.data[2246 len -1795]
    mem[64] = -1699
    stor0[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor3[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    stor4[] = Array(len=mem[mem[224] + 96], data=mem[mem[224] + 128 len mem[mem[224] + 96]])
    stor5 = msg.sender
    return code.data[451 len 1795]
}



// =====================  Runtime code  =====================


array of uint256 sub_72d69023;
array of uint256 sub_1a6fe24f;
array of uint256 size;
array of uint256 author;
array of uint256 price;
address owner;

function sub_1a6fe24f(?) {
    return sub_1a6fe24f[0 len sub_1a6fe24f.length]
}

function sub_72d69023(?) {
    return sub_72d69023[0 len sub_72d69023.length]
}

function owner() {
    return owner
}

function size() {
    return size[0 len size.length]
}

function price() {
    return price[0 len price.length]
}

function author() {
    return author[0 len author.length]
}

function _fallback() payable {
    revert
}



}
