contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
mapping of uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint8 stor7; offset 160
address stor7;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    require not msg.value
    stor3 = msg.sender
    require code.data[4435 len 20] != msg.sender
    stor0 = 50000000 * 10^18
    stor4 = 33500000 * 10^18
    stor5 = 16500000 * 10^18
    stor1[address(msg.sender)] = 50000000 * 10^18
    emit Transfer(50000000 * 10^18, 0, msg.sender);
    address(stor7.field_0) = code.data[4435 len 20]
    stor2[address(msg.sender)][address(code.data[4423 len 32])] = stor5
    emit Approval(stor5, msg.sender, code.data[4435 len 20]);
    return code.data[416 len 4007]
}



// =====================  Runtime code  =====================


const name = 'Bitkom Token'

const decimals = 18

const symbol = 'BTT'

const INITIAL_SUPPLY = 50000000 * 10^18

const CROWDSALE_ALLOWANCE = 33500000 * 10^18

const TEAM_ALLOWANCE = 16500000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 crowdsaleAllowance;
uint256 teamAllowance;
address crowdsaleAddr;
uint8 stor7; offset 160
address teamAddr;

function totalSupply() {
    return totalSupply
}

function teamAddr() {
    return teamAddr
}

function transferEnabled() {
    return bool(uint8(stor7.field_160))
}

function crowdsaleAllowance() {
    return crowdsaleAllowance
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function teamAllowance() {
    return teamAllowance
}

function crowdsaleAddr() {
    return crowdsaleAddr
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function enableTransfer() {
    require owner == msg.sender
    uint8(stor7.field_160) = 1
    allowance[address(msg.sender)][stor6] = 0
    emit Approval(0, msg.sender, crowdsaleAddr);
    allowance[address(msg.sender)][address(stor7.field_0)] = 0
    emit Approval(0, msg.sender, teamAddr);
    crowdsaleAllowance = 0
    teamAllowance = 0
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    if not uint8(stor7.field_160):
        require owner == msg.sender
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function setCrowdsale(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor7.field_160)
    require arg2 <= crowdsaleAllowance
    allowance[address(msg.sender)][stor6] = 0
    emit Approval(0, msg.sender, crowdsaleAddr);
    if not arg2:
        allowance[address(msg.sender)][address(arg1)] = crowdsaleAllowance
        emit Approval(crowdsaleAllowance, msg.sender, arg1);
    else:
        allowance[address(msg.sender)][address(arg1)] = arg2
        emit Approval(arg2, msg.sender, arg1);
    crowdsaleAddr = arg1
}

function transfer(address arg1, uint256 arg2) {
    if not uint8(stor7.field_160):
        if teamAddr != msg.sender:
            require crowdsaleAddr == msg.sender
    require arg1
    require arg1 != this.address
    require owner != arg1
    require teamAddr != arg1
    require crowdsaleAddr != arg1
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not uint8(stor7.field_160):
        if teamAddr != msg.sender:
            require crowdsaleAddr == msg.sender
    require arg2
    require arg2 != this.address
    require owner != arg2
    require teamAddr != arg2
    require crowdsaleAddr != arg2
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    if crowdsaleAddr == msg.sender:
        require arg3 <= crowdsaleAllowance
        crowdsaleAllowance -= arg3
    if teamAddr == msg.sender:
        require arg3 <= teamAllowance
        teamAllowance -= arg3
    return 1
}



}
