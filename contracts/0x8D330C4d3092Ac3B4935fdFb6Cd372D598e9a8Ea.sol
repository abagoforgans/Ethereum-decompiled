contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;

function _fallback() payable {
    stor3 = 24 * 3600
    stor5 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[1516 len 32] > 0
    stor2 = code.data[1516 len 32]
    stor4 = code.data[1464 len 20]
    stor1 = code.data[1496 len 20]
    return code.data[179 len 1273]
}



// =====================  Runtime code  =====================


address controllerAddress;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;

function controller() {
    return controllerAddress
}

function _fallback() payable {
    revert
}

function changeController(address arg1) {
    require controllerAddress == msg.sender
    controllerAddress = arg1
}

function get_unlock_time() {
    require ext_code.size(stor1)
    call stor1.0xeb5b135b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] + stor3)
}

function balance() {
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function availableNow() {
    require ext_code.size(stor1)
    call stor1.0xeb5b135b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.timestamp < ext_call.return_data[0] + stor3:
        return 0
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if block.timestamp > ext_call.return_data[0] + stor3 + stor2:
        return ext_call.return_data[0]
    require stor5 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_call.return_data[0] + stor3 <= block.timestamp
    if not block.timestamp - ext_call.return_data[0] - stor3:
        if stor2:
            if stor5 <= (block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2:
                return (((block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2) - stor5)
    else:
        if block.timestamp - ext_call.return_data[0] - stor3:
            if (block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / block.timestamp - ext_call.return_data[0] - stor3 == stor5 + ext_call.return_data[0]:
                if stor2:
                    if stor5 <= (block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2:
                        return (((block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2) - stor5)
    revert
}

function extract(address arg1) {
    require controllerAddress == msg.sender
    require arg1
    require ext_code.size(stor1)
    call stor1.0xeb5b135b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require block.timestamp >= ext_call.return_data[0] + stor3
    require ext_code.size(stor4)
    call stor4.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if block.timestamp > ext_call.return_data[0] + stor3 + stor2:
        require ext_call.return_data[0] > 0
        require ext_call.return_data[0] + stor5 >= stor5
        stor5 += ext_call.return_data[0]
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), ext_call.return_data[0]
        require ext_call.success
        require ext_call.return_data[0]
        emit Extract(ext_call.return_data[0], arg1);
    else:
        require stor5 + ext_call.return_data[0] >= ext_call.return_data[0]
        require ext_call.return_data[0] + stor3 <= block.timestamp
        if block.timestamp - ext_call.return_data[0] - stor3:
            require block.timestamp - ext_call.return_data[0] - stor3
            require (block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / block.timestamp - ext_call.return_data[0] - stor3 == stor5 + ext_call.return_data[0]
        require stor2
        require stor5 <= (block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2
        require ((block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2) - stor5 > 0
        require (block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2 >= stor5
        stor5 = (block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2
        require ext_code.size(stor4)
        call stor4.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), ((block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2) - stor5
        require ext_call.success
        require ext_call.return_data[0]
        emit Extract((((block.timestamp * stor5) - (ext_call.return_data[0] * stor5) - (stor3 * stor5) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) - (stor3 * ext_call.return_data[0]) / stor2) - stor5), arg1);
}



}
