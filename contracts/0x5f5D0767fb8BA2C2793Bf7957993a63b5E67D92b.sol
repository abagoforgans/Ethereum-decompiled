contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function hasExtension(address arg1) {
    return bool(stor1[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function addExtension(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 1
}

function removeExtension(address arg1) {
    require msg.sender == owner
    stor1[address(arg1)] = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require msg.sender == owner
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function create(uint256 arg1) {
    require msg.sender == owner
    require balances[address(msg.sender)] + arg1 >= balances[address(msg.sender)]
    balances[address(msg.sender)] += arg1
    require totalSupply + arg1 >= totalSupply
    totalSupply += arg1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg2)] + arg3 >= balances[address(arg2)]
    balances[address(arg2)] += arg3
    require arg3 <= balances[address(arg1)]
    balances[address(arg1)] -= arg3
    if not stor1[address(arg2)]:
        if not stor1[address(arg1)]:
            require arg3 <= allowed[address(arg1)][address(msg.sender)]
            allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function batchTransfer(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if not arg1.length:
        require 0 <= balances[address(msg.sender)]
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require balances[mem[(32 * idx) + 140 len 20]] + arg2 >= balances[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balances[mem[(32 * idx) + 140 len 20]] = (2 * balances[mem[(32 * idx) + 140 len 20]]) + arg2
            require idx < arg1.length
            _47 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_47));
            idx = idx + 1
            continue 
    else:
        require arg1.length
        require arg1.length * arg2 / arg1.length == arg2
        require arg1.length * arg2 <= balances[address(msg.sender)]
        balances[address(msg.sender)] += -1 * arg1.length * arg2
        idx = 0
        while idx < arg1.length:
            require idx < arg1.length
            require balances[mem[(32 * idx) + 140 len 20]] + arg2 >= balances[mem[(32 * idx) + 140 len 20]]
            require idx < arg1.length
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balances[mem[(32 * idx) + 140 len 20]] = (2 * balances[mem[(32 * idx) + 140 len 20]]) + arg2
            require idx < arg1.length
            _44 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 128] = arg2
            emit Transfer(arg2, msg.sender, address(_44));
            idx = idx + 1
            continue 
}



}
