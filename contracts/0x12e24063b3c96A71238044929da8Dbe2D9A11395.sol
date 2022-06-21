contract main {




// =====================  Runtime code  =====================


const name = 'G01Test'

const decimals = 18

const _decimals = 18

const symbol = 'GTEST'

const _symbol = 'GTEST'

const _name = 'G01Test'


address owner;
uint256 totalSupply_;
mapping of uint256 balances;
mapping of uint256 allowed;

function totalSupply() {
    return totalSupply_
}

function balances(address arg1) {
    return balances[arg1]
}

function totalSupply_() {
    return totalSupply_
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

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function approve(address arg1, uint256 arg2) {
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

function transfer(address arg1, uint256 arg2, bytes arg3) {
    if balances[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balances[address(arg1)] + arg2 <= balances[address(arg1)]:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    if not arg1:
    else:
        if ext_code.size(arg1) <= 0:
        else:
            require ext_code.size(arg1)
            call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    emit Transfer(arg2, Array(len=arg3.length, data=arg3[all]), msg.sender, arg1);
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
    balances[address(arg1)] += arg2
    if not arg1:
    else:
        if ext_code.size(arg1) <= 0:
        else:
            mem[164] = 96
            mem[196] = 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000
            mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000] = uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b89ffffffffffffffffffffffffffffffffffffffffffffffffffffff9c]
            require ext_code.size(arg1)
            call arg1.tokenFallback(address arg1, uint256 arg2, bytes arg3) with:
                 gas gas_remaining wei
                args 0, uint32(msg.sender), arg2, 96, 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000, mem[228 len 0xc0ee0b8a00000000000000000000000000000000000000000000000000000000]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    mem[128] = 64
    mem[160] = arg2
    mem[192 len ceil32(arg2)] = mem[128 len ceil32(arg2)]
    emit Transfer(arg2, Array(len=arg2, data=mem[192 len arg2]), msg.sender, arg1);
    return 1
}



}
