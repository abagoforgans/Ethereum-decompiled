contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 10 * 10^6
    stor2[address(this.address)] = 2500 * 3600
    stor2[stor0] = stor1 - stor2[address(this.address)]
    emit Transfer(stor2[stor0], this.address, stor0);
    return code.data[562 len 1241]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function _fallback() payable {
    require balanceOf[address(this.address)] > 0
    if 1000 * msg.value / 10^18 <= balanceOf[address(this.address)]:
        require 1000 * msg.value / 10^18 > 0
        balanceOf[address(msg.sender)] += 1000 * msg.value / 10^18
        balanceOf[address(this.address)] -= 1000 * msg.value / 10^18
        emit Transfer((1000 * msg.value / 10^18), this.address, msg.sender);
    else:
        call msg.sender with:
           value msg.value - (10^18 * balanceOf[address(this.address)] / 1000) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require balanceOf[address(this.address)] > 0
        balanceOf[address(msg.sender)] += balanceOf[address(this.address)]
        balanceOf[address(this.address)] = 0
        emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
}



}
