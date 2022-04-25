contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 4222]




// =====================  Runtime code  =====================


const name = 'BlockChain Community Token'

const totalSupply = 10^16

const decimals = 8

const symbol = 'BCCT'


mapping of uint256 balanceOf;
mapping of uint256 allowed;

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function BCT() {
    balanceOf[address(msg.sender)] = 10^16
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] - arg2 < balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    if arg3 > allowed[address(arg1)][address(msg.sender)]:
        require arg1 == msg.sender
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] - arg3 < balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    if allowed[address(arg1)][address(msg.sender)] != -1:
        if arg1 != msg.sender:
            require allowed[address(arg1)][address(msg.sender)] - arg3 < allowed[address(arg1)][address(msg.sender)]
            allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiPartyTransfer(address[] arg1, uint256[] arg2) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg1.length <= 255
    require arg1.length == arg2.length
    idx = 0
    while uint8(idx) < arg1.length:
        require uint8(idx) < arg1.length
        _19 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg2.length
        require mem[(32 * uint8(idx)) + 140 len 20]
        require balanceOf[address(msg.sender)] - mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] < balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * uint8(idx)) + 128])] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] > balanceOf[address(mem[(32 * uint8(idx)) + 128])]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 0
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_19));
        idx = idx + 1
        continue 
}

function multiPartyTransferFrom(address arg1, address[] arg2, uint256[] arg3) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length <= 255
    require arg2.length == arg3.length
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _47 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        require mem[(32 * uint8(idx)) + 140 len 20]
        if mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] > allowed[address(arg1)][address(msg.sender)]:
            require arg1 == msg.sender
        require balanceOf[address(mem[(32 * uint8(idx)) + 128])] + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] > balanceOf[address(mem[(32 * uint8(idx)) + 128])]
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] += mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        require balanceOf[address(arg1)] - mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] < balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 1)
        if allowed[address(arg1)][address(msg.sender)] != -1:
            if arg1 != msg.sender:
                require allowed[address(arg1)][address(msg.sender)] - mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] < allowed[address(arg1)][address(msg.sender)]
                mem[0] = msg.sender
                mem[32] = sha3(address(arg1), 1)
                allowed[address(arg1)][address(msg.sender)] -= mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], arg1, address(_47));
        idx = idx + 1
        continue 
}



}
