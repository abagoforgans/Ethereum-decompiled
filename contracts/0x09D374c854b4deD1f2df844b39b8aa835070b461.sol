contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
bool stor6; offset 256
uint8 stor6;
uint8 stor6; offset 8

function _fallback() payable {
    stor1 = 125 * 10^14 * 3600
    stor2 = 490 * 10^18
    stor3 = 0xa4dbbf474a6f026cf0a2d3e45ab192fbd98d3a5f
    stor4 = 0
    require not msg.value
    stor0 = msg.sender
    uint8(stor6.field_0) = 1
    uint8(stor6.field_8) = 0
    stor6.field_256 % 1 = 0
    return code.data[148 len 2634]
}



// =====================  Runtime code  =====================


address owner;
uint256 minInvest;
uint256 maxcap;
address ledgerWalletAddress;
uint256 count;
uint256 totalFunding;
uint8 stor6;
uint8 stor6; offset 8
address crowdsaleContractAddress; offset 16
uint256 balanceToken;
array of address listBackers;
mapping of uint256 balanceOf;
address DTRAddress;

function listBackers(uint256 arg1) {
    require arg1 < listBackers.length
    return address(listBackers[arg1])
}

function count() {
    return count
}

function crowdsaleContract() {
    return crowdsaleContractAddress
}

function maxcap() {
    return maxcap
}

function minInvest() {
    return minInvest
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function saleOn() {
    return bool(uint8(stor6.field_0))
}

function owner() {
    return owner
}

function ledgerWallet() {
    return ledgerWalletAddress
}

function balanceToken() {
    return balanceToken
}

function backers(address arg1) {
    return balanceOf[arg1]
}

function DTR() {
    return DTRAddress
}

function distributed() {
    return bool(uint8(stor6.field_8))
}

function totalFunding() {
    return totalFunding
}

function closeSale() {
    require owner == msg.sender
    uint8(stor6.field_0) = 0
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function withdraw() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function setDTR(address arg1) {
    require owner == msg.sender
    DTRAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    balanceToken = ext_call.return_data[0]
    emit Logs(address(arg1), ext_call.return_data[0], eth.balance(this.address));
}

function _fallback() payable {
    require uint8(stor6.field_0)
    require msg.value > minInvest
    require msg.value + totalFunding >= totalFunding
    require msg.value + totalFunding <= maxcap
    if not balanceOf[address(msg.sender)]:
        listBackers.length++
        if not listBackers.length <= listBackers.length + 1:
            idx = listBackers.length + 1
            while listBackers.length > idx:
                uint256(listBackers[idx]) = 0
                idx = idx + 1
                continue 
        address(listBackers[listBackers.length]) = msg.sender
    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require msg.value + totalFunding >= totalFunding
    totalFunding += msg.value
    call ledgerWalletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit ReceivedETH(msg.sender, msg.value);
}

function distributes(uint256 arg1) {
    require owner == msg.sender
    require not uint8(stor6.field_0)
    s = 0
    while count < arg1:
        require count < listBackers.length
        mem[32] = 9
        mem[164] = totalFunding
        require ext_code.size(0xa2b36b056d00937a70b942f61c17c5f72a81cce6)
        delegate 0xa2b36b056d00937a70b942f61c17c5f72a81cce6.0x1a8943dd with:
             gas gas_remaining - 710 wei
            args balanceToken, balanceOf[address(stor8[stor4])], totalFunding
        require delegate.return_code
        require count < listBackers.length
        mem[0] = 8
        mem[100] = address(listBackers[stor4])
        mem[132] = delegate.return_data[0]
        require ext_code.size(DTRAddress)
        call DTRAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(listBackers[stor4]), delegate.return_data[0]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        count++
        if listBackers.length != count + 1:
            s = delegate.return_data[0]
            continue 
        uint8(stor6.field_8) = 1
}



}
