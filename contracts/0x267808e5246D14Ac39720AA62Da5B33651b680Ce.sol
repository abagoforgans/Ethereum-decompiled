contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 3934]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
address stor1;
address ledgerAddress;
address tokenAddress;
address oldTokenAddress;
address etherDeltaAddress;

function ledger() {
    return ledgerAddress
}

function owner() {
    return owner
}

function oldToken() {
    return oldTokenAddress
}

function finalized() {
    return bool(uint8(stor1.field_160))
}

function EtherDelta() {
    return etherDeltaAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function finalize() {
    require owner == msg.sender
    uint8(stor1.field_160) = 1
}

function setToken(address arg1) {
    require owner == msg.sender
    tokenAddress = arg1
}

function setLedger(address arg1) {
    require owner == msg.sender
    ledgerAddress = arg1
}

function setOldToken(address arg1) {
    require owner == msg.sender
    oldTokenAddress = arg1
}

function setEtherDelta(address arg1) {
    require owner == msg.sender
    etherDeltaAddress = arg1
}

function changeOwner(address arg1) {
    require owner == msg.sender
    address(stor1.field_0) = arg1
}

function acceptOwnership() {
    if address(stor1.field_0) == msg.sender:
        owner = address(stor1.field_0)
}

function totalSupply() {
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function burn(address arg1, uint256 arg2) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x9dc29fac with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function balanceOf(address arg1) {
    if tokenAddress != msg.sender:
        require oldTokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function approve(address arg1, address arg2, uint256 arg3) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xe1f21c67 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function increaseApproval(address arg1, address arg2, uint256 arg3) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xbcdd6121 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function allowance(address arg1, address arg2) {
    if tokenAddress != msg.sender:
        require oldTokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return ext_call.return_data[0]
}

function decreaseApproval(address arg1, address arg2, uint256 arg3) {
    require tokenAddress == msg.sender
    require ext_code.size(ledgerAddress)
    call ledgerAddress.0xf019c267 with:
         gas gas_remaining - 710 wei
        args address(arg1), address(arg2), arg3
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, address arg2, uint256 arg3) {
    if tokenAddress == msg.sender:
        if oldTokenAddress != msg.sender:
            if ext_code.size(ledgerAddress):
                call ledgerAddress.0xbeabacc8 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), address(arg2), arg3
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    if oldTokenAddress != msg.sender:
                        return bool(ext_call.return_data[0])
                    if ext_code.size(tokenAddress):
                        call tokenAddress.controllerTransfer(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), address(arg2), arg3
                        if ext_call.success:
                            return bool(ext_call.return_data[0])
        else:
            if etherDeltaAddress == arg1:
                if ext_code.size(ledgerAddress):
                    call ledgerAddress.0xbeabacc8 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), address(arg2), arg3
                    if ext_call.success:
                        if not ext_call.return_data[0]:
                            return bool(ext_call.return_data[0])
                        if oldTokenAddress != msg.sender:
                            return bool(ext_call.return_data[0])
                        if ext_code.size(tokenAddress):
                            call tokenAddress.controllerTransfer(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), address(arg2), arg3
                            if ext_call.success:
                                return bool(ext_call.return_data[0])
    else:
        require oldTokenAddress == msg.sender
        if etherDeltaAddress == arg1:
            if ext_code.size(ledgerAddress):
                call ledgerAddress.0xbeabacc8 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), address(arg2), arg3
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    if oldTokenAddress != msg.sender:
                        return bool(ext_call.return_data[0])
                    if ext_code.size(tokenAddress):
                        call tokenAddress.controllerTransfer(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), address(arg2), arg3
                        if ext_call.success:
                            return bool(ext_call.return_data[0])
    revert
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) {
    if tokenAddress == msg.sender:
        if oldTokenAddress != msg.sender:
            if ext_code.size(ledgerAddress):
                call ledgerAddress.0x15dacbea with:
                     gas gas_remaining - 710 wei
                    args 0, 0, address(arg2), address(arg3), arg4
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    if oldTokenAddress != msg.sender:
                        return bool(ext_call.return_data[0])
                    if ext_code.size(tokenAddress):
                        call tokenAddress.controllerTransfer(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 710 wei
                            args address(arg2), address(arg3), arg4
                        if ext_call.success:
                            return bool(ext_call.return_data[0])
        else:
            if etherDeltaAddress == arg2:
                if ext_code.size(ledgerAddress):
                    call ledgerAddress.0x15dacbea with:
                         gas gas_remaining - 710 wei
                        args 0, 0, address(arg2), address(arg3), arg4
                    if ext_call.success:
                        if not ext_call.return_data[0]:
                            return bool(ext_call.return_data[0])
                        if oldTokenAddress != msg.sender:
                            return bool(ext_call.return_data[0])
                        if ext_code.size(tokenAddress):
                            call tokenAddress.controllerTransfer(address rg1, address rg2, uint256 rg3) with:
                                 gas gas_remaining - 710 wei
                                args address(arg2), address(arg3), arg4
                            if ext_call.success:
                                return bool(ext_call.return_data[0])
    else:
        require oldTokenAddress == msg.sender
        if etherDeltaAddress == arg2:
            if ext_code.size(ledgerAddress):
                call ledgerAddress.0x15dacbea with:
                     gas gas_remaining - 710 wei
                    args 0, 0, address(arg2), address(arg3), arg4
                if ext_call.success:
                    if not ext_call.return_data[0]:
                        return bool(ext_call.return_data[0])
                    if oldTokenAddress != msg.sender:
                        return bool(ext_call.return_data[0])
                    if ext_code.size(tokenAddress):
                        call tokenAddress.controllerTransfer(address rg1, address rg2, uint256 rg3) with:
                             gas gas_remaining - 710 wei
                            args address(arg2), address(arg3), arg4
                        if ext_call.success:
                            return bool(ext_call.return_data[0])
    revert
}



}
