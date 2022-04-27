contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;
uint256 stor8;

function _fallback() payable {
    stor3 = 18
    stor8 = 5209990
    require not msg.value
    stor0 = msg.sender
    stor4 = 10^10 * 10^stor3
    stor5[address(msg.sender)] = stor4
    bool(stor1.length) = 0
    stor1.length.field_1 = 16
    stor1.length.field_8 = 'InterConnectCash' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'ICC' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[579 len 4691]
}



// =====================  Runtime code  =====================


#
#  - approve(address arg1, uint256 arg2)
#  - totalSupply()
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - decimals()
#  - balanceOf(address arg1)
#  - amountRaised()
#  - buyPrice()
#  - owner()
#  - symbol()
#  - transfer(address arg1, uint256 arg2)
#  - frozenAccount(address arg1)
#  - approveAndCall(address arg1, uint256 arg2, bytes arg3)
#  - crowdsaleClosed()
#  - setPrices(bool arg1, uint256 arg2)
#  - allowance(address arg1, address arg2)
#  - freezeAccount(address arg1, bool arg2)
#  - transferOwnership(address arg1)
#  - safeWithdrawal()
#
uint256 stor7;
uint8 stor9;

function name() {
    revert 
}

function _fallback() payable {
    require not stor9
    stor7 += msg.value
    revert 
}



}
