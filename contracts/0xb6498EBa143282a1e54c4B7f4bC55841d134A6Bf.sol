contract main {




// =====================  Runtime code  =====================


uint8 stor0;
address m_aOwner; offset 8
mapping of uint8 stor1;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function m_aOwner() {
    return m_aOwner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_eb1e1d03(?) {
    return bool(stor1[arg1])
}

function m_bIsLock() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function SetAllLock(bool arg1) {
    require msg.sender == m_aOwner
    stor0 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == m_aOwner
    require arg1
    emit OwnershipTransferred(m_aOwner, arg1);
    m_aOwner = arg1
}

function SetLockAddress(address arg1, bool arg2) {
    require msg.sender == m_aOwner
    require m_aOwner != arg1
    stor1[address(arg1)] = uint8(arg2)
    emit Locked(address(arg1), arg2);
}

function burnCoin(uint256 arg1) {
    require msg.sender == m_aOwner
    require arg1 <= balanceOf[msg.sender]
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit EventBurnCoin(msg.sender, arg1);
}

function addCoin(uint256 arg1) {
    require msg.sender == m_aOwner
    require arg1 + balanceOf[msg.sender] >= balanceOf[msg.sender]
    balanceOf[msg.sender] += arg1
    require arg1 + totalSupply >= totalSupply
    totalSupply += arg1
    emit EventAddCoin(arg1, arg1 + totalSupply);
}

function transfer(address arg1, uint256 arg2) {
    require not stor0
    require not stor1[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
