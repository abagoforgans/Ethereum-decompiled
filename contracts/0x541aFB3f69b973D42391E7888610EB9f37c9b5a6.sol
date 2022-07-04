contract main {




// =====================  Runtime code  =====================


address owner;
uint256 airDropAmount;
mapping of uint8 stor2;
array of address arrayAirDropReceivers;
uint8 stop;
address erc20Address; offset 8
uint256 stor4;
uint256 startTime;
uint256 endTime;

function stop() {
    return bool(stop)
}

function airDropAmount() {
    return airDropAmount
}

function endTime() {
    return endTime
}

function arrayAirDropReceivers(uint256 arg1) {
    require arg1 < arrayAirDropReceivers.length
    return arrayAirDropReceivers[arg1]
}

function invalidAirDrop(address arg1) {
    return bool(stor2[arg1])
}

function erc20() {
    return erc20Address
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function getTotalNumberOfAddressesReceivedAirDrop() {
    return arrayAirDropReceivers.length
}

function _fallback() payable {
    revert
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function toggle() {
    require msg.sender == owner
    stor4 = not bool(stop) or Mask(248, 8, stor4)
    if not stop:
        emit LogStart()
    else:
        emit LogStop()
}

function getTotalAirDroppedAmount() {
    if not airDropAmount:
        return 0
    require airDropAmount
    require airDropAmount * arrayAirDropReceivers.length / airDropAmount == arrayAirDropReceivers.length
    return (airDropAmount * arrayAirDropReceivers.length)
}

function getRemainingToken() {
    require ext_code.size(erc20Address)
    call erc20Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function isValidAirDropForAll() {
    require ext_code.size(erc20Address)
    call erc20Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stop:
        return not bool(stop)
    if ext_call.return_data[0] < airDropAmount:
        return ext_call.return_data[0] >= airDropAmount
    if block.timestamp < startTime:
        return block.timestamp >= startTime
    return block.timestamp <= endTime
}

function withdraw(address arg1) {
    require msg.sender == owner
    if not stop:
        require block.timestamp > endTime
    require arg1
    require ext_code.size(erc20Address)
    call erc20Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogWithdrawal(ext_call.return_data[0], arg1);
}

function isValidAirDropForIndividual() {
    require ext_code.size(erc20Address)
    call erc20Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if stop:
        return not bool(stop)
    if ext_call.return_data[0] < airDropAmount:
        return ext_call.return_data[0] >= airDropAmount
    if block.timestamp < startTime:
        if block.timestamp < startTime:
            return block.timestamp >= startTime
    else:
        if block.timestamp > endTime:
            return block.timestamp <= endTime
    return not bool(stor2[address(msg.sender)])
}

function receiveAirDrop() {
    require ext_code.size(erc20Address)
    call erc20Address.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not stop
    require ext_call.return_data[0] >= airDropAmount
    if block.timestamp < startTime:
        require block.timestamp >= startTime
    else:
        require block.timestamp <= endTime
    require not stor2[address(msg.sender)]
    stor2[address(msg.sender)] = 1
    arrayAirDropReceivers.length++
    arrayAirDropReceivers[arrayAirDropReceivers.length] = msg.sender
    require ext_code.size(erc20Address)
    call erc20Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, airDropAmount
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit LogAirDrop(airDropAmount, msg.sender);
}



}
