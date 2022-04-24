contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
uint128 stor6; offset 160
address stor6;
uint256 stor7;

function _fallback() payable {
    Mask(96, 0, stor6.field_160) = 0
    require not msg.value
    address(stor6.field_0) = msg.sender
    require code.data[9190 len 32] > 0
    require code.data[9190 len 32] > block.timestamp
    stor7 = code.data[9190 len 32]
    stor0[address(msg.sender)] = 3000000000 * 10^18
    return code.data[263 len 8927]
}



// =====================  Runtime code  =====================


const name = 'Topcoin'

const totalSupply = 3000000000 * 10^18

const decimals = 18

const crowdsaleTokens = 1000000000 * 10^18

const symbol = 'TPC'


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor6; offset 160
uint128 stor6; offset 160
address owner;
uint256 iCOEndTime;
address crowdsaleAddress;
uint256 tokensRaised;

function paused() {
    return bool(uint8(stor6.field_160))
}

function tokensRaised() {
    return tokensRaised
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function crowdsale() {
    return crowdsaleAddress
}

function ICOEndTime() {
    return iCOEndTime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function isContract(address arg1) {
    require arg1
    return (ext_code.size(arg1) > 0)
}

function setCrowdsaleAddress(address arg1) {
    require msg.sender == owner
    require arg1
    crowdsaleAddress = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor6.field_160)
    Mask(96, 0, stor6.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor6.field_160)
    Mask(96, 0, stor6.field_160) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor6.field_160)
    require block.timestamp >= iCOEndTime
    require arg1
    require arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(msg.sender, address(arg1), arg2);
    return 1
}

function convertOldTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1
    require arg2 > 0
    if arg2:
        require arg2
        require 2 * arg2 / arg2 == 2
    require 2 * arg2 <= balanceOf[address(stor6.field_0)]
    balanceOf[address(stor6.field_0)] -= 2 * arg2
    require balanceOf[address(arg1)] + (2 * arg2) >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += 2 * arg2
}

function transferToAddress(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor6.field_160)
    require block.timestamp >= iCOEndTime
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    return 1
}

function distributeTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == crowdsaleAddress
    require arg1
    require arg2 > 0
    require tokensRaised + arg2 >= tokensRaised
    require tokensRaised + arg2 <= 1000000000 * 10^18
    require tokensRaised + arg2 >= tokensRaised
    tokensRaised += arg2
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor6.field_160)
    require block.timestamp >= iCOEndTime
    require arg1
    require arg2
    require arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(address(arg1), address(arg2), arg3);
    return 1
}

function transferToContract(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor6.field_160)
    require block.timestamp >= iCOEndTime
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require ext_code.size(arg1)
    call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    emit Transfer(msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    require not uint8(stor6.field_160)
    require block.timestamp >= iCOEndTime
    require arg1
    require arg2
    require arg3.length
    require arg1
    require not uint8(stor6.field_160)
    require block.timestamp >= iCOEndTime
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, Array(len=arg3.length, data=arg3[all])
        require ext_call.success
    emit Transfer(msg.sender, address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor6.field_160)
    require block.timestamp >= iCOEndTime
    require arg1
    require arg2
    require arg1
    require not uint8(stor6.field_160)
    require block.timestamp >= iCOEndTime
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    if ext_code.size(arg1) <= 0:
    else:
        require ext_code.size(arg1)
        call arg1.tokenFallback(address rg1, uint256 rg2, bytes rg3) with:
             gas gas_remaining - 710 wei
            args msg.sender, arg2, 96, 0
        require ext_call.success
    emit Transfer(address rg1, address rg2, uint256 rg3, bytes rg4):
                  address(msg.sender),
                  address(arg1),
                  arg2,
                  128,
                  0,
    return 1
}



}
