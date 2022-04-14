contract main {


// =======================  Init code  ======================


const name = 'Pekka Token'

const decimals = 18

const symbol = 'PKS'

const sub_b8533619(?) = 1000000000 * 10^18


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor3; offset 160
address owner;
array of uint256 version;
address sub_fd8d45d2Address;

function totalSupply() {
    return totalSupply
}

function version() {
    return version[0 len version.length]
}

function paused() {
    return bool(stor3)
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

function sub_fd8d45d2(?) {
    return sub_fd8d45d2Address
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor3
    stor3 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor3
    stor3 = 1
    emit Pause()
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not stor3
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor3
    require calldata.size >= 68
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    require arg2 + balanceOf[arg1] >= arg2
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    require arg3 + balanceOf[address(arg2)] >= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[arg1] >= arg3
    balanceOf[address(arg1)] = balanceOf[arg1] - arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



// =====================  Runtime code  =====================




}
