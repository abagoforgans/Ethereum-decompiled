contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address owner;
address tokenAddress;
address walletAddress;
uint256 weiRaised;
mapping of struct investorInfo;
array of struct stor7;
uint256 cap;
mapping of uint256 balanceOf;
uint8 stor10;
uint256 currentRate;
address stor12;

function getInvestorInfo(address arg1) {
    require calldata.size - 4 >= 32
    return investorInfo[address(arg1)].field_256
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor10)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function sub_bf8aa7f3(?) {
    require calldata.size - 4 >= 32
    return bool(uint8(investorInfo[address(arg1)].field_512))
}

function getCurrentRate() {
    return currentRate
}

function token() {
    return tokenAddress
}

function rate() {
    revert
}

function capReached() {
    return weiRaised >= cap
}

function isOwner() {
    return (msg.sender == owner)
}

function resume() {
    require msg.sender == owner
    require stor10
    stor10 = 0
    emit Resumed(msg.sender);
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() {
    require msg.sender == owner
    require not stor10
    stor10 = 1
    emit Paused(msg.sender);
}

function setRate(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    currentRate = arg1
}

function setCap(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 >= weiRaised
    cap = arg1
}

function sub_68368b48(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    uint8(investorInfo[address(arg1)].field_512) = uint8(arg2)
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOfContract() {
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawTokens(address arg1) {
    require calldata.size - 4 >= 32
    require balanceOf[address(arg1)] > 0
    balanceOf[address(arg1)] = 0
    require msg.sender == owner
    uint8(investorInfo[address(arg1)].field_512) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_09e467a9(?) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == owner
    require 0 < arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        uint8(investorInfo[mem[(32 * idx) + 140 len 20]].field_512) = uint8(arg2)
        idx = idx + 1
        continue 
}

function sub_f3089f42(?) {
    require msg.sender == owner
    require ext_code.size(stor12)
    staticcall stor12.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function sub_379be5ff(?) {
    if not stor7.length:
        mem[(32 * stor7.length) + 128] = 32
        mem[(32 * stor7.length) + 160] = stor7.length
        mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
        return memory
          from (32 * stor7.length) + 128
           len (96 * stor7.length) + 64
    mem[128] = address(stor7.field_0)
    idx = 128
    s = 0
    while (32 * stor7.length) + 96 > idx:
        mem[idx + 32] = address(stor7[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor7.length) + 192 len floor32(stor7.length)] = mem[128 len floor32(stor7.length)]
    return Array(len=stor7.length, data=mem[128 len floor32(stor7.length)], mem[(32 * stor7.length) + floor32(stor7.length) + 192 len (32 * stor7.length) - floor32(stor7.length)]), 
}

function sub_522493bc(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require arg1.length > 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _26 = sha3(mem[(32 * idx) + 140 len 20], 9)
        require balanceOf[mem[(32 * idx) + 140 len 20]] > 0
        require idx < arg1.length
        balanceOf[mem[(32 * idx) + 140 len 20]] = 0
        require idx < arg1.length
        require msg.sender == owner
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 6
        uint8(investorInfo[mem[(32 * idx) + 140 len 20]].field_512) = 1
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = stor[_26]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], stor[_26]
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return arg1.length
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    stor0++
    require not stor10
    require arg1
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    require not stor10
    if not currentRate:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value + investorInfo[address(arg1)].field_256 >= investorInfo[address(arg1)].field_256
        investorInfo[address(arg1)].field_256 += msg.value
        if 0 >= investorInfo[address(arg1)].field_0:
            stor7.length++
            address(stor7[stor7.length].field_0) = arg1
            investorInfo[address(arg1)].field_0 = stor7.length
        if not uint8(investorInfo[address(arg1)].field_512):
            require balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, arg1);
    else:
        require msg.value * currentRate / currentRate == msg.value
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value + investorInfo[address(arg1)].field_256 >= investorInfo[address(arg1)].field_256
        investorInfo[address(arg1)].field_256 += msg.value
        if 0 >= investorInfo[address(arg1)].field_0:
            stor7.length++
            address(stor7[stor7.length].field_0) = arg1
            investorInfo[address(arg1)].field_0 = stor7.length
        if not uint8(investorInfo[address(arg1)].field_512):
            require (msg.value * currentRate) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
            balanceOf[address(arg1)] += msg.value * currentRate
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(arg1), msg.value * currentRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit TokensPurchased(msg.value, msg.value * currentRate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}

function _fallback() payable {
    stor0++
    require not stor10
    require msg.sender
    require msg.value
    require msg.value + weiRaised >= weiRaised
    require msg.value + weiRaised <= cap
    require not stor10
    if not currentRate:
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value + investorInfo[address(msg.sender)].field_256 >= investorInfo[address(msg.sender)].field_256
        investorInfo[address(msg.sender)].field_256 += msg.value
        if 0 >= investorInfo[address(msg.sender)].field_0:
            stor7.length++
            address(stor7[stor7.length].field_0) = msg.sender
            investorInfo[address(msg.sender)].field_0 = stor7.length
        if not uint8(investorInfo[address(msg.sender)].field_512):
            require balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit TokensPurchased(msg.value, 0, msg.sender, msg.sender);
    else:
        require msg.value * currentRate / currentRate == msg.value
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require msg.value + investorInfo[address(msg.sender)].field_256 >= investorInfo[address(msg.sender)].field_256
        investorInfo[address(msg.sender)].field_256 += msg.value
        if 0 >= investorInfo[address(msg.sender)].field_0:
            stor7.length++
            address(stor7[stor7.length].field_0) = msg.sender
            investorInfo[address(msg.sender)].field_0 = stor7.length
        if not uint8(investorInfo[address(msg.sender)].field_512):
            require (msg.value * currentRate) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += msg.value * currentRate
        else:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value * currentRate
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
        emit TokensPurchased(msg.value, msg.value * currentRate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require stor0 + 1 == stor0
}



}
