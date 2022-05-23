contract main {




// =====================  Runtime code  =====================


const name = 'IOU Official Token'

const decimals = 18

const supplyReserveVal = 600000000 * 10^18

const symbol = 'IOU'

const initSupply = 800000000 * 10^18


address owner;
address adminAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 icoSalesSupply;
uint256 icoReserveSupply;
uint256 softCap;
uint256 hardCap;
uint256 icoDeadLine;
uint8 stor10;
uint8 stor10; offset 8

function isIcoPaused() {
    return bool(uint8(stor10.field_0))
}

function totalSupply() {
    return totalSupply
}

function icoReserveSupply() {
    return icoReserveSupply
}

function icoSalesSupply() {
    return icoSalesSupply
}

function isStoppingIcoOnHardCap() {
    return bool(uint8(stor10.field_8))
}

function icoDeadLine() {
    return icoDeadLine
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function softCap() {
    return softCap
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function hardCap() {
    return hardCap
}

function _fallback() {
    revert
}

function isPausedICO() {
    if uint8(stor10.field_0):
        return 1
    else:
        return 0
}

function pauseICO() {
    require msg.sender == adminAddress
    uint8(stor10.field_0) = 1
    emit icoIsNowPaused(1);
}

function unpauseICO() {
    require msg.sender == adminAddress
    uint8(stor10.field_0) = 0
    emit icoHasRestarted(0);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit onOwnershipTransfered(owner, arg1);
    owner = arg1
}

function changeHardCap(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1
    emit onHardcapChanged(hardCap, arg1);
    hardCap = arg1
}

function changeAdminUser(address arg1) {
    require msg.sender == owner
    require arg1
    emit onAdminUserChange(adminAddress, arg1);
    adminAddress = arg1
}

function isHardcapReached() {
    if not uint8(stor10.field_8):
        return bool(uint8(stor10.field_8))
    return (-balanceOf[stor0] + 800000000 * 10^18 > hardCap)
}

function changeIcoDeadLine(uint256 arg1) {
    require msg.sender == adminAddress
    require arg1
    emit onIcoDeadlineChanged(icoDeadLine, arg1);
    icoDeadLine = arg1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 <= 0:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if block.timestamp <= icoDeadLine:
        require msg.sender == owner
    require arg1
    require arg1 != msg.sender
    require arg2 > 0
    if owner == msg.sender:
        if block.timestamp <= icoDeadLine:
            require arg2 <= balanceOf[msg.sender]
            require balanceOf[msg.sender] - arg2 >= icoReserveSupply
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function destroyRemainingTokens() {
    require msg.sender == adminAddress
    require block.timestamp > icoDeadLine
    require not uint8(stor10.field_0)
    require msg.sender == owner
    require block.timestamp > icoDeadLine
    if balanceOf[stor0] <= icoReserveSupply:
        require balanceOf[stor0] <= balanceOf[stor0]
        balanceOf[stor0] = 0
        require balanceOf[stor0] + balanceOf[0] >= balanceOf[0]
        balanceOf[0] += balanceOf[stor0]
        emit Transfer(balanceOf[stor0], msg.sender, 0);
    else:
        require icoReserveSupply <= balanceOf[stor0]
        require balanceOf[stor0] - icoReserveSupply <= balanceOf[stor0]
        balanceOf[stor0] = icoReserveSupply
        require balanceOf[stor0] - icoReserveSupply + balanceOf[0] >= balanceOf[0]
        balanceOf[0] = balanceOf[stor0] - icoReserveSupply + balanceOf[0]
        emit Transfer((balanceOf[stor0] - icoReserveSupply), msg.sender, 0);
    return 1
}



}
