contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = 'receiveApproval(address,uint256,'
    mem[ceil32(arg3.length) + 160] = msg.sender
    mem[ceil32(arg3.length) + 192] = arg2
    mem[ceil32(arg3.length) + 224] = this.address
    mem[ceil32(arg3.length) + 256] = 128
    mem[ceil32(arg3.length) + 288] = arg3.length
    mem[ceil32(arg3.length) + 320 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        mem[arg3.length + ceil32(arg3.length) + 320] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
        if not arg3.length + 160 % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 160 len ceil32(arg3.length) + 5], mem[arg3.length + ceil32(arg3.length) + ceil32(arg3.length) + 329 len arg3.length + -ceil32(arg3.length) + 155]
        else:
            mem[floor32(arg3.length + 160) + arg3.length + ceil32(arg3.length) + 324] = mem[floor32(arg3.length + 160) + arg3.length + ceil32(arg3.length) + -(arg3.length + 160 % 32) + 356 len arg3.length + 160 % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 160 len ceil32(arg3.length) + 5], mem[arg3.length + ceil32(arg3.length) + ceil32(arg3.length) + 329 len floor32(arg3.length + 160) + -ceil32(arg3.length) + 27]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 352] = Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)'))
        if not floor32(arg3.length) + 192 % 32:
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 160 len ceil32(floor32(arg3.length)) + 6], mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(floor32(arg3.length)) + 362 len (3 * floor32(arg3.length)) + -ceil32(floor32(arg3.length)) + 186]
        else:
            mem[floor32(floor32(arg3.length) + 192) + floor32(arg3.length) + ceil32(arg3.length) + 356] = mem[floor32(floor32(arg3.length) + 192) + floor32(arg3.length) + ceil32(arg3.length) + -(floor32(arg3.length) + 192 % 32) + 388 len floor32(arg3.length) + 192 % 32]
            call arg1 with:
               funct Mask(32, 224, sha3('receiveApproval(address,uint256,', 'address,bytes)')) >> 224
                 gas gas_remaining wei
                args mem[ceil32(arg3.length) + 160 len ceil32(floor32(arg3.length)) + 6], mem[floor32(arg3.length) + ceil32(arg3.length) + ceil32(floor32(arg3.length)) + 362 len floor32(floor32(arg3.length) + 192) + -ceil32(floor32(arg3.length)) + 26]
    require ext_call.success
    return 1
}



}
