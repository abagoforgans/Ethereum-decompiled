contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint128 stor7; offset 160
address stor7;

function _fallback() payable {
    stor0 = msg.sender
    stor6 = 0
    Mask(96, 0, stor7.field_160) = 0
    require not msg.value
    stor5 = block.timestamp
    stor4 = 31000000 * 10^18
    if code.data[12188 len 32]:
        require code.data[12188 len 32]
        require 10^18 * code.data[12188 len 32] / code.data[12188 len 32] == 10^18
    stor2[address('""""""""""""""""""""')] = 10^18 * code.data[12188 len 32]
    stor2[0xffffffffffffffffffffffffffffffffffffffff] = 0
    if stor4:
        require stor4
        require 75 * stor4 / stor4 == 75
    require 75 * stor4 == (100 * 75 * stor4 / 100) + (75 * stor4 % 100)
    stor2[0x1111111111111111111111111111111111111111] = (75 * stor4 / 100) - (10^18 * code.data[12188 len 32])
    address(stor7.field_0) = code.data[12168 len 20]
    return code.data[874 len 11282]
}



// =====================  Runtime code  =====================


const name = 'Tokenbox'

const decimals = 18

const icoAllocation = 0x1111111111111111111111111111111111111111

const foundationReserve = 0xffffffffffffffffffffffffffffffffffffffff

const usdDecimals = 12

const symbol = 'TBX'

const vestingDateEnd = (428724 * 3600)

const preIcoAllocation = address('""""""""""""""""""""')


address owner;
address potentialOwner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 creationTime;
uint256 totalPicoUSD;
uint8 stor7; offset 160
uint128 stor7; offset 160
address multisigAddress;

function totalPicoUSD() {
    return totalPicoUSD
}

function totalSupply() {
    return totalSupply
}

function migrationCompleted() {
    return bool(uint8(stor7.field_160))
}

