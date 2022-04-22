contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;
uint256 stor4;

function _fallback() payable {
    stor1 = 10000 * 10^18
    stor4 = 3 * 10^17
    require not msg.value
    stor0 = msg.sender
    stor0 = code.data[2940 len 20]
    stor2[code.data[2940 len 20]] = stor1
    return code.data[161 len 2767]
}



// =====================  Runtime code  =====================


const name = 'Blockshow'

const decimals = 18

const symbol = 'BST'


address owner;
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

function owner() {
    return owner
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, owner);
    emit Transfer(arg2, owner, arg1);
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function buyTo(address arg1) payable {
    require price
    require balanceOf[stor0] >= 10^18 * msg.value / price
    require 10^18 * msg.value / price <= balanceOf[stor0]
    balanceOf[stor0] -= 10^18 * msg.value / price
    require (10^18 * msg.value / price) + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = (10^18 * msg.value / price) + balanceOf[arg1]
    emit Payment(msg.value, 10^18 * msg.value / price);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require price
    require balanceOf[stor0] >= 10^18 * msg.value / price
    require 10^18 * msg.value / price <= balanceOf[stor0]
    balanceOf[stor0] -= 10^18 * msg.value / price
    require (10^18 * msg.value / price) + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[address(msg.sender)] = (10^18 * msg.value / price) + balanceOf[msg.sender]
    emit Payment(msg.value, 10^18 * msg.value / price);
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
