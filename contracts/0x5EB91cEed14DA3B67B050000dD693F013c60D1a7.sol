contract main {


// =======================  Init code  ======================


address stor3;
uint256 stor5;

function _fallback() payable {
    stor5 = 0
    stor3 = msg.sender
    return code.data[54 len 2472]
}



// =====================  Runtime code  =====================


const name = ''

const decimals = 0

const symbol = ''


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 price;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function Price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setPrice(uint256 arg1) {
    require owner == msg.sender
    price = arg1
    return 1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function sendEtherToOwner() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        return 1
    else:
        return 0
}

function mint(uint256 arg1) {
    require owner == msg.sender
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    require arg1 + balanceOf[address(this.address)] >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg1
    emit Mint(arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    require price
    require balanceOf[address(this.address)] >= msg.value / price
    require msg.value
    require msg.value / price
    balanceOf[address(msg.sender)] += msg.value / price
    balanceOf[this.address] -= msg.value / price
    emit Transfer((msg.value / price), this.address, msg.sender);
}

function sell() payable {
    require price
    require balanceOf[address(this.address)] >= msg.value / price
    require msg.value
    require msg.value / price
    balanceOf[address(msg.sender)] += msg.value / price
    balanceOf[this.address] -= msg.value / price
    emit Transfer((msg.value / price), this.address, msg.sender);
    return (msg.value / price)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
