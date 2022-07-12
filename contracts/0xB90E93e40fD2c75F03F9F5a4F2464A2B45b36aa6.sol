contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = 365 * 10^14
    stor2[address(msg.sender)] = 365 * 10^14
    return code.data[91 len 4127]
}



// =====================  Runtime code  =====================


const name = ''

const totalSupply = 365 * 10^14

const decimals = 8

const _decimals = 8

const symbol = ''

const _symbol = ''

const _initialSupply = 365 * 10^14

const _name = ''


address owner;
uint256 _currentSupply;
mapping of uint256 balances;
mapping of uint256 allowed;

function balances(address arg1) {
    return balances[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function currentSupply() {
    return _currentSupply
}

function owner() {
    return owner
}

function _currentSupply() {
    return _currentSupply
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function amountBurned() {
    return (-_currentSupply + 365 * 10^14)
}

function approve(address arg1, uint256 arg2) {
    if arg2 > _currentSupply:
        return 0
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    balances[address(arg1)] -= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burn(uint256 arg1, bytes arg2) {
    mem[128 len arg2.length] = arg2[all]
    if balances[address(msg.sender)] < arg1:
        return 0
    if arg1 <= 0:
        return 0
    balances[address(msg.sender)] -= arg1
    _currentSupply -= arg1
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 160] = _currentSupply - arg1
    mem[ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg2.length) + 224] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 256] = mem[128]
        mem[ceil32(arg2.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit Burn(arg1, _currentSupply - arg1, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 256 len arg2.length]), msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    if not arg1:
    else:
        if ext_code.size(arg1) <= 0:
        else:
            require ext_code.size(arg1)
            call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, 96, 0
            require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer(address arg1, address arg2, uint256 arg3, bytes arg4):
                  arg2,
                  64,
                  0,
                  msg.sender,
                  arg1,
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    if not arg1:
    else:
        if ext_code.size(arg1) <= 0:
        else:
            mem[ceil32(arg3.length) + 128] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
            mem[ceil32(arg3.length) + 132] = msg.sender
            mem[ceil32(arg3.length) + 164] = arg2
            mem[ceil32(arg3.length) + 196] = 96
            mem[ceil32(arg3.length) + 228] = arg3.length
            if arg3.length:
                mem[ceil32(arg3.length) + 260] = mem[128]
                mem[ceil32(arg3.length) + 292 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
            require ext_code.size(arg1)
            call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining - 710 wei
                args msg.sender, arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 260 len arg3.length])
            require ext_call.success
    emit Transfer(arg2, msg.sender, arg1);
    mem[ceil32(arg3.length) + 128] = arg2
    mem[ceil32(arg3.length) + 160] = 64
    mem[ceil32(arg3.length) + 192] = arg3.length
    if arg3.length:
        mem[ceil32(arg3.length) + 224] = mem[128]
        mem[ceil32(arg3.length) + 256 len floor32(arg3.length - 1)] = mem[160 len floor32(arg3.length - 1)]
    emit Transfer(arg2, Array(len=arg3.length, data=mem[ceil32(arg3.length) + 224 len arg3.length]), msg.sender, arg1);
    return 1
}



}
