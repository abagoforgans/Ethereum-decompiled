contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor1 = 0
    require not msg.value
    stor0 = msg.sender
    stor4 = code.data[4436 len 32]
    stor5 = code.data[4468 len 32]
    return code.data[119 len 4317]
}



// =====================  Runtime code  =====================


const name = 'Persian'

const maxTotalSupply = 300000 * 10^18

const decimals = 18

const version = '1.0.0'

const symbol = 'PRS'


address stor0;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 icoStartBlock;
uint256 icoEndBlock;
uint256 totalContributions;
mapping of uint256 contributions;

function icoStartBlock() {
    return icoStartBlock
}

function totalSupply() {
    return totalSupply
}

function totalContributions() {
    return totalContributions
}

function contributions(address arg1) {
    return contributions[arg1]
}

function icoEndBlock() {
    return icoEndBlock
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function isICOEnded() {
    return block.number >= icoEndBlock
}

function isICOOpen() {
    if block.number < icoStartBlock - 1:
        return block.number >= icoStartBlock - 1
    return (block.number < icoEndBlock)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function redeemEther() {
    require block.number > icoEndBlock
    require msg.sender == stor0
    call stor0 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function estimateBalanceOf(address arg1) {
    if contributions[address(arg1)] <= 0:
        return 0
    require totalContributions
    if 0 == 300000 * 10^18 / totalContributions:
        return (contributions[address(arg1)] * 300000 * 10^18 / totalContributions)
    require 300000 * 10^18 / totalContributions
    require contributions[address(arg1)] * 300000 * 10^18 / totalContributions / 300000 * 10^18 / totalContributions == contributions[address(arg1)]
    return (contributions[address(arg1)] * 300000 * 10^18 / totalContributions)
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(msg.sender)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.number >= icoStartBlock
    require block.number <= icoEndBlock
    require msg.value + totalContributions >= totalContributions
    totalContributions += msg.value
    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
    contributions[address(msg.sender)] += msg.value
    if contributions[address(msg.sender)] <= 0:
        emit Contributed(msg.value, 0, msg.sender);
    else:
        require totalContributions
        if 300000 * 10^18 / totalContributions != 0:
            require 300000 * 10^18 / totalContributions
            require contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions / 300000 * 10^18 / totalContributions == contributions[address(msg.sender)]
        emit Contributed(msg.value, contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions, msg.sender);
}

function contribute() payable {
    require block.number >= icoStartBlock
    require block.number <= icoEndBlock
    require msg.value + totalContributions >= totalContributions
    totalContributions += msg.value
    require msg.value + contributions[address(msg.sender)] >= contributions[address(msg.sender)]
    contributions[address(msg.sender)] += msg.value
    if contributions[address(msg.sender)] <= 0:
        emit Contributed(msg.value, 0, msg.sender);
    else:
        require totalContributions
        if 300000 * 10^18 / totalContributions != 0:
            require 300000 * 10^18 / totalContributions
            require contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions / 300000 * 10^18 / totalContributions == contributions[address(msg.sender)]
        emit Contributed(msg.value, contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions, msg.sender);
    return 1
}

function claimToken() {
    require block.number > icoEndBlock
    if contributions[address(msg.sender)] <= 0:
        contributions[address(msg.sender)] = 0
        require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        require totalSupply >= totalSupply
        require totalSupply <= 300000 * 10^18
        emit Claimed(0, msg.sender);
    else:
        require totalContributions
        if 300000 * 10^18 / totalContributions != 0:
            require 300000 * 10^18 / totalContributions
            require contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions / 300000 * 10^18 / totalContributions == contributions[address(msg.sender)]
        contributions[address(msg.sender)] = 0
        require (contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions
        require (contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions) + totalSupply >= totalSupply
        totalSupply += contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions
        require (contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions) + totalSupply <= 300000 * 10^18
        emit Claimed((contributions[address(msg.sender)] * 300000 * 10^18 / totalContributions), msg.sender);
    return 1
}



}
