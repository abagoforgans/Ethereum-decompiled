contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor2;

function _fallback() payable {
    stor0 = msg.sender
    require not msg.value
    require msg.value <= 0
    require code.data[3068 len 32]
    stor1 = code.data[3068 len 32]
    stor0 = code.data[3112 len 20]
    stor2[code.data[3112 len 20]] = stor1
    return code.data[307 len 2761]
}



// =====================  Runtime code  =====================


const base = 10^6


address owner;
uint256 totalSupply;
mapping of uint256 balanceOf;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return balanceOf[address(arg1)][1][address(arg2)]
}

function _fallback() {
    revert
}

function setOwner(address arg1) {
    require msg.sender == owner
    emit NewOwner(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require msg.value <= 0
    emit Approval(arg2, msg.sender, arg1);
    balanceOf[address(msg.sender)][1][address(arg1)] += arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require msg.value <= 0
    require balanceOf[address(msg.sender)] >= arg2
    emit Transfer(arg2, msg.sender, arg1);
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require msg.value <= 0
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg1)][1][address(msg.sender)] >= arg3
    emit Transfer(arg3, arg1, arg2);
    balanceOf[address(arg1)][1][address(msg.sender)] -= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    return 1
}



}
