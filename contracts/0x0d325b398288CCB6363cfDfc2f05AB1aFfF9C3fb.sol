contract main {




// =====================  Runtime code  =====================


const name = 'SportGift Token'

const decimals = 18

const symbol = 'SPORTG'

const INITIAL_SUPPLY = 1000000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor2;
address owner;
mapping of uint8 stor4;
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

function frozenAccount(address arg1) {
    return bool(stor4[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
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
    stor2[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor4[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require stor2[address(msg.sender)][address(arg1)] + arg2 >= stor2[address(msg.sender)][address(arg1)]
    stor2[address(msg.sender)][address(arg1)] += arg2
    emit Approval(stor2[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= stor2[address(msg.sender)][address(arg1)]:
        stor2[address(msg.sender)][address(arg1)] -= arg2
    else:
        stor2[address(msg.sender)][address(arg1)] = 0
    emit Approval(stor2[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= stor2[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= stor2[address(arg1)][address(msg.sender)]
    stor2[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function airDrop(address arg1, address arg2, address[] arg3, uint256[] arg4) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require msg.sender == owner
    idx = 0
    while idx < arg3.length:
        require idx < arg3.length
        _14 = mem[(32 * idx) + 128]
        require idx < arg4.length
        _16 = mem[(32 * idx) + (32 * arg3.length) + 160]
        mem[(32 * arg3.length) + (32 * arg4.length) + 164] = arg2
        mem[(32 * arg3.length) + (32 * arg4.length) + 196] = address(_14)
        mem[(32 * arg3.length) + (32 * arg4.length) + 228] = _16
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args address(arg2), address(_14), _16
        mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}



}
