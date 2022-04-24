contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
address stor3;
uint256 stor4;
uint8 stor5;

function _fallback() payable {
    stor5 = 0
    require not msg.value
    stor3 = msg.sender
    stor1[address(msg.sender)] = 2200000000 * 10^18
    stor4 = block.timestamp + (8760 * 24 * 3600)
    return code.data[115 len 2210]
}



// =====================  Runtime code  =====================


const name = 'Moms avenue token'

const totalSupply = 2200000000 * 10^18

const decimals = 18

const lockedAmount = 440000000 * 10^18

const symbol = 'MOM'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
address owner;
uint256 lockReleaseTime;
uint8 stor5;

function lockReleaseTime() {
    return lockReleaseTime
}

function allowTrading() {
    return bool(stor5)
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

function setAllowTrading(bool arg1) {
    require owner == msg.sender
    stor5 = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if stor5:
        if owner == msg.sender:
            if block.timestamp < lockReleaseTime:
                require arg2 <= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] - arg2 >= 440000000 * 10^18
    else:
        require owner == msg.sender
        if block.timestamp < lockReleaseTime:
            require arg2 <= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] - arg2 >= 440000000 * 10^18
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
    if stor5:
        if owner == arg1:
            if block.timestamp < lockReleaseTime:
                require arg3 <= balanceOf[address(arg1)]
                require balanceOf[address(arg1)] - arg3 >= 440000000 * 10^18
    else:
        require owner == arg1
        if block.timestamp < lockReleaseTime:
            require arg3 <= balanceOf[address(arg1)]
            require balanceOf[address(arg1)] - arg3 >= 440000000 * 10^18
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
