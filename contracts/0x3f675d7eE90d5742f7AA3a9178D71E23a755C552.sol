contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[87 len 1593]
}



// =====================  Runtime code  =====================


const transfer(address arg1, uint256 arg2) = 0


address owner;
mapping of uint256 balanceHaben;
mapping of uint256 balanceSoll;

function owner() {
    return owner
}

function balanceHaben(address arg1) {
    return balanceHaben[address(arg1)]
}

function balanceSoll(address arg1) {
    return balanceSoll[address(arg1)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function addTx(address arg1, address arg2, uint256 arg3, string arg4) {
    mem[128 len arg4.length] = arg4[all]
    require msg.sender == owner
    balanceSoll[address(arg1)] += arg3
    balanceHaben[address(arg2)] += arg3
    mem[ceil32(arg4.length) + 128] = arg1
    mem[ceil32(arg4.length) + 160] = arg2
    mem[ceil32(arg4.length) + 192] = arg3
    mem[ceil32(arg4.length) + 224] = 128
    mem[ceil32(arg4.length) + 256] = arg4.length
    if arg4.length:
        mem[ceil32(arg4.length) + 288] = mem[128]
        mem[ceil32(arg4.length) + 320 len floor32(arg4.length - 1)] = mem[160 len floor32(arg4.length - 1)]
    emit Tx(address(arg1), address(arg2), arg3, Array(len=arg4.length, data=mem[ceil32(arg4.length) + 288 len arg4.length]));
}



}
