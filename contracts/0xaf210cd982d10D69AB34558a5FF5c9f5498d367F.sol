contract main {


// =======================  Init code  ======================


uint16 stor3; offset 160
address stor3;
uint256 stor4;

function _fallback() payable {
    stor4 = 0
    address(stor3.field_0) = msg.sender
    uint16(stor3.field_160) = 0
    return code.data[53 len 3870]
}



// =====================  Runtime code  =====================


const name = 'Alvalor'

const decimals = 12

const dropSupply = '33333333'

const symbol = 'TVAL'

const maxSupply = test266151307()


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint8 stor3; offset 168
address owner;
uint256 claimedSupply;
mapping of uint256 stor5;

function frozen() {
    return bool(uint8(stor3.field_168))
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor3.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function claimedSupply() {
    return claimedSupply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function claimable(address arg1) {
    if claimedSupply < '33333333':
        return stor5[address(arg1)]
    else:
        return 0
}

function unpause() {
    require owner == msg.sender
    require uint8(stor3.field_160)
    uint8(stor3.field_160) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor3.field_160)
    uint8(stor3.field_160) = 1
    emit Pause()
}

function freeze() {
    require owner == msg.sender
    require not uint8(stor3.field_168)
    uint8(stor3.field_168) = 1
    emit Freeze()
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function drop(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor3.field_168)
    require claimedSupply < '33333333'
    stor5[address(arg1)] = arg2
    emit Drop(arg2, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor3.field_168)
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor3.field_168)
    require arg2 > 0
    require totalSupply <= test266151307()
    require '33333333' <= -totalSupply + test266151307()
    require arg2 <= -totalSupply + -'33333333' + test266151307()
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor3.field_160)
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
    return 1
}

function claim() {
    require not uint8(stor3.field_160)
    require uint8(stor3.field_168)
    require claimedSupply < '33333333'
    require claimedSupply <= '33333333'
    if stor5[address(msg.sender)] < '33333333' - claimedSupply:
        require stor5[address(msg.sender)] <= stor5[address(msg.sender)]
        stor5[address(msg.sender)] = 0
        require stor5[address(msg.sender)] + claimedSupply >= claimedSupply
        claimedSupply += stor5[address(msg.sender)]
        require stor5[address(msg.sender)] + totalSupply >= totalSupply
        totalSupply += stor5[address(msg.sender)]
        require stor5[address(msg.sender)] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += stor5[address(msg.sender)]
        emit Claim(stor5[address(msg.sender)], msg.sender);
    else:
        require '33333333' - claimedSupply <= stor5[address(msg.sender)]
        stor5[address(msg.sender)] = stor5[address(msg.sender)] - '33333333' + claimedSupply
        require '33333333' >= claimedSupply
        claimedSupply = '33333333'
        require '33333333' - claimedSupply + totalSupply >= totalSupply
        totalSupply = '33333333' - claimedSupply + totalSupply
        require '33333333' - claimedSupply + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = '33333333' - claimedSupply + balanceOf[address(msg.sender)]
        emit Claim(('33333333' - claimedSupply), msg.sender);
    return 1
}



}
