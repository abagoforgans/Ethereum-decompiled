contract main {


// =======================  Init code  ======================


uint256 stor3;

function _fallback() payable {
    stor3 = (block.hash(block.number - 1) % 10000) + 100
    require not msg.value
    return code.data[59 len 3518]
}



// =====================  Runtime code  =====================


const name = 'LKCoin'

const decimals = 18

const multisig = 0x46d9112533ef677059c430e515775e358888e38b

const symbol = 'LKC'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 price;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function PRICE() {
    return price
}

function getPrice() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}

function createTokens(address arg1) payable {
    require msg.value
    require msg.value
    require msg.value * price / msg.value == price
    require totalSupply + (msg.value * price) >= totalSupply
    totalSupply += msg.value * price
    require balanceOf[address(arg1)] + (msg.value * price) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value * price
    call 0x46d9112533ef677059c430e515775e358888e38b with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require msg.value
    require msg.value
    require msg.value * price / msg.value == price
    require totalSupply + (msg.value * price) >= totalSupply
    totalSupply += msg.value * price
    require balanceOf[address(msg.sender)] + (msg.value * price) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * price
    call 0x46d9112533ef677059c430e515775e358888e38b with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
