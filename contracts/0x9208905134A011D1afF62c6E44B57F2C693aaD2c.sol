contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
uint8 stor3; offset 160
address stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    uint8(stor3.field_160) = 0
    stor5 = 0
    require not msg.value
    address(stor3.field_0) = msg.sender
    stor4 = code.data[4078 len 32]
    require address(stor3.field_0) == msg.sender
    require not uint8(stor3.field_160)
    require code.data[4078 len 32] + stor0 >= stor0
    require code.data[4078 len 32] + stor0 <= stor4
    require address(stor3.field_0) == msg.sender
    require not uint8(stor3.field_160)
    require code.data[4078 len 32] + stor0 >= stor0
    stor0 += code.data[4078 len 32]
    require code.data[4078 len 32] + stor1[0xfdb6ac6750690d9c46d038f2536ec995d9d3d6d8] >= stor1[0xfdb6ac6750690d9c46d038f2536ec995d9d3d6d8]
    stor1[0xfdb6ac6750690d9c46d038f2536ec995d9d3d6d8] += code.data[4078 len 32]
    emit Mint(address arg1, uint256 arg2):
              code.data[4078 len 32],
    emit 0xfdb6ac67: code.data[4078 len 32]
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  code.data[4078 len 32],
    emit 0x0: code.data[4078 len 32]
    emit 0xfdb6ac67: code.data[4078 len 32]
    return code.data[641 len 3437]
}



// =====================  Runtime code  =====================


const name = 'Self-KI'

const decimals = 18

const symbol = 'KI'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
uint256 cap;
uint8 stor5;

function mintingFinished() {
    return bool(stor3)
}

function totalSupply() {
    return totalSupply
}

function cap() {
    return cap
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

function enableTransfers() {
    require owner == msg.sender
    stor5 = 1
}

function finishMinting() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit MintFinished()
    return 1
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

function burn(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burned(arg1, msg.sender);
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

function transfer(address arg1, uint256 arg2) {
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
    require not stor3
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= cap
    require owner == msg.sender
    require not stor3
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
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



}
