contract main {




// =====================  Runtime code  =====================


const name = Array(len=37, data='Mildred Drake Family Trust Hedge', ' Fund', Mask(40, -256, 'Mildred Drake Family Trust Hedge', ' Fund') << 256)

const totalSupply = 100000000000000 * 10^18

const decimals = 18

const _totalSupply = 100000000000000 * 10^18

const symbol = 'MDFT'


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

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

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ext_code.size(arg1) <= 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require ext_code.size(arg1) > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require ext_code.size(arg1)
    call arg1.0xc0ee0b8a with:
         gas gas_remaining wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) {
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
        require ext_code.size(mem[(32 * uint8(idx)) + 128]) <= 0
        require mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] -= mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * uint8(idx)) + 128])] + mem[(32 * uint8(idx)) + (32 * arg1.length) + 160] >= balanceOf[address(mem[(32 * uint8(idx)) + 128])]
        mem[0] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[32] = 1
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] += mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_19));
        idx = idx + 1
        continue 
}

function multiTransferFrom(address arg1, address[] arg2, uint256[] arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length <= 255
    require arg2.length == arg3.length
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        _24 = mem[(32 * uint8(idx)) + 128]
        require uint8(idx) < arg3.length
        require balanceOf[address(arg1)] >= mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        require mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] > 0
        require mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        require balanceOf[address(mem[(32 * uint8(idx)) + 128])] + mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] >= balanceOf[address(mem[(32 * uint8(idx)) + 128])]
        balanceOf[address(mem[(32 * uint8(idx)) + 128])] += mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        require mem[(32 * uint8(idx)) + (32 * arg2.length) + 160] <= allowance[address(arg1)][address(msg.sender)]
        mem[0] = msg.sender
        mem[32] = sha3(address(arg1), 2)
        allowance[address(arg1)][address(msg.sender)] -= mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = mem[(32 * uint8(idx)) + (32 * arg2.length) + 160]
        emit Transfer(mem[(32 * arg2.length) + (32 * arg3.length) + 160], arg1, address(_24));
        idx = idx + 1
        continue 
}



}
