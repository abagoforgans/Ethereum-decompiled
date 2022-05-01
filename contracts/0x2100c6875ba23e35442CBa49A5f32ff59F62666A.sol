contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
address stor6; offset 8
array of struct stor7;
array of struct stor8;
uint256 stor10;

function _fallback() payable {
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = '1.0' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor5 = 0
    uint8(stor6.field_0) = 0
    mem[160] = 7000
    mem[192] = 4200
    stor7.length = 2
    s = 0
    idx = 160
    while 224 > idx:
        stor7[s].field_0 = mem[idx + 30 len 2]
        stor7[s].field_16 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor7.length > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    mem[224] = 50 * 10^6
    mem[256] = 80 * 10^6
    stor8.length = 2
    s = 0
    idx = 224
    while 288 > idx:
        stor8[s].field_0 = mem[idx + 28 len 4]
        stor8[s].field_32 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor8.length > idx:
        stor8[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor10 = 1000000 * 10^18
    stor0 = msg.sender
    stor3 = msg.sender
    create contract with 0 wei
                    code: code.data[7444 len 3523]
    require create.new_address
    address(stor6.field_8) = address(create.new_address)
    return code.data[685 len 6759]
}



// =====================  Runtime code  =====================


#
#  - buyTokens(address arg1)
#  - _fallback()
#
address owner;
address newOwner;
array of uint256 version;
address stor3;
uint256 totalSold;
uint256 soldOnStage;
uint8 currentStage;
address rewardTokenAddress; offset 8
array of uint256 currentStageTokensRate;
array of uint256 currentStageTokensCap;
mapping of uint256 investmentsOf;

function currentStageTokensCap() {
    require currentStage < currentStageTokensCap.length
    return currentStageTokensCap[stor6]
}

function investmentsOf(address arg1) {
    return investmentsOf[address(arg1)]
}

function version() {
    return version[0 len version.length]
}

function currentStage() {
    return currentStage
}

function owner() {
    return owner
}

function totalSold() {
    return totalSold
}

function soldOnStage() {
    return soldOnStage
}

function newOwner() {
    return newOwner
}

function currentStageTokensRate() {
    require currentStage < currentStageTokensRate.length
    return currentStageTokensRate[stor6]
}

function rewardToken() {
    return rewardTokenAddress
}

function confirmOwner() {
    require newOwner == msg.sender
    owner = newOwner
    newOwner = 0
}

function changeOwner(address arg1) {
    require owner == msg.sender
    require arg1
    newOwner = arg1
}

function setWithdrawWallet(address arg1) {
    require owner == msg.sender
    require arg1
    stor3 = arg1
}

function forceWithdraw() {
    require owner == msg.sender
    call stor3 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function burnTokens(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0x42966c68 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function availableTokens() {
    require ext_code.size(rewardTokenAddress)
    call rewardTokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function availableOnStage() {
    require currentStage < currentStageTokensCap.length
    if not currentStageTokensCap[stor6]:
        if soldOnStage <= 10^18 * currentStageTokensCap[stor6]:
            return ((10^18 * currentStageTokensCap[stor6]) - soldOnStage)
    else:
        if currentStageTokensCap[stor6]:
            if 10^18 * currentStageTokensCap[stor6] / currentStageTokensCap[stor6] == 10^18:
                if soldOnStage <= 10^18 * currentStageTokensCap[stor6]:
                    return ((10^18 * currentStageTokensCap[stor6]) - soldOnStage)
    revert
}



}
