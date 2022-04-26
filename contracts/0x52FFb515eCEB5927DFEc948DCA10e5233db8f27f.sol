contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1;
uint8 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    stor3 = 25
    stor2 = 402693728269933
    stor5 = 1513625400
    stor4 = 1516476600
    uint8(stor1.field_160) = 18
    create contract with 0 wei
                    code: code.data[3035 len 6136], 12 * 10^6, uint8(stor1.field_0), 128, 192, 12, 'MethaVoucher' << 160, 3, 'MTV' % 16777216
    require create.new_address
    address(stor1.field_0) = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    return code.data[743 len 2292]
}



// =====================  Runtime code  =====================


address owner;
uint8 decimals; offset 160
address tokenContractAddress;
uint256 tokenValue;
uint256 centToken;
uint256 endTime;
uint256 startTime;
address updaterAddress;

function tokenValue() {
    return tokenValue
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function tokenContract() {
    return tokenContractAddress
}

function startTime() {
    return startTime
}

function centToken() {
    return centToken
}

function owner() {
    return owner
}

function updater() {
    return updaterAddress
}

function updateUpdater(address arg1) {
    require owner == msg.sender
    updaterAddress = arg1
}

function updateTokenContract(address arg1) {
    require owner == msg.sender
    tokenContractAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateTime(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    if arg1:
        startTime = arg1
    if arg2:
        endTime = arg2
}

function updateValue(uint256 arg1) {
    if updaterAddress != msg.sender:
        require owner == msg.sender
    tokenValue = arg1
    emit UpdateValue(arg1);
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require block.timestamp > startTime
    require block.timestamp < endTime
    require msg.value > 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if msg.value:
        require msg.value
        require 10^decimals * msg.value / msg.value == 10^decimals
    require tokenValue
    if ext_call.return_data[0] >= 10^decimals * msg.value / tokenValue:
        require 10^decimals * msg.value / tokenValue <= ext_call.return_data[0]
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 10^decimals * msg.value / tokenValue
        require ext_call.success
        emit Buy(msg.sender, 10^decimals * msg.value / tokenValue);
    else:
        if (10^decimals * msg.value / tokenValue) - ext_call.return_data[0]:
            require (10^decimals * msg.value / tokenValue) - ext_call.return_data[0]
            require (10^decimals * msg.value / tokenValue * tokenValue) - (ext_call.return_data[0] * tokenValue) / (10^decimals * msg.value / tokenValue) - ext_call.return_data[0] == tokenValue
        require 10^decimals
        call owner with:
           value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (ext_call.return_data[0] * tokenValue) / 10^decimals) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        call msg.sender with:
           value (10^decimals * msg.value / tokenValue * tokenValue) - (ext_call.return_data[0] * tokenValue) / 10^decimals wei
             gas 2300 * is_zero(value) wei
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, ext_call.return_data[0]
        require ext_call.success
        emit Buy(msg.sender, ext_call.return_data[0]);
}

function buy(address arg1) payable {
    require block.timestamp > startTime
    require block.timestamp < endTime
    require msg.value > 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > 0
    if msg.value:
        require msg.value
        require 10^decimals * msg.value / msg.value == 10^decimals
    require tokenValue
    if ext_call.return_data[0] >= 10^decimals * msg.value / tokenValue:
        require 10^decimals * msg.value / tokenValue <= ext_call.return_data[0]
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), 10^decimals * msg.value / tokenValue
        require ext_call.success
        emit Buy(address(arg1), 10^decimals * msg.value / tokenValue);
        return (10^decimals * msg.value / tokenValue)
    if (10^decimals * msg.value / tokenValue) - ext_call.return_data[0]:
        require (10^decimals * msg.value / tokenValue) - ext_call.return_data[0]
        require (10^decimals * msg.value / tokenValue * tokenValue) - (ext_call.return_data[0] * tokenValue) / (10^decimals * msg.value / tokenValue) - ext_call.return_data[0] == tokenValue
    require 10^decimals
    call owner with:
       value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (ext_call.return_data[0] * tokenValue) / 10^decimals) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call arg1 with:
       value (10^decimals * msg.value / tokenValue * tokenValue) - (ext_call.return_data[0] * tokenValue) / 10^decimals wei
         gas 2300 * is_zero(value) wei
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), ext_call.return_data[0]
    require ext_call.success
    emit Buy(address(arg1), ext_call.return_data[0]);
    return ext_call.return_data[0]
}



}
