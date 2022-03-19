contract main {


// =======================  Init code  ======================


mapping of uint8 stor1;
uint256 stor3;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    stor6 = 10^9
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor1[address(msg.sender)] = 1
    stor5 = 200 * 10^6 * stor6
    return code.data[96 len 1327]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint8 isMinter;
mapping of uint256 allowance;
address owner;
uint256 totalSupply;
uint256 maxSupply;
uint256 BASE;

function totalSupply() payable {
    return totalSupply
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)]
}

function owner() payable {
    return owner
}

function isMinter(address arg1) payable {
    return isMinter[address(arg1)]
}

function maxSupply() payable {
    return maxSupply
}

function allowance(address arg1, address arg2) payable {
    return allowance[address(arg1)][address(arg2)]
}

function BASE() payable {
    return BASE
}

function _fallback() payable {
    revert 
}

function delMinter(address arg1) payable {
    if owner != msg.sender:
        return 0
    isMinter[address(arg1)] = 0
    return 1
}

function addMinter(address arg1) payable {
    if owner != msg.sender:
        return 0
    isMinter[address(arg1)] = 1
    return 1
}

function approve(address arg1, uint256 arg2) payable {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(msg.sender, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    if isMinter[address(msg.sender)] != 1:
        return 0
    if arg2 + totalSupply > maxSupply:
        return 0
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit Mint(arg1, arg2, tx.origin);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 + balanceOf[arg1] <= balanceOf[arg1]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(msg.sender, arg1, arg2);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 + balanceOf[address(arg2)] <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg1, arg2, arg3);
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    return 1
}



}
