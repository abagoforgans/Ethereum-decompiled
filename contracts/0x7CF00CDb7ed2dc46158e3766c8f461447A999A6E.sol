contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = 18
    stor1 = 100 * 10^6
    require not msg.value
    return code.data[51 len 1035]
}



// =====================  Runtime code  =====================


const name = 'Compras'

const symbol = 'COMP'


uint8 decimals;
uint256 totalSupply;
address minterAddress;
mapping of uint256 balances;

function minter() {
    return minterAddress
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

function _fallback() payable {
    revert
}

function Coin() {
    minterAddress = msg.sender
}

function mint(address arg1, uint256 arg2) {
    if minterAddress == msg.sender:
        balances[address(arg1)] += arg2
}

function send(address arg1, uint256 arg2) {
    if balances[address(msg.sender)] >= arg2:
        balances[address(msg.sender)] -= arg2
        balances[arg1] += arg2
        emit Sent(msg.sender, address(arg1), arg2);
}



}
