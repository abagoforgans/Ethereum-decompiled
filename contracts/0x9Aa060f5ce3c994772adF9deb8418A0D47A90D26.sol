contract main {




// =====================  Runtime code  =====================


const name = 'Xen Bounty'

const decimals = 18

const symbol = 'XENB'

const INITIAL_SUPPLY = 50000000 * 10^18


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
address stor4;
uint256 stor5;
uint8 stor6;
address whitelistedAddress; offset 8

function totalSupply() {
    return totalSupply
}

function whitelisted() {
    return whitelistedAddress
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

function _fallback() {
  stop
}

function whitelist(address arg1) {
    require msg.sender == owner
    stor4 = arg1
}

function overrideLock(bool arg1) {
    require msg.sender == owner
    stor6 = uint8(arg1)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if not stor6:
        require block.timestamp > stor5
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function reclaimEther() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function increaseApproval(address arg1, uint256 arg2) {
    if not stor6:
        require block.timestamp > stor5
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if not stor6:
        require block.timestamp > stor5
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not stor6:
        require block.timestamp > stor5
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferWhileLocked(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == stor4
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
    if not stor6:
        require block.timestamp > stor5
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function multiTransfer(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if msg.sender == owner:
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _31 = mem[(32 * idx) + 128]
            require idx < arg2.length
            require mem[(32 * idx) + 140 len 20]
            require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += -1 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) >= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] += 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_31));
            idx = idx + 1
            continue 
    else:
        require msg.sender == stor4
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            _33 = mem[(32 * idx) + 128]
            require idx < arg2.length
            require mem[(32 * idx) + 140 len 20]
            require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += -1 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            require balanceOf[address(mem[(32 * idx) + 128])] + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) >= balanceOf[address(mem[(32 * idx) + 128])]
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 0
            balanceOf[address(mem[(32 * idx) + 128])] += 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
            emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_33));
            idx = idx + 1
            continue 
}



}
