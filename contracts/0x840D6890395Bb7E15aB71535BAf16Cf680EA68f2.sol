contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() {
    stor1 = msg.sender
    stor2 = 1500 * 10^6
    require stor2
    stor3 = 66666700 * 10^6 / stor2
    stor0 = 0
    stor4[stor1] = 14 * 10^14
    require stor0 + stor4[stor1] >= stor0
    stor0 += stor4[stor1]
    return code.data[436 len 5966]
}



// =====================  Runtime code  =====================


const MULTISIG = 0x66ea39aee3f4a2e39d2f28b397a4daf0bffafd89

const DECIMALS = 6

const MAX_SUPPLY = 7 * 10^15

const NAME = 'PeregrineCoin'

const SYMBOL = 'PER'


uint256 totalSupply;
address stor1;
uint256 stor2;
uint256 stor3;
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

function kill() {
    require stor1 == msg.sender
    selfdestruct(stor1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function updateExchangeRate(uint256 arg1, uint256 arg2) {
    require stor1 == msg.sender
    emit 0xc08fc03a: stor2, stor3, arg1, arg2
    stor2 = arg1
    stor3 = arg2
}

function withdrawFunds() {
    require stor1 == msg.sender
    require eth.balance(this.address) > 0
    call 0x66ea39aee3f4a2e39d2f28b397a4daf0bffafd89 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit LogBurn(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require msg.value >= stor3
    if msg.value:
        require msg.value
        require msg.value * stor2 / msg.value == stor2
    require totalSupply + (msg.value * stor2 / 10^18) >= totalSupply
    totalSupply += msg.value * stor2 / 10^18
    require totalSupply <= 7 * 10^15
    balanceOf[address(msg.sender)] += msg.value * stor2 / 10^18
    call 0x66ea39aee3f4a2e39d2f28b397a4daf0bffafd89 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mintTokens() payable {
    require msg.value >= stor3
    if msg.value:
        require msg.value
        require msg.value * stor2 / msg.value == stor2
    require totalSupply + (msg.value * stor2 / 10^18) >= totalSupply
    totalSupply += msg.value * stor2 / 10^18
    require totalSupply <= 7 * 10^15
    balanceOf[address(msg.sender)] += msg.value * stor2 / 10^18
    call 0x66ea39aee3f4a2e39d2f28b397a4daf0bffafd89 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}



}
