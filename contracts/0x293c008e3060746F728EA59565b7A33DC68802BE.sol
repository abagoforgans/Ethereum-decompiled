contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 5046]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 stor0;
address trustAddress;
uint256 stor1;
address oversightAddress;
uint256 stor2;
mapping of uint256 invoiced;
array of address invoicedIndex;
mapping of uint8 stor5;

function oversightAddress() payable {
    return address(oversightAddress)
}

function extractInvoicedLength() payable {
    return invoicedIndex.length
}

function trustAddress() payable {
    return address(trustAddress)
}

function getOwner() payable {
    return owner
}

function isLocked() payable {
    return bool(uint8(stor0.field_160))
}

function invoicedActive(address arg1) payable {
    return bool(stor5[arg1])
}

function invoiced(address arg1) payable {
    return invoiced[arg1]
}

function invoicedIndex(uint256 arg1) payable {
    require arg1 < invoicedIndex.length
    return invoicedIndex[arg1]
}

function _fallback() payable {
  stop
}

function assert(bool arg1) payable {
    require arg1
}

function lock() payable {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    uint8(stor0.field_160) = 1
    emit Locked(msg.sender);
}

function setOwner(address arg1) payable {
    require msg.sender == owner
    emit SetOwner(owner, arg1);
    uint256(stor0.field_0) = arg1 or Mask(96, 160, uint256(stor0.field_0))
}

function setTrust(address arg1) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    emit PropertySet(msg.sender);
}

function setOversight(address arg1) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    uint256(stor2) = arg1 or Mask(96, 160, uint256(stor2))
    emit PropertySet(msg.sender);
}

function nameFor(address arg1) payable {
    call address(trustAddress).0x19350aea with:
         gas gas_remaining - 25050 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) payable {
    call arg3.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    emit HotWalletDeposit(arg2, arg1);
}

function cancel() payable {
    require address(trustAddress) != 0
    call address(trustAddress).authCancel(address rg1) with:
         gas gas_remaining - 25050 wei
        args msg.sender
    require ext_call.success
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[5014 len 32]: msg.sender
        return uint8(ext_call.return_data[0])
    if 1 == ext_call.return_data[31 len 1]:
        emit NothingToCancel(msg.sender);
    else:
        if 2 == ext_call.return_data[31 len 1]:
            emit AuthCancel(msg.sender, msg.sender);
    return ext_call.return_data[31 len 1]
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    require address(trustAddress)
    call address(trustAddress).functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call address(trustAddress).authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[5014 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0x4c5fe5b8: address(ext_call.return_data[0]), msg.sender
                call address(oversightAddress).validate(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), arg3
                require ext_call.success
                require ext_call.return_data[0]
                require address(oversightAddress) != 0
                call arg1.0xa9059cbb with:
                     gas gas_remaining - 25050 wei
                    args address(arg2), arg3
                require ext_call.success
                emit PerformedTransfer(arg3, arg2);
}

function approve(address arg1, address arg2, uint256 arg3) payable {
    require address(trustAddress)
    call address(trustAddress).functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call address(trustAddress).authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[5014 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0x4c5fe5b8: address(ext_call.return_data[0]), msg.sender
                call address(oversightAddress).validate(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), arg3
                require ext_call.success
                require ext_call.return_data[0]
                require address(oversightAddress) != 0
                call arg1.approve(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args address(arg2), arg3
                require ext_call.success
                emit PerformedApprove(arg3, arg2);
}

function approveAndCall(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require address(trustAddress)
    call address(trustAddress).functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call address(trustAddress).authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[5014 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0x4c5fe5b8: address(ext_call.return_data[0]), msg.sender
                call address(oversightAddress).validate(address rg1, uint256 rg2) with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), arg3
                require ext_call.success
                require ext_call.return_data[0]
                require address(oversightAddress) != 0
                call arg1.approveAndCall(address rg1, uint256 rg2, bytes rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(arg2), arg3, Array(len=arg4.length, data=arg4[all])
                require ext_call.success
                emit PerformedApprove(arg3, arg2);
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require address(trustAddress)
    call address(trustAddress).functionCalls(bytes32 rg1) with:
         gas gas_remaining - 25050 wei
        args sha3(call.data[0 len calldata.size])
    require ext_call.success
    call address(trustAddress).authCall(address rg1, bytes32 rg2) with:
         gas gas_remaining - 25050 wei
        args msg.sender, sha3(call.data[0 len calldata.size])
    if 0 == ext_call.return_data[31 len 1]:
        emit code.data[5014 len 32]: msg.sender
    else:
        if 1 == ext_call.return_data[31 len 1]:
            emit 0x5622ef83: msg.sender
        else:
            if ext_call.return_data[31 len 1] != 2:
                if 3 == ext_call.return_data[31 len 1]:
                    emit AuthPending(msg.sender);
            else:
                emit 0x4c5fe5b8: address(ext_call.return_data[0]), msg.sender
                if arg3 != this.address:
                    call address(oversightAddress).validate(address rg1, uint256 rg2) with:
                         gas gas_remaining - 25050 wei
                        args address(arg1), arg4
                    require ext_call.success
                    require ext_call.return_data[0]
                require address(oversightAddress) != 0
                call arg1.transferFrom(address rg1, address rg2, uint256 rg3) with:
                     gas gas_remaining - 25050 wei
                    args address(arg2), address(arg3), arg4
                require ext_call.success
                emit PerformedTransferFrom(arg4, arg2, arg3);
}



}
