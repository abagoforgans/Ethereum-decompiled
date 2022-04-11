contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
mapping of uint256 stor6;

function _fallback() {
    stor0 = 6 * 10^10
    stor1 = 0
    stor2 = 0
    stor3 = 148800000
    stor4 = msg.sender
    stor6[address(msg.sender)] = stor0
    return code.data[207 len 2895]
}



// =====================  Runtime code  =====================


const name = 'NiggerCoin'

const decimals = 4

const symbol = 'NGR'


uint256 INITIAL_SUPPLY;
uint256 totalSupply;
uint256 totalContrib;
uint256 rate;
address owner;
uint256 amount;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function totalContrib() {
    return totalContrib
}

function rate() {
    return rate
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function amount() {
    return amount
}

function getStats() {
    return totalSupply, totalContrib
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg3:
        return 0
    if balanceOf[stor4] < arg3:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    require msg.value
    require msg.value >= 0
    require balanceOf[stor4] >= msg.value * rate / 10^18
    amount = 0
    if msg.value:
        require msg.value
        require msg.value * rate / msg.value == rate
    amount = msg.value * rate / 10^18
    if amount:
        if balanceOf[stor4] >= amount:
            balanceOf[address(msg.sender)] += amount
            balanceOf[stor4] -= amount
            emit Transfer(amount, owner, msg.sender);
    totalSupply += amount
    totalContrib += msg.value
    amount = 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
