contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;

function _fallback() payable {
    stor0 = 100000000 * 10^18
    require not msg.value
    stor3 = msg.sender
    stor1[address(msg.sender)] = stor0
    return code.data[92 len 2011]
}



// =====================  Runtime code  =====================


const name = 'DeDeTether'

const decimals = 18

const symbol = 'DDT'


uint256 _totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
address myAddress;

function totalSupply() {
    return _totalSupply
}

function myAddress() {
    return myAddress
}

function balances(address arg1) {
    return balances[arg1]
}

function _totalSupply() {
    return _totalSupply
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function sub_097c1e25(?) {
    require myAddress == msg.sender
    selfdestruct(myAddress)
}

function _fallback() payable {
    revert
}

function sub_c0455210(?) {
    balances[address(msg.sender)] += arg1
    _totalSupply += arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(msg.sender, address(arg1), arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] < arg2:
        return 0
    balances[address(msg.sender)] -= arg2
    balances[arg1] += arg2
    emit Transfer(msg.sender, address(arg1), arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 < 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    balances[address(arg1)] -= arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(address(arg1), address(arg2), arg3);
    return 1
}



}
