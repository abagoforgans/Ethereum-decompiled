contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
address stor3;
uint256 stor4;

function _fallback() payable {
    stor3 = msg.sender
    stor0 = 120 * 10^6
    stor1[address(msg.sender)] = 120 * 10^6
    stor4 = 120 * 10^6
    emit code.data[2854 len 32]: 120 * 10^6, 0, this.address
    emit code.data[2854 len 32]: stor0, this.address, msg.sender
    return code.data[183 len 2671]
}



// =====================  Runtime code  =====================


const name = 'Order'

const decimals = 3

const sellPrice = (92500 * 10^6 * 3600)

const buyPrice = (925 * 10^11 * 3600)

const symbol = 'ETH'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 initialSupply;

function totalSupply() {
    return totalSupply
}

function initialSupply() {
    return initialSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
}

function mintToken(address arg1, uint256 arg2) {
    require owner == msg.sender
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] > arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    require balanceOf[address(this.address)] >= msg.value / 925 * 10^11 * 3600
    balanceOf[address(msg.sender)] += msg.value / 925 * 10^11 * 3600
    balanceOf[this.address] -= msg.value / 925 * 10^11 * 3600
    emit Transfer((msg.value / 925 * 10^11 * 3600), this.address, msg.sender);
}

function sell(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(this.address)] += arg1
    balanceOf[msg.sender] -= arg1
    call msg.sender with:
       value 92500 * 10^6 * 3600 * arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Transfer(arg1, msg.sender, this.address);
}

function buy() payable {
    require balanceOf[address(this.address)] >= msg.value / 925 * 10^11 * 3600
    balanceOf[address(msg.sender)] += msg.value / 925 * 10^11 * 3600
    balanceOf[this.address] -= msg.value / 925 * 10^11 * 3600
    emit Transfer((msg.value / 925 * 10^11 * 3600), this.address, msg.sender);
    return (msg.value / 925 * 10^11 * 3600)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[arg1]
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
}



}
