contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    mem[96] = 34
    mem[128] = 20
    mem[160] = 10
    mem[192] = 0
    s = 0
    idx = 96
    while 224 > idx:
        stor2 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor2
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 4
    s = 2
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-2 * None + 3 / 32) + (None * None + 3 / 32) + 2
    while 3 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    require not msg.value
    stor0 = msg.sender
    stor3 = code.data[2971 len 20]
    stor1 = code.data[3003 len 20]
    return code.data[385 len 2574]
}



// =====================  Runtime code  =====================


const HARD_CAP = 20000 * 10^18

const BASE_RATE = 15000

const GOAL = 5 * 10^18

const NUM_OF_PHASE = 4


address contractOwner;
address contractTokenRewardAddress;
array of uint8 bonusPercentages;
address targetAddress;
uint8 stor4;
uint256 stor4; offset 5
uint256 sub_16509e90;
uint8 stor5;
uint256 totalEthReceived;
uint256 issueIndex;
mapping of uint256 balanceOf;
uint256 totalSupply;

function sub_16509e90(?) {
    return uint256(sub_16509e90)
}

function totalSupply() {
    return totalSupply
}

function bonusPercentages(uint256 arg1) {
    require arg1 < 4
    return bonusPercentages[uint8(arg1)].field_0
}

function issueIndex() {
    return issueIndex
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function unsoldTokenIssued() {
    return bool(stor5)
}

function totalEthReceived() {
    return totalEthReceived
}

function contractOwner() {
    return contractOwner
}

function target() {
    return targetAddress
}

function contractTokenReward() {
    return contractTokenRewardAddress
}

function saleDue() {
    return uint256(sub_16509e90) >= 4
}

function saleStarted() {
    return uint256(sub_16509e90) >= 0
}

function hardCapReached() {
    return totalEthReceived >= 20000 * 10^18
}

function exOwner(address arg1) {
    require contractOwner == msg.sender
    contractOwner = arg1
}

function saleEnded() {
    if uint256(sub_16509e90) >= 4:
        return uint256(sub_16509e90) >= 4
    return totalEthReceived >= 20000 * 10^18
}

function setStep(uint256 arg1) {
    require contractOwner == msg.sender
    if arg1 >= 0:
        uint256(sub_16509e90) = arg1
    else:
        uint256(sub_16509e90) = 0
}

function price() {
    if uint256(sub_16509e90) < 4:
        return ((15000 * 10^18 * bonusPercentages[stor4 % 32].field_0 / 100) + 15000 * 10^18)
    return ((15000 * 10^18 * bonusPercentages.length.field_24 / 100) + 15000 * 10^18)
}

function start(uint256 arg1) {
    require contractOwner == msg.sender
    if uint256(sub_16509e90) >= 0:
        emit InvalidState(Array(len=24, data='Sale has not started yet'));
    else:
        if arg1 > 4:
            uint256(sub_16509e90) = 3
        else:
            if arg1 >= 0:
                uint256(sub_16509e90) = arg1
            else:
                uint256(sub_16509e90) = 0
        emit SaleStarted()
}

function close() {
    require contractOwner == msg.sender
    if uint256(sub_16509e90) >= 4:
        if totalEthReceived < 5 * 10^18:
            emit SaleFailed()
        else:
            if stor5:
                emit InvalidState(Array(len=36, data='Unsold token has been issued alr', 'eady'));
            else:
                require totalEthReceived >= 5 * 10^18
                stor5 = 1
            emit SaleSucceeded()
    else:
        if totalEthReceived < 20000 * 10^18:
            emit InvalidState(Array(len=21, data='Sale is not ended yet'));
        else:
            if totalEthReceived < 5 * 10^18:
                emit SaleFailed()
            else:
                if stor5:
                    emit InvalidState(Array(len=36, data='Unsold token has been issued alr', 'eady'));
                else:
                    require totalEthReceived >= 5 * 10^18
                    stor5 = 1
                emit SaleSucceeded()
}

function _fallback() payable {
    if uint256(sub_16509e90) < 0:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
    else:
        if uint256(sub_16509e90) >= 4:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
        else:
            if totalEthReceived >= 20000 * 10^18:
                emit InvalidState(Array(len=23, data='Sale is not in progress'));
            else:
                require msg.value >= 10^16
                call targetAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                totalEthReceived += msg.value
                require ext_code.size(contractTokenRewardAddress)
                if uint256(sub_16509e90) < 4:
                    call contractTokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (15000 * msg.value * bonusPercentages[stor4 % 32].field_0 / 100) + (15000 * msg.value)
                    require ext_call.success
                    balanceOf[address(msg.sender)] += msg.value
                    totalSupply = (15000 * msg.value * bonusPercentages[stor4 % 32].field_0 / 100) + (15000 * msg.value) + totalSupply
                    issueIndex++
                    emit Issue(issueIndex, msg.sender, msg.value, (15000 * msg.value * bonusPercentages[stor4 % 32].field_0 / 100) + (15000 * msg.value));
                else:
                    call contractTokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (15000 * msg.value * bonusPercentages.length.field_24 / 100) + (15000 * msg.value)
                    require ext_call.success
                    balanceOf[address(msg.sender)] += msg.value
                    totalSupply = (15000 * msg.value * bonusPercentages.length.field_24 / 100) + (15000 * msg.value) + totalSupply
                    issueIndex++
                    emit Issue(issueIndex, msg.sender, msg.value, (15000 * msg.value * bonusPercentages.length.field_24 / 100) + (15000 * msg.value));
}

function issueToken(address arg1) payable {
    if uint256(sub_16509e90) < 0:
        emit InvalidState(Array(len=23, data='Sale is not in progress'));
    else:
        if uint256(sub_16509e90) >= 4:
            emit InvalidState(Array(len=23, data='Sale is not in progress'));
        else:
            if totalEthReceived >= 20000 * 10^18:
                emit InvalidState(Array(len=23, data='Sale is not in progress'));
            else:
                require msg.value >= 10^16
                call targetAddress with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                totalEthReceived += msg.value
                require ext_code.size(contractTokenRewardAddress)
                if uint256(sub_16509e90) < 4:
                    call contractTokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (15000 * msg.value * bonusPercentages[stor4 % 32].field_0 / 100) + (15000 * msg.value)
                    require ext_call.success
                    balanceOf[address(msg.sender)] += msg.value
                    totalSupply = (15000 * msg.value * bonusPercentages[stor4 % 32].field_0 / 100) + (15000 * msg.value) + totalSupply
                    issueIndex++
                    emit Issue(issueIndex, address(arg1), msg.value, (15000 * msg.value * bonusPercentages[stor4 % 32].field_0 / 100) + (15000 * msg.value));
                else:
                    call contractTokenRewardAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (15000 * msg.value * bonusPercentages.length.field_24 / 100) + (15000 * msg.value)
                    require ext_call.success
                    balanceOf[address(msg.sender)] += msg.value
                    totalSupply = (15000 * msg.value * bonusPercentages.length.field_24 / 100) + (15000 * msg.value) + totalSupply
                    issueIndex++
                    emit Issue(issueIndex, address(arg1), msg.value, (15000 * msg.value * bonusPercentages.length.field_24 / 100) + (15000 * msg.value));
}



}
