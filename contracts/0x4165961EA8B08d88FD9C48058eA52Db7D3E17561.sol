contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[63 len 3092]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 locked; offset 160
address owner;
uint256 stor2;
uint256 totalSupply;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function locked() payable {
    return locked
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
  stop
}

function safeToSubtract(uint256 arg1, uint256 arg2) payable {
    return arg2 <= arg1
}

function safeToAdd(uint256 arg1, uint256 arg2) payable {
    return arg1 + arg2 >= arg1
}

function subtractSafely(uint256 arg1, uint256 arg2) payable {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function addSafely(uint256 arg1, uint256 arg2) payable {
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function setOwner(address arg1) payable {
    require msg.sender == owner
    stor2 = arg1 or Mask(96, 160, stor2)
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require msg.sender == owner
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
