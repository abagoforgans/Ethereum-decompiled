contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;

function _fallback() {
    require code.data[2209 len 20]
    require code.data[2241 len 20]
    require code.data[2273 len 20]
    require code.data[2305 len 20]
    stor0 = 33000000 * 10^18
    stor1[code.data[2209 len 20]] = 7500 * 10^18 * 24 * 3600
    emit code.data[2165 len 32]: (7500 * 10^18 * 24 * 3600), 0, code.data[2209 len 20]
    stor1[address(code.data[2229 len 32])] = 2000000 * 10^18
    emit code.data[2165 len 32]: 2000000 * 10^18, 0, code.data[2241 len 20]
    stor1[address(code.data[2261 len 32])] = 3000000 * 10^18
    emit code.data[2165 len 32]: 3000000 * 10^18, 0, code.data[2273 len 20]
    stor1[address(code.data[2293 len 32])] = 1000000 * 10^18
    emit code.data[2165 len 32]: 1000000 * 10^18, 0, code.data[2305 len 20]
    return code.data[485 len 1680]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 18

const symbol = ''


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    if balanceOf[address(msg.sender)] < arg1:
        return 0
    if arg1 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
