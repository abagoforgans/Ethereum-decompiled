contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
mapping of uint256 stor6;

function _fallback() {
    stor0 = 21 * 10^10
    stor1 = 0
    stor2 = 0
    stor3 = 210 * 10^6
    stor4 = msg.sender
    stor6[address(msg.sender)] = 21 * 10^10
    return code.data[104 len 1955]
}



// =====================  Runtime code  =====================


const name = 'EtherDOGE'

const decimals = 4

const symbol = 'eDOGE'


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
    balanceOf[arg1] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    require msg.value
    require msg.value >= 0
    require balanceOf[stor4] >= rate * msg.value / 10^18
    amount = 0
    if msg.value:
        require msg.value
        require rate * msg.value / msg.value == rate
    amount = rate * msg.value / 10^18
    if rate * msg.value / 10^18:
        if balanceOf[stor4] >= rate * msg.value / 10^18:
            balanceOf[address(msg.sender)] += rate * msg.value / 10^18
            balanceOf[stor4] -= rate * msg.value / 10^18
            emit Transfer((rate * msg.value / 10^18), owner, msg.sender);
    totalSupply += amount
    totalContrib += msg.value
    amount = 0
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
