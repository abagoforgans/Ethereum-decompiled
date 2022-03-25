contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 6708]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 stor0;
mapping of uint8 stor1;
array of uint256 nameFor;
array of address masterKeyIndex;
mapping of uint8 stor4;
mapping of address sub_cff10265;
mapping of address sub_74769327;
address oversightAddress;
uint256 stor7;
mapping of uint256 invoiced;
array of address invoicedIndex;
mapping of uint8 stor10;

function nameFor(address arg1) payable {
    return nameFor[address(arg1)][0 len nameFor[address(arg1)].length]
}

function extractMasterKeyIndexLength() payable {
    return masterKeyIndex.length
}

function oversightAddress() payable {
    return address(oversightAddress)
}

function extractInvoicedLength() payable {
    return invoicedIndex.length
}

function masterKeyIndex(uint256 arg1) payable {
    require arg1 < masterKeyIndex.length
    return address(masterKeyIndex[arg1])
}

function sub_74769327(?) payable {
    return uint256(sub_74769327[arg1])
}

function masterKeyActive(address arg1) payable {
    return bool(stor4[arg1])
}

function getOwner() payable {
    return owner
}

function isLocked() payable {
    return bool(uint8(stor0.field_160))
}

function invoicedActive(address arg1) payable {
    return bool(stor10[arg1])
}

function nameRegistry(address arg1) payable {
    return nameFor[arg1][0 len nameFor[arg1].length]
}

function sub_cff10265(?) payable {
    return address(sub_cff10265[arg1])
}

function invoiced(address arg1) payable {
    return invoiced[arg1]
}

function masterKeys(address arg1) payable {
    return bool(stor1[arg1])
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

function setOversight(address arg1) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    uint256(stor7) = arg1 or Mask(96, 160, uint256(stor7))
    emit PropertySet(msg.sender);
}

function identify(string arg1) payable {
    require stor1[address(msg.sender)]
    nameFor[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
    emit NameRegistered(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) payable {
    call arg3.0x23b872dd with:
         gas gas_remaining - 25050 wei
        args address(arg1), address(this.address), arg2
    require ext_call.success
    emit HotWalletDeposit(arg2, arg1);
}

function cancel() payable {
    require stor1[address(msg.sender)]
    if not uint256(sub_74769327[address(msg.sender)]):
        emit NothingToCancel(msg.sender);
    else:
        emit AuthCancel(msg.sender, msg.sender);
        address(sub_74769327[address(msg.sender)]) = 0
        uint256(sub_74769327[address(sub_74769327[address(msg.sender)])]) = 0
}

function setMasterKey(address arg1) payable {
    require not uint8(stor0.field_160)
    require msg.sender == owner
    require not stor1[address(arg1)]
    if not stor4[address(arg1)]:
        stor4[address(arg1)] = 1
        masterKeyIndex.length++
        if not masterKeyIndex.length <= masterKeyIndex.length + 1:
            idx = masterKeyIndex.length + 1
            while masterKeyIndex.length > idx:
                uint256(masterKeyIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(masterKeyIndex[masterKeyIndex.length]) = arg1 or Mask(96, 160, uint256(masterKeyIndex[masterKeyIndex.length]))
    stor1[address(arg1)] = 1
    emit SetMasterKey(msg.sender);
}

function voteOutMasterKey(address arg1) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6676 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            require stor1[address(arg1)]
            stor1[address(arg1)] = 0
}

function transfer(address arg1, address arg2, uint256 arg3) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6676 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            call address(oversightAddress).0x98e0ae14 with:
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
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6676 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            call address(oversightAddress).0x98e0ae14 with:
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
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6676 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            call address(oversightAddress).0x98e0ae14 with:
                 gas gas_remaining - 25050 wei
                args address(arg1), arg3
            require ext_call.success
            require ext_call.return_data[0]
            require address(oversightAddress) != 0
            call arg1.0xcae9ca51 with:
                 gas gas_remaining - 25050 wei
                args address(arg2), arg3, Array(len=arg4.length, data=arg4[all])
            require ext_call.success
            emit PerformedApprove(arg3, arg2);
}

function transferFrom(address arg1, address arg2, address arg3, uint256 arg4) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6676 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            if arg3 != this.address:
                call address(oversightAddress).0x98e0ae14 with:
                     gas gas_remaining - 25050 wei
                    args address(arg1), arg4
                require ext_call.success
                require ext_call.return_data[0]
            require address(oversightAddress) != 0
            call arg1.0x23b872dd with:
                 gas gas_remaining - 25050 wei
                args address(arg2), address(arg3), arg4
            require ext_call.success
            emit PerformedTransferFrom(arg4, arg2, arg3);
}

function voteInMasterKey(address arg1) payable {
    require stor1[address(msg.sender)]
    if uint256(sub_74769327[address(msg.sender)]):
        emit AuthPending(msg.sender);
    else:
        if not address(sub_cff10265[call.data[0 len calldata.size]]):
            uint256(sub_cff10265[call.data[0 len calldata.size]]) = msg.sender or Mask(96, 160, uint256(sub_cff10265[call.data[0 len calldata.size]]))
            uint256(sub_74769327[address(msg.sender)]) = sha3(call.data[0 len calldata.size])
            emit 0x5622ef83: msg.sender
        else:
            emit code.data[6676 len 32]: address(sub_cff10265[call.data[0 len calldata.size]]), msg.sender
            address(sub_cff10265[call.data[0 len calldata.size]]) = 0
            uint256(sub_74769327[address(stor5[call.data[0 len calldata.size]])]) = 0
            require not stor1[address(arg1)]
            if not stor4[address(arg1)]:
                stor4[address(arg1)] = 1
                masterKeyIndex.length++
                if not masterKeyIndex.length <= masterKeyIndex.length + 1:
                    idx = masterKeyIndex.length + 1
                    while masterKeyIndex.length > idx:
                        uint256(masterKeyIndex[idx]) = 0
                        idx = idx + 1
                        continue 
                uint256(masterKeyIndex[masterKeyIndex.length]) = arg1 or Mask(96, 160, uint256(masterKeyIndex[masterKeyIndex.length]))
            stor1[address(arg1)] = 1
}



}