function multisig() {
    return multisigAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function potentialOwner() {
    return potentialOwner
}

function owner() {
    return owner
}

function creationTime() {
    return creationTime
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeMultisig(address arg1) {
    require msg.sender == owner
    multisigAddress = arg1
}

function setOwner(address arg1) {
    require msg.sender == owner
    emit NewPotentialOwner(owner, arg1);
    potentialOwner = arg1
}

function totalUSD() {
    require totalPicoUSD == (10^12 * totalPicoUSD / 10^12) + (totalPicoUSD % 10^12)
    return (totalPicoUSD / 10^12)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function confirmOwnership() {
    require msg.sender == potentialOwner
    emit NewOwner(owner, potentialOwner);
    owner = potentialOwner
    potentialOwner = 0
}

function allowToWithdrawFromReserve() {
    require uint8(stor7.field_160)
    require msg.sender == owner
    require block.timestamp >= 428724 * 3600
    allowance[0xffffffffffffffffffffffffffffffffffffffff][address(msg.sender)] = balanceOf[0xffffffffffffffffffffffffffffffffffffffff]
}

function migrateTransfer(address arg1, address arg2, uint256 arg3, uint256 arg4) {
    require not uint8(stor7.field_160)
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor7.field_160)
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferERC20Token(address arg1) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor7.field_160)
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function preIcoInvestment(address arg1, uint256 arg2, uint256 arg3) {
    require not uint8(stor7.field_160)
    require msg.sender == owner
    if arg3:
        require arg3
        require 10^18 * arg3 / arg3 == 10^18
    require balanceOf[address('""""""""""""""""""""')] >= 10^18 * arg3
    balanceOf[address('""""""""""""""""""""')] += -1 * 10^18 * arg3
    balanceOf[address(arg1)] += 10^18 * arg3
    emit Transfer((10^18 * arg3), address('""""""""""""""""""""'), arg1);
    if arg2:
        require arg2
        require 10^10 * arg2 / arg2 == 10^10
    require totalPicoUSD + (10^10 * arg2) >= totalPicoUSD
    totalPicoUSD += 10^10 * arg2
    emit PresaleInvestment(address(arg1), 10^10 * arg2, 10^18 * arg3);
}

function withdrawFromReserve(uint256 arg1) {
    require uint8(stor7.field_160)
    require msg.sender == owner
    require block.timestamp >= 428724 * 3600
    require uint8(stor7.field_160)
    require balanceOf[0xffffffffffffffffffffffffffffffffffffffff] >= arg1
    require allowance[0xffffffffffffffffffffffffffffffffffffffff][address(msg.sender)] >= arg1
    require balanceOf[address(stor7.field_0)] + arg1 > balanceOf[address(stor7.field_0)]
    balanceOf[address(stor7.field_0)] += arg1
    balanceOf[0xffffffffffffffffffffffffffffffffffffffff] -= arg1
    allowance[0xffffffffffffffffffffffffffffffffffffffff][address(msg.sender)] -= arg1
    emit Transfer(arg1, 0xffffffffffffffffffffffffffffffffffffffff, multisigAddress);
}

function wireInvestment(address arg1, uint256 arg2, uint256 arg3) {
    require not uint8(stor7.field_160)
    require msg.sender == owner
    if arg3:
        require arg3
        require 10^18 * arg3 / arg3 == 10^18
    require arg2 > 0
    require arg2
    require 10^18 * arg3 == (arg2 * 10^18 * arg3 / arg2) + (10^18 * arg3 % arg2)
    require balanceOf[0x1111111111111111111111111111111111111111] >= 10^18 * arg3 / arg2
    if arg3:
        require arg3
        require 10^10 * arg3 / arg3 == 10^10
    if arg2:
        require arg2
        require 10^10 * arg2 / arg2 == 10^10
    require totalPicoUSD + (10^10 * arg3) >= totalPicoUSD
    totalPicoUSD += 10^10 * arg3
    balanceOf[0x1111111111111111111111111111111111111111] -= 10^18 * arg3 / arg2
    balanceOf[address(arg1)] += 10^18 * arg3 / arg2
    emit Transfer((10^18 * arg3 / arg2), 0x1111111111111111111111111111111111111111, arg1);
    emit InvestmentInUSD(address(arg1), 10^10 * arg2, 10^10 * arg3, 10^18 * arg3 / arg2);
}

function ethInvestment(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require not uint8(stor7.field_160)
    require msg.sender == owner
    if arg2:
        require arg2
        require arg2 * arg5 / arg2 == arg5
    require arg2 * arg5 == (10^12 * arg2 * arg5 / 10^12) + (arg2 * arg5 % 10^12)
    if arg3:
        require arg3
        require 10^18 * arg3 / arg3 == 10^18
    require arg2 * arg5 / 10^12 > 0
    require arg2 * arg5 / 10^12
    require 10^18 * arg3 == (arg2 * arg5 / 10^12 * 10^18 * arg3 / arg2 * arg5 / 10^12) + (10^18 * arg3 % arg2 * arg5 / 10^12)
    require balanceOf[0x1111111111111111111111111111111111111111] >= 10^18 * arg3 / arg2 * arg5 / 10^12
    if arg3:
        require arg3
        require 10^12 * arg3 / arg3 == 10^12
    require arg5 > 0
    require arg5
    require 10^12 * arg3 == (arg5 * 10^12 * arg3 / arg5) + (10^12 * arg3 % arg5)
    require totalPicoUSD + (10^12 * arg3 / arg5) >= totalPicoUSD
    totalPicoUSD += 10^12 * arg3 / arg5
    balanceOf[0x1111111111111111111111111111111111111111] -= 10^18 * arg3 / arg2 * arg5 / 10^12
    balanceOf[address(arg1)] += 10^18 * arg3 / arg2 * arg5 / 10^12
    emit Transfer((10^18 * arg3 / arg2 * arg5 / 10^12), 0x1111111111111111111111111111111111111111, arg1);
    emit InvestmentInETH(address(arg1), arg2 * arg5 / 10^12, arg3, 10^12 * arg3 / arg5, 10^18 * arg3 / arg2 * arg5 / 10^12, arg4);
}

function btcInvestment(address arg1, uint256 arg2, uint256 arg3, string arg4, uint256 arg5) {
    require not uint8(stor7.field_160)
    require msg.sender == owner
    if arg2:
        require arg2
        require arg2 * arg5 / arg2 == arg5
    require arg2 * arg5 == (10^12 * arg2 * arg5 / 10^12) + (arg2 * arg5 % 10^12)
    if arg3:
        require arg3
        require 10^18 * arg3 / arg3 == 10^18
    require arg2 * arg5 / 10^12 > 0
    require arg2 * arg5 / 10^12
    require 10^18 * arg3 == (arg2 * arg5 / 10^12 * 10^18 * arg3 / arg2 * arg5 / 10^12) + (10^18 * arg3 % arg2 * arg5 / 10^12)
    require balanceOf[0x1111111111111111111111111111111111111111] >= 10^18 * arg3 / arg2 * arg5 / 10^12
    if arg3:
        require arg3
        require 10^12 * arg3 / arg3 == 10^12
    require arg5 > 0
    require arg5
    require 10^12 * arg3 == (arg5 * 10^12 * arg3 / arg5) + (10^12 * arg3 % arg5)
    require totalPicoUSD + (10^12 * arg3 / arg5) >= totalPicoUSD
    totalPicoUSD += 10^12 * arg3 / arg5
    balanceOf[0x1111111111111111111111111111111111111111] -= 10^18 * arg3 / arg2 * arg5 / 10^12
    balanceOf[address(arg1)] += 10^18 * arg3 / arg2 * arg5 / 10^12
    emit Transfer((10^18 * arg3 / arg2 * arg5 / 10^12), 0x1111111111111111111111111111111111111111, arg1);
    emit InvestmentInBTC(address(arg1), arg2 * arg5 / 10^12, arg3, 10^12 * arg3 / arg5, 10^18 * arg3 / arg2 * arg5 / 10^12, Array(len=arg4.length, data=arg4[all]));
}

function finaliseICO() {
    require not uint8(stor7.field_160)
    require msg.sender == owner
    if totalSupply:
        require totalSupply
        require 75 * totalSupply / totalSupply == 75
    require 75 * totalSupply == (100 * 75 * totalSupply / 100) + (75 * totalSupply % 100)
    require balanceOf[0x1111111111111111111111111111111111111111] <= 75 * totalSupply / 100
    if (75 * totalSupply / 100) - balanceOf[0x1111111111111111111111111111111111111111]:
        require (75 * totalSupply / 100) - balanceOf[0x1111111111111111111111111111111111111111]
        require (100 * 75 * totalSupply / 100) - (100 * balanceOf[0x1111111111111111111111111111111111111111]) / (75 * totalSupply / 100) - balanceOf[0x1111111111111111111111111111111111111111] == 100
    require (100 * 75 * totalSupply / 100) - (100 * balanceOf[0x1111111111111111111111111111111111111111]) == (75 * (100 * 75 * totalSupply / 100) - (100 * balanceOf[0x1111111111111111111111111111111111111111]) / 75) + ((100 * 75 * totalSupply / 100) - (100 * balanceOf[0x1111111111111111111111111111111111111111]) % 75)
    totalSupply = (100 * 75 * totalSupply / 100) - (100 * balanceOf[0x1111111111111111111111111111111111111111]) / 75
    if totalSupply:
        require totalSupply
        require 125 * totalSupply / totalSupply == 125
    require 125 * totalSupply == (1000 * 125 * totalSupply / 1000) + (125 * totalSupply % 1000)
    balanceOf[address(stor7.field_0)] = 125 * totalSupply / 1000
    emit Transfer(balanceOf[address(stor7.field_0)], 0x1111111111111111111111111111111111111111, multisigAddress);
    if totalSupply:
        require totalSupply
        require 125 * totalSupply / totalSupply == 125
    require 125 * totalSupply == (1000 * 125 * totalSupply / 1000) + (125 * totalSupply % 1000)
    balanceOf[0xffffffffffffffffffffffffffffffffffffffff] = 125 * totalSupply / 1000
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  balanceOf[0xffffffffffffffffffffffffffffffffffffffff],
    emit 0x11111111: balanceOf[0xffffffffffffffffffffffffffffffffffffffff]
    emit test266151307()
    emit Transfer(address rg1, address rg2, uint256 rg3):
                  balanceOf[0x1111111111111111111111111111111111111111],
    emit 0x11111111: balanceOf[0x1111111111111111111111111111111111111111]
    emit 0x0: balanceOf[0x1111111111111111111111111111111111111111]
    balanceOf[0x1111111111111111111111111111111111111111] = 0
    Mask(96, 0, stor7.field_160) = 1
}



}
