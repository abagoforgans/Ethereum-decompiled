contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint8 stor8;

function _fallback() payable {
    stor4 = 418790 * 3600
    stor5 = 419126 * 3600
    stor6 = 419534 * 3600
    stor7 = 420110 * 3600
    stor8 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[7066 len 20]
    create contract with 0 wei
                    code: code.data[1872 len 5182]
    require create.new_address
    stor1 = address(create.new_address)
    stor2 = code.data[7066 len 20]
    return code.data[245 len 1627]
}



// =====================  Runtime code  =====================


address owner;
address tokenAddress;
address beneficiaryAddress;
uint256 collected;
uint256 preICOstartTime;
uint256 preICOendTime;
uint256 iCOstartTime;
uint256 iCOendTime;
uint8 stor8;

function beneficiary() {
    return beneficiaryAddress
}

function preICOstartTime() {
    return preICOstartTime
}

function collected() {
    return collected
}

function owner() {
    return owner
}

function ICOendTime() {
    return iCOendTime
}

function preICOendTime() {
    return preICOendTime
}

function ICOstartTime() {
    return iCOstartTime
}

function crowdsaleFinished() {
    return bool(stor8)
}

function token() {
    return tokenAddress
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdraw() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0]
    call beneficiaryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args beneficiaryAddress
    require ext_call.success
    stor8 = 1
}

function _fallback() payable {
    if block.timestamp <= preICOstartTime:
        require block.timestamp > iCOstartTime
        require block.timestamp < iCOendTime
    else:
        if block.timestamp >= preICOendTime:
            require block.timestamp > iCOstartTime
            require block.timestamp < iCOendTime
    require msg.value >= 10^16
    require not stor8
    require ext_code.size(tokenAddress)
    if block.timestamp >= iCOstartTime:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 100 * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value + collected >= collected
        collected += msg.value
        emit NewContribution(100 * msg.value, msg.value, msg.sender);
    else:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 120 * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value + collected >= collected
        collected += msg.value
        emit NewContribution(120 * msg.value, msg.value, msg.sender);
}

function doPurchase() payable {
    if block.timestamp <= preICOstartTime:
        require block.timestamp > iCOstartTime
        require block.timestamp < iCOendTime
    else:
        if block.timestamp >= preICOendTime:
            require block.timestamp > iCOstartTime
            require block.timestamp < iCOendTime
    require msg.value >= 10^16
    require not stor8
    require ext_code.size(tokenAddress)
    if block.timestamp >= iCOstartTime:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 100 * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value + collected >= collected
        collected += msg.value
        emit NewContribution(100 * msg.value, msg.value, msg.sender);
    else:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 120 * msg.value
        require ext_call.success
        require ext_call.return_data[0]
        call beneficiaryAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value + collected >= collected
        collected += msg.value
        emit NewContribution(120 * msg.value, msg.value, msg.sender);
}



}
