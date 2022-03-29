contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;

function _fallback() {
    mem[96 len -959] = code.data[1272 len -959]
    mem[64] = -863
    stor0 = msg.sender
    stor4 = block.timestamp
    stor1 = mem[108 len 20]
    stor2[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor3 = mem[160]
    return code.data[313 len 959]
}



// =====================  Runtime code  =====================


address addr;
array of uint256 str;
uint256 int;
uint256 stor5;
uint8 state;

function getInt() {
    return int
}

function getAddr() {
    return addr
}

function getStr() {
    return str[0 len str.length]
}

function state() {
    require state <= 5
    return state
}

function _fallback() payable {
    revert
}

function sub_a4d00322(?) {
    addr = arg1
    str[] = Array(len=arg2.length, data=arg2[all])
    int = arg3
    stor5++
    return (stor5 + 1)
}



}
