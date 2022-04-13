contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9;
uint256 stor9; offset 8
uint256 stor10;
uint256 stor11;
array of uint256 stor12;
uint8 stor17;

function _fallback() payable {
    stor3 = 240 * 24 * 3600
    stor4 = 0
    stor5 = 0
    stor6 = 0
    stor7 = 0
    stor8 = 0
    uint8(stor9.field_0) = 0
    Mask(248, 0, stor9.field_8) = 0
    stor10 = 0
    stor11 = 0
    require not msg.value
    stor0 = msg.sender
    stor17 = 0
    stor12.length++
    if not stor12.length > stor12.length + 1:
        stor12[stor12.length] = 19500
        stor12.length++
        stor12[stor12.length] = 18500
        stor12.length++
    else:
        idx = stor12.length + 1
        while stor12.length > idx:
            stor12[idx] = 0
            idx = idx + 1
            continue 
        stor12[stor12.length] = 19500
        stor12.length++
        if not stor12.length > stor12.length + 1:
            stor12[stor12.length] = 18500
            stor12.length++
        else:
            idx = stor12.length + 1
            while stor12.length > idx:
                stor12[idx] = 0
                idx = idx + 1
                continue 
            stor12[stor12.length] = 18500
            stor12.length++
            if not stor12.length <= stor12.length + 1:
                idx = stor12.length + 1
                while stor12.length > idx:
                    stor12[idx] = 0
                    idx = idx + 1
                    continue 
    stor12[stor12.length] = 17500
    return code.data[452 len 8555]
}



// =====================  Runtime code  =====================


const time = block.timestamp

const onTransfer(address arg1, address arg2, uint256 arg3) = 0

const onApprove(address arg1, address arg2, uint256 arg3) = 0

const MIN_FUND = 10^15

const CRAWDSALE_END_DAY = 2


address owner;
address newOwner;
address sub_916dc266Address;
uint256 dayCycle;
uint256 startTimeEarlyBird;
uint256 startTime;
uint256 endTime;
uint256 finalizedBlock;
uint256 finalizedTime;
uint8 stor9;
uint8 stor9; offset 8
uint256 totalContributedETH;
uint256 totalTokenSaled;
array of struct ratio;
address fccControllerAddress;
address destEthFoundationDevAddress;
address destEthFoundationAddress;
uint256 proportion;
uint8 stor17;

function ratio(uint256 arg1) {
    require arg1 < ratio.length
    return ratio[arg1].field_0
}

function dayCycle() {
    return dayCycle
}

function endTime() {
    return endTime
}

function fccController() {
    return fccControllerAddress
}

function totalContributedETH() {
    return totalContributedETH
}

function finalizedBlock() {
    return finalizedBlock
}

function destEthFoundation() {
    return destEthFoundationAddress
}

function proportion() {
    return proportion
}

function paused() {
    return bool(stor17)
}

function isFinalize() {
    return bool(uint8(stor9.field_0))
}

