contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
address stor5;
address stor6;
address stor7;
address stor8;
uint256 stor10;

function _fallback() payable {
    stor4 = 0x8294159de662f0bd810feab94237cf3a7bb2a3d
    stor5 = 0xaed27d4eccd7c0a0bd548383dec89031b7bbcf3e
    stor6 = 0x41ba7eed9be2450961ebfd7c9fb715cae077f1dc
    stor7 = 0xb9cdb4cdc8f9a931063ca30bcde8b210d3ba80a3
    stor8 = 0x5abf2ca9e7f5f1895c6fbecf5668f164797edc5d
    stor10 = 1136
    stor3 = msg.sender
    return code.data[518 len 6807]
}



// =====================  Runtime code  =====================


const name = 'StarLight'

const decimals = 18

const symbol = 'STAR'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
address address1;
address address2;
address address3;
address address4;
address address5;
uint256 weiRaised;
uint256 price;

function address5() {
    return address5
}

function totalSupply() {
    return totalSupply
}

function address3() {
    return address3
}

function address1() {
    return address1
}

function weiRaised() {
    return weiRaised
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function address2() {
    return address2
}

function price() {
    return price
}

function address4() {
    return address4
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setPrice(uint256 arg1) {
    price = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    owner = arg1
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
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
    require msg.value >= 10^18
    if totalSupply / 10^18 > 3 * 10^6:
        price = 558
        if totalSupply / 10^18 > 2500 * 3600:
            price = 277
            if totalSupply / 10^18 > 6500 * 3600:
                price = 136
                if totalSupply / 10^18 > 29000 * 3600:
                    price = 0
    if msg.value:
        require msg.value
        require msg.value * price / msg.value == price
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    require totalSupply + (msg.value * price) >= totalSupply
    totalSupply += msg.value * price
    require balanceOf[address(msg.sender)] + (msg.value * price) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value * price
    call address1 with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    call address2 with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    call address3 with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    call address4 with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
    call address5 with:
       value msg.value / 5 wei
         gas 2300 * is_zero(value) wei
}



}
