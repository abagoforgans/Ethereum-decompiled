contract main {




// =====================  Runtime code  =====================


array of uint256 version;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowances;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return _totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function version() {
    return version[0 len version.length]
}

function allowances(address arg1, address arg2) {
    return allowances[arg1][arg2]
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

function allowance(address arg1, address arg2) {
    return allowances[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowances[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if balances[address(msg.sender)] < arg1:
        return 0
    balances[address(msg.sender)] -= arg1
    _totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    if balances[address(arg1)] < arg2:
        return 0
    if arg2 > allowances[address(arg1)][address(msg.sender)]:
        return 0
    balances[address(arg1)] -= arg2
    _totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        return 0
    if balances[address(msg.sender)] < arg2:
        return 0
    if balances[address(arg1)] + arg2 < balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg2:
        return 0
    if balances[address(arg1)] < arg3:
        return 0
    if balances[address(arg2)] + arg3 < balances[address(arg2)]:
        return 0
    if arg3 > allowances[address(arg1)][address(msg.sender)]:
        return 0
    balances[address(arg1)] -= arg3
    balances[address(arg2)] += arg3
    allowances[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowances[address(msg.sender)][address(arg1)] = arg2
    mem[ceil32(arg3.length) + 128] = arg2
    emit Approval(address arg1, address arg2, uint256 arg3):
                  Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0),
                  mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)],
                  msg.sender,
                  arg1,
    require ext_code.size(arg1)
    call arg1 with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 0, 1
}



}