function totalTokenSaled() {
    return totalTokenSaled
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_916dc266(?) {
    return sub_916dc266Address
}

function startTimeEarlyBird() {
    return startTimeEarlyBird
}

function newOwner() {
    return newOwner
}

function destEthFoundationDev() {
    return destEthFoundationDevAddress
}

function finalizedTime() {
    return finalizedTime
}

function isPause() {
    return bool(uint8(stor9.field_8))
}

function pauseContribution() {
    require msg.sender == owner
    stor17 = 1
}

function resumeContribution() {
    require msg.sender == owner
    stor17 = 0
}

function acceptOwnership() {
    if msg.sender == newOwner:
        owner = newOwner
}

function changeOwner(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function changeRatio(uint256 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg1 < ratio.length
    ratio[arg1].field_0 = arg2
}

function today() {
    if block.timestamp < startTime:
        return 0
    require startTime <= block.timestamp
    require dayCycle
    return ((block.timestamp - startTime / dayCycle) + 1)
}

function tokensIssued() {
    require ext_code.size(sub_916dc266Address)
    call sub_916dc266Address.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function issueTokenToAddress(address arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    require sub_916dc266Address
    require ext_code.size(sub_916dc266Address)
    call sub_916dc266Address.0x827f32c0 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    totalContributedETH += arg2
    emit NewIssue(arg2, arg3, arg1);
}

function finalize() {
    require msg.sender == owner
    require sub_916dc266Address
    require block.timestamp >= startTime
    require not finalizedBlock
    finalizedTime = block.number
    finalizedTime = block.timestamp
    require ext_code.size(sub_916dc266Address)
    call sub_916dc266Address.0x3cebb823 with:
         gas gas_remaining - 710 wei
        args fccControllerAddress
    require ext_call.success
    emit Finalized()
}

function claimTokens(address arg1) {
    require msg.sender == owner
    require ext_code.size(sub_916dc266Address)
    call sub_916dc266Address.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] == this.address:
        require ext_code.size(sub_916dc266Address)
        call sub_916dc266Address.0xdf8de3e7 with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
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
    emit ClaimedTokens(ext_call.return_data[0], arg1, owner);
}

function initialize(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address arg7, address arg8, uint256 arg9) {
    require msg.sender == owner
    require not sub_916dc266Address
    sub_916dc266Address = arg1
    require ext_code.size(sub_916dc266Address)
    call sub_916dc266Address.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(sub_916dc266Address)
    call sub_916dc266Address.0xf77c4791 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(sub_916dc266Address)
    call sub_916dc266Address.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[31 len 1] == 18
    startTime = arg4
    startTimeEarlyBird = arg3
    endTime = arg5
    dayCycle = arg6
    require startTime < endTime
    require arg2
    fccControllerAddress = arg2
    require arg7
    destEthFoundationDevAddress = arg7
    require arg8
    destEthFoundationAddress = arg8
    proportion = arg9
}

function _fallback() payable {
    require not stor17
    require sub_916dc266Address
    require block.timestamp >= startTimeEarlyBird
    require block.timestamp <= endTime
    require not finalizedBlock
    require sub_916dc266Address
    require msg.sender
    if block.timestamp < startTime:
        require msg.value >= 10^15
        if proportion >= 100:
            call destEthFoundationDevAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require proportion
            call destEthFoundationDevAddress with:
               value 100 * msg.value / proportion wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call destEthFoundationAddress with:
               value msg.value - (100 * msg.value / proportion) wei
                 gas 2300 * is_zero(value) wei
        require 0 < ratio.length
        require uint256(ratio.field_0) > 0
        if uint256(ratio.field_0):
            require uint256(ratio.field_0)
            require uint256(ratio.field_0) * msg.value / uint256(ratio.field_0) == msg.value
        require ext_code.size(sub_916dc266Address)
        call sub_916dc266Address.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args msg.sender, uint256(ratio.field_0) * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        totalContributedETH += msg.value
        totalTokenSaled += uint256(ratio.field_0) * msg.value
        emit NewSale(0, msg.sender, msg.value);
    else:
        require startTime <= block.timestamp
        require dayCycle
        require msg.value >= 10^15
        if proportion >= 100:
            call destEthFoundationDevAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require proportion
            call destEthFoundationDevAddress with:
               value 100 * msg.value / proportion wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call destEthFoundationAddress with:
               value msg.value - (100 * msg.value / proportion) wei
                 gas 2300 * is_zero(value) wei
        require (block.timestamp - startTime / dayCycle) + 1 < ratio.length
        require ratio[block.timestamp - stor5 / stor3].field_256 > 0
        if ratio[block.timestamp - stor5 / stor3].field_256:
            require ratio[block.timestamp - stor5 / stor3].field_256
            require ratio[block.timestamp - stor5 / stor3].field_256 * msg.value / ratio[block.timestamp - stor5 / stor3].field_256 == msg.value
        require ext_code.size(sub_916dc266Address)
        call sub_916dc266Address.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args msg.sender, ratio[block.timestamp - stor5 / stor3].field_256 * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        totalContributedETH += msg.value
        totalTokenSaled += ratio[block.timestamp - stor5 / stor3].field_256 * msg.value
        emit NewSale((block.timestamp - startTime / dayCycle) + 1, msg.sender, msg.value);
}

function proxyPayment(address arg1) payable {
    require sub_916dc266Address
    require block.timestamp >= startTimeEarlyBird
    require block.timestamp <= endTime
    require not finalizedBlock
    require sub_916dc266Address
    require arg1
    if block.timestamp < startTime:
        require msg.value >= 10^15
        if proportion >= 100:
            call destEthFoundationDevAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require proportion
            call destEthFoundationDevAddress with:
               value 100 * msg.value / proportion wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call destEthFoundationAddress with:
               value msg.value - (100 * msg.value / proportion) wei
                 gas 2300 * is_zero(value) wei
        require 0 < ratio.length
        require uint256(ratio.field_0) > 0
        if uint256(ratio.field_0):
            require uint256(ratio.field_0)
            require uint256(ratio.field_0) * msg.value / uint256(ratio.field_0) == msg.value
        require ext_code.size(sub_916dc266Address)
        call sub_916dc266Address.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args address(arg1), uint256(ratio.field_0) * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        totalContributedETH += msg.value
        totalTokenSaled += uint256(ratio.field_0) * msg.value
        emit NewSale(0, msg.sender, msg.value);
    else:
        require startTime <= block.timestamp
        require dayCycle
        require msg.value >= 10^15
        if proportion >= 100:
            call destEthFoundationDevAddress with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            require proportion
            call destEthFoundationDevAddress with:
               value 100 * msg.value / proportion wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            call destEthFoundationAddress with:
               value msg.value - (100 * msg.value / proportion) wei
                 gas 2300 * is_zero(value) wei
        require (block.timestamp - startTime / dayCycle) + 1 < ratio.length
        require ratio[block.timestamp - stor5 / stor3].field_256 > 0
        if ratio[block.timestamp - stor5 / stor3].field_256:
            require ratio[block.timestamp - stor5 / stor3].field_256
            require ratio[block.timestamp - stor5 / stor3].field_256 * msg.value / ratio[block.timestamp - stor5 / stor3].field_256 == msg.value
        require ext_code.size(sub_916dc266Address)
        call sub_916dc266Address.0x827f32c0 with:
             gas gas_remaining - 710 wei
            args address(arg1), ratio[block.timestamp - stor5 / stor3].field_256 * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        totalContributedETH += msg.value
        totalTokenSaled += ratio[block.timestamp - stor5 / stor3].field_256 * msg.value
        emit NewSale((block.timestamp - startTime / dayCycle) + 1, msg.sender, msg.value);
    return 0
}



}
