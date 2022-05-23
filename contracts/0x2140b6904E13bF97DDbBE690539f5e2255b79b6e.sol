contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() {
    stor0 = 10^17
    stor1[address(msg.sender)] = 10^17
    return code.data[66 len 1828]
}



// =====================  Runtime code  =====================


const name = 'B&R Social advertising'

const decimals = 8

const symbol = 'BRS'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function batchTransfer(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length > 0
    idx = 0
    while uint32(idx) < arg1.length:
        require uint32(idx) < arg1.length
        _21 = mem[(32 * uint32(idx)) + 128]
        require uint32(idx) < arg2.length
        require mem[(32 * uint32(idx)) + 140 len 20]
        require mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
        require mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * uint32(idx)) + 140 len 20]] >= balanceOf[mem[(32 * uint32(idx)) + 140 len 20]]
        mem[0] = mem[(32 * uint32(idx)) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * uint32(idx)) + 128])] = mem[(32 * uint32(idx)) + (32 * arg1.length) + 160] + balanceOf[mem[(32 * uint32(idx)) + 140 len 20]]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint32(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_21));
        idx = idx + 1
        continue 
    return 1
}



}
