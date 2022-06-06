contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address authorizeAddress;
address backEndOperatorAddress;
address stor4;
mapping of uint8 stor5;
mapping of uint256 investedEther;
uint256 startPreICO;
uint256 endPreICO;
uint256 investors;
uint256 weisRaised;
uint256 hardCap1Stage;
uint256 buyPrice;
uint256 sub_702cb4c3;
uint256 soldTokens;

function backEndOperator() {
    return backEndOperatorAddress
}

function investedEther(address arg1) {
    return investedEther[arg1]
}

function soldTokens() {
    return soldTokens
}

function sub_702cb4c3(?) {
    return sub_702cb4c3
}

function endPreICO() {
    return endPreICO
}

function buyPrice() {
    return buyPrice
}

function investors() {
    return investors
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor5[arg1])
}

function authorize() {
    return authorizeAddress
}

function startPreICO() {
    return startPreICO
}

function hardCap1Stage() {
    return hardCap1Stage
}

function weisRaised() {
    return weisRaised
}

function token() {
    return tokenAddress
}

function setEndSale(uint256 arg1) {
    require msg.sender == owner
    endPreICO = arg1
}

function setStartSale(uint256 arg1) {
    require msg.sender == owner
    startPreICO = arg1
}

function setBackEndAddress(address arg1) {
    require msg.sender == owner
    backEndOperatorAddress = arg1
}

function isPreICO() {
    if block.timestamp < startPreICO:
        return block.timestamp >= startPreICO
    return block.timestamp <= endPreICO
}

function setBuyPrice(uint256 arg1) {
    if backEndOperatorAddress != msg.sender:
        require msg.sender == owner
    sub_702cb4c3 = arg1
    require sub_702cb4c3
    buyPrice = 10^18 / sub_702cb4c3 / 10
    emit UpdateDollar(block.timestamp, sub_702cb4c3);
}

function transferEthFromContract(address arg1, uint256 arg2) {
    require msg.sender == owner
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function _fallback() payable {
    require ext_code.size(authorizeAddress)
    call authorizeAddress.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require block.timestamp >= startPreICO
    require block.timestamp <= endPreICO
    if not buyPrice:
        require msg.value >= 0
    else:
        require buyPrice
        require 100 * buyPrice / buyPrice == 100
        require msg.value >= 100 * buyPrice
    if not msg.value:
        require buyPrice
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3aa0396a with:
             gas gas_remaining wei
            args msg.sender, 0 / buyPrice
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require soldTokens + (0 / buyPrice) >= soldTokens
        soldTokens += 0 / buyPrice
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3aa0396a with:
             gas gas_remaining wei
            args stor4, 0 / buyPrice / 250
    else:
        require msg.value
        require 10^18 * msg.value / msg.value == 10^18
        require buyPrice
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3aa0396a with:
             gas gas_remaining wei
            args msg.sender, 10^18 * msg.value / buyPrice
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require soldTokens + (10^18 * msg.value / buyPrice) >= soldTokens
        soldTokens += 10^18 * msg.value / buyPrice
        require ext_code.size(tokenAddress)
        call tokenAddress.0x3aa0396a with:
             gas gas_remaining wei
            args stor4, 10^18 * msg.value / buyPrice / 250
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require weisRaised + msg.value >= weisRaised
    weisRaised += msg.value
    require soldTokens <= hardCap1Stage
    require investedEther[address(msg.sender)] + msg.value >= investedEther[address(msg.sender)]
    investedEther[address(msg.sender)] += msg.value
}



}
