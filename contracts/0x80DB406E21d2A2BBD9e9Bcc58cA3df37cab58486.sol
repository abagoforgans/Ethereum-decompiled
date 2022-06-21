contract main {




// =====================  Runtime code  =====================


const name = Array(len=33, data='Play0x.com All ERC20 betting gam', 'e', Mask(8, -256, 'Play0x.com All ERC20 betting gam', 'e') << 256)

const decimals = 18

const symbol = Array(len=33, data='Play0x.com All ERC20 betting gam', 'e', Mask(8, -256, 'Play0x.com All ERC20 betting gam', 'e') << 256)


mapping of uint256 allowance;
uint256 totalSupply;
mapping of uint256 balanceOf;
address owner;
address tokenWalletAddress;
address fundWalletAddress;

function totalSupply() {
    return totalSupply
}

function fundWallet() {
    return fundWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function tokenWallet() {
    return tokenWalletAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function _fallback() payable {
    call fundWalletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function initialize(address arg1, address arg2, uint256 arg3) {
    require msg.sender == owner
    require arg1
    require arg2
    tokenWalletAddress = arg1
    fundWalletAddress = arg2
    totalSupply = arg3
    balanceOf[stor4] = arg3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function send(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require arg2 <= balanceOf[stor4]
        balanceOf[stor4] -= arg2
        require idx < arg1.length
        require balanceOf[mem[(32 * idx) + 140 len 20]] + arg2 >= balanceOf[mem[(32 * idx) + 140 len 20]]
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 2
        balanceOf[mem[(32 * idx) + 140 len 20]] += arg2
        require idx < arg1.length
        _25 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 128] = arg2
        emit Transfer(arg2, tokenWalletAddress, address(_25));
        idx = idx + 1
        continue 
}



}
