contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor2;

function _fallback() payable {
    mem[96 len -778] = code.data[915 len -778]
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor2 = mem[96]
    if mem[236 len 20]:
        stor0 = mem[224]
    return code.data[137 len 778]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of uint256 balanceOf;
uint256 totalSupply;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return address(owner)
}

function _fallback() payable {
    revert 
}

function transferOwnership(address arg1) {
    require address(owner) == msg.sender
    uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
}

function mintToken(address arg1, uint256 arg2) {
    require msg.sender == address(owner)
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, address(owner));
    emit Transfer(arg2, address(owner), arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
