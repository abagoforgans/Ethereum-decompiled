contract main {


// =======================  Init code  ======================


uint16 stor5; offset 160
address stor5;

function _fallback() payable {
    uint16(stor5.field_160) = 0
    require not msg.value
    address(stor5.field_0) = msg.sender
    return code.data[74 len 5522]
}



// =====================  Runtime code  =====================


#
#  - mintAndFreeze(address arg1, uint256 arg2, uint64 arg3)
#  - freezeTo(address arg1, uint256 arg2, uint64 arg3)
#  - releaseAll()
#
const name = 'test3'

const decimals = 18

const symbol = 'WISH'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint64 stor3;
mapping of uint64 stor4;
uint8 stor5; offset 160
uint8 stor5; offset 168
address owner;

function mintingFinished() {
    return bool(uint8(stor5.field_160))
}

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(uint8(stor5.field_168))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require owner == msg.sender
    require uint8(stor5.field_168)
    uint8(stor5.field_168) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor5.field_168)
    uint8(stor5.field_168) = 1
    emit Pause()
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

function finishMinting() {
    require owner == msg.sender
    require not uint8(stor5.field_160)
    uint8(stor5.field_160) = 1
    emit MintFinished()
    return 1
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[address(msg.sender)][address(arg1)] >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
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

function mint(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not uint8(stor5.field_160)
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor5.field_168)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getFreezingSummaryOf(address arg1) {
    mem[0] = arg1
    mem[32] = 3
    idx = stor[sha3(mem[0 len 64])]
    s = 0
    t = 0
    while uint64(idx):
        mem[96] = 'WISH' or address(arg1) << 64 or uint64(idx)
        mem[0] = 'WISH' or address(arg1) << 64 or uint64(idx)
        mem[32] = 4
        idx = stor4['WISH' or address(arg1) << 64 or uint64(idx)]
        s = s + balanceOf[address(sha3('WISH' or address(arg1) << 64 or uint64(idx)))]
        t = t + 1
        continue 
    return s, t
}

function getFreezing(address arg1, uint256 arg2) {
    mem[0] = arg1
    mem[32] = 3
    idx = 0
    s = stor[sha3(mem[0 len 64])]
    while idx < arg2:
        mem[0] = 'WISH' or address(arg1) << 64 or uint64(s)
        mem[32] = 4
        idx = idx + 1
        s = stor4['WISH' or address(arg1) << 64 or uint64(s)]
        continue 
    return stor[sha3(mem[0 len 64])] + (64 * arg2) << 192, 
           balanceOf[address(sha3('WISH' or address(arg1) << 64 or uint64(stor[sha3(mem[0 len 64])] + (64 * arg2))))]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor5.field_168)
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

function releaseOnce() {
    require stor3[address(msg.sender)]
    require uint64(block.timestamp) > stor3[address(msg.sender)]
    balanceOf[address(sha3('WISH' or msg.sender << 64 or stor3[address(msg.sender)]))] = 0
    balanceOf[msg.sender] += balanceOf[address(sha3('WISH' or msg.sender << 64 or stor3[address(msg.sender)]))]
    if stor4['WISH' or msg.sender << 64 or stor3[address(msg.sender)]]:
        stor3[address(msg.sender)] = stor4['WISH' or msg.sender << 64 or stor3[address(msg.sender)]]
    else:
        stor3[address(msg.sender)] = 0
    emit Released(balanceOf[address(sha3('WISH' or msg.sender << 64 or stor3[address(msg.sender)]))], msg.sender);
}



}
