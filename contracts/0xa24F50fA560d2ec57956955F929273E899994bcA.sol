contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
mapping of uint256 stor3;
address stor4;
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    stor4 = 0x51cf183cbe4e4c80297c49ff5017770fdd95c06d
    stor5 = 0x2beb722dc6e80d0c61e63240ca44b8a6d538e3ae
    stor6 = 31847133757962
    stor7 = 419609 * 3600
    require not msg.value
    stor1 = stor5
    stor3[stor5] = 55000000 * 10^18
    require stor3[stor5] + stor0 >= stor0
    stor0 += stor3[stor5]
    emit Transfer(stor3[stor5], 0, stor5);
    return code.data[337 len 2968]
}



// =====================  Runtime code  =====================


const name = 'XZEN PreToken'

const decimals = 18

const tokenCreationCapPreICO = 55000000 * 10^18

const symbol = 'XZNP'


uint256 totalSupply;
address owner;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
address multiSigWalletAddress;
address teamWalletAddress;
uint256 oneTokenInWei;
uint256 stor7;

function totalSupply() {
    return totalSupply
}

function multiSigWallet() {
    return multiSigWalletAddress
}

function teamWallet() {
    return teamWalletAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function oneTokenInWei() {
    return oneTokenInWei
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function setEthPrice(uint256 arg1) {
    require owner == msg.sender
    oneTokenInWei = arg1
}

function replaceMultisig(address arg1) {
    require owner == msg.sender
    multiSigWalletAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
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

function _fallback() payable {
    if msg.value:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
    require oneTokenInWei
    if block.timestamp > stor7 + (24 * 3600):
        require balanceOf[stor5] >= 10^18 * msg.value / oneTokenInWei
        balanceOf[stor5] -= 10^18 * msg.value / oneTokenInWei
        balanceOf[msg.sender] += 10^18 * msg.value / oneTokenInWei
        call multiSigWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer((10^18 * msg.value / oneTokenInWei), teamWalletAddress, msg.sender);
    else:
        require balanceOf[stor5] >= (5 * 10^18 * msg.value / oneTokenInWei / 100) + (10^18 * msg.value / oneTokenInWei)
        balanceOf[stor5] = balanceOf[stor5] - (5 * 10^18 * msg.value / oneTokenInWei / 100) - (10^18 * msg.value / oneTokenInWei)
        balanceOf[msg.sender] = (5 * 10^18 * msg.value / oneTokenInWei / 100) + (10^18 * msg.value / oneTokenInWei) + balanceOf[msg.sender]
        call multiSigWalletAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit Transfer(((5 * 10^18 * msg.value / oneTokenInWei / 100) + (10^18 * msg.value / oneTokenInWei)), teamWalletAddress, msg.sender);
}



}
