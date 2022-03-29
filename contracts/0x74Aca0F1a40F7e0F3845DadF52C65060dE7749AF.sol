contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = 10^17
    stor1 = msg.sender
    stor2[address(msg.sender)] = stor0
    return code.data[88 len 1947]
}



// =====================  Runtime code  =====================


const name = 'Ripto Bux'

const decimals = 8

const symbol = 'RBX'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert 
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function moveToWaves(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require balanceOf[stor1] + arg2 > balanceOf[stor1]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[stor1] += arg2
    emit Transfer(arg2, msg.sender, owner);
    mem[ceil32(arg1.length) + 160] = arg2
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit WavesTransfer(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]), arg2, msg.sender);
}



}
