contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() {
    stor0 = msg.sender
    require msg.sender == msg.sender
    stor6 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor1 = 0
    stor2 = 0x4689a4e169eb39cc9078c0940e21ff1aa8a39b9c
    return code.data[140 len 1803]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalFundingSupply;
address tokenAddress;
uint256 startTime;
uint256 endTime;
uint256 sub_49b1cf79;
uint256 rate;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function sub_49b1cf79(?) {
    return sub_49b1cf79
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function totalFundingSupply() {
    return totalFundingSupply
}

function token() {
    return tokenAddress
}

function changeToken(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function init(uint256 arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    startTime = arg1
    endTime = arg2
    rate = arg3
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function etherProceeds() {
    require owner == msg.sender
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawCoinToOwner(uint256 arg1) {
    require owner == msg.sender
    if not arg1:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require 0 <= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require arg1 / arg1 == 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require arg1 <= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
}

function _fallback() payable {
    require block.timestamp > startTime
    require block.timestamp <= endTime
    if not msg.value:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require 0 <= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        require rate * msg.value / msg.value == rate
        require ext_code.size(tokenAddress)
        call tokenAddress.0x70a08231 with:
             gas gas_remaining wei
            args this.address
        require ext_call.success
        require rate * msg.value <= ext_call.return_data[0]
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, rate * msg.value
    require ext_call.success
    require ext_call.return_data[0]
    if not msg.value:
        require totalFundingSupply >= totalFundingSupply
    require rate * msg.value / msg.value == rate
    require (rate * msg.value) + totalFundingSupply >= totalFundingSupply
    totalFundingSupply += rate * msg.value
}

function sub_8727af31(?) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    require ext_call.success
    if not cd[36]:
        require 0 <= ext_call.return_data[0]
    else:
        require ('cd', 4).length * cd[36] / cd[36] == ('cd', 4).length
        require ('cd', 4).length * cd[36] <= ext_call.return_data[0]
    idx = 0
    while idx < ('cd', 4).length:
        if not cd[36]:
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require 0 <= ext_call.return_data[0]
            mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[132] = 0
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), 0
        else:
            require cd[36] / cd[36] == 1
            require ext_code.size(tokenAddress)
            call tokenAddress.0x70a08231 with:
                 gas gas_remaining wei
                args this.address
            require ext_call.success
            require cd[36] <= ext_call.return_data[0]
            mem[100] = address(cd[((32 * idx) + cd[4] + 36)])
            mem[132] = cd[36]
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * idx) + cd[4] + 36)]), cd[36]
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        require cd[36] + sub_49b1cf79 >= sub_49b1cf79
        sub_49b1cf79 += cd[36]
        idx = idx + 1
        continue 
    emit Wasted(owner, sub_49b1cf79, block.timestamp);
}



}
