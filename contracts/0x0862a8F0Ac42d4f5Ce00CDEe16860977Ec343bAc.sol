contract main {




// =====================  Runtime code  =====================


const MAX_OWNER_COUNT = 50


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
array of struct owners;
uint256 required;
uint256 transactionCount;
address returnStaticContractAddress;
array of address returnUserControl;
mapping of uint8 stor8;

function owners(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return address(owners[arg1].field_0)
}

function staticCallContractAddress() payable {
    return returnStaticContractAddress
}

function isOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(uint8(stor1[arg1][arg2]))
}

function user_control_accounts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < returnUserControl.length
    return returnUserControl[arg1]
}

function returnStaticContractAddress() payable {
    return returnStaticContractAddress
}

function transactionCount() payable {
    return transactionCount
}

function returnIsValidSendingKey(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function required() payable {
    return required
}

function returnUserControlAddress(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < returnUserControl.length
    return returnUserControl[arg1]
}

function _fallback() payable {
    revert
}

function addSendingKey(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == this.address
    stor8[address(arg1)] = 1
}

function removeSendingKey(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == this.address
    stor8[address(arg1)] = 0
}

function changeStaticLocation(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == this.address
    returnStaticContractAddress = arg1
}

function changeUserControlAddress(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == this.address
    require arg1 < returnUserControl.length
    returnUserControl[arg1] = arg2
}

function changeRequirement(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == this.address
    require owners.length <= 50
    require arg1 <= owners.length
    require arg1
    require owners.length
    required = arg1
    emit RequirementChange(arg1);
}

function revokeConfirmation(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(stor0[arg1].field_768)
    uint8(stor1[arg1][address(msg.sender)]) = 0
    emit Revocation(msg.sender, arg1);
}

function getConfirmationCount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function addOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == this.address
    require not stor2[address(arg1)]
    require arg1
    require owners.length + 1 <= 50
    require required <= owners.length + 1
    require required
    require owners.length + 1
    stor2[address(arg1)] = 1
    owners.length++
    address(owners[owners.length].field_0) = arg1
    emit OwnerAddition(arg1);
}

function transactions(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[128 len stor0[arg1][2].length]),
           bool(uint8(stor0[arg1].field_768))
}

function isConfirmed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        return 1
    return 0
}

function replaceOwner(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == this.address
    require stor2[address(arg1)]
    require not stor2[address(arg2)]
    idx = 0
    while idx < owners.length:
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < owners.length
        address(owners[idx].field_0) = arg2
        stor2[address(arg1)] = 0
        stor2[address(arg2)] = 1
        emit OwnerRemoval(arg1);
        emit OwnerAddition(arg2);
    stor2[address(arg1)] = 0
    stor2[address(arg2)] = 1
    emit OwnerRemoval(arg1);
    emit OwnerAddition(arg2);
}

function getOwners() payable {
    if not owners.length:
        mem[(32 * owners.length) + 128] = 32
        mem[(32 * owners.length) + 160] = owners.length
        mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
        return memory
          from (32 * owners.length) + 128
           len (96 * owners.length) + 64
    mem[128] = address(owners.field_0)
    idx = 128
    s = 0
    while (32 * owners.length) + 96 > idx:
        mem[idx + 32] = address(owners[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * owners.length) + 192 len floor32(owners.length)] = mem[128 len floor32(owners.length)]
    return Array(len=owners.length, data=mem[128 len floor32(owners.length)], mem[(32 * owners.length) + floor32(owners.length) + 192 len (32 * owners.length) - floor32(owners.length)]), 
}

function returnTxMessageToSign(bytes arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 584 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 616 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    return sha3(msg.sender, arg2, arg3, arg4, call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 584 len arg1.length % 32])
}

function getTransactionCount(bool arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg1:
            if not arg2:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_768):
                if not arg2:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function getConfirmations(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owners.length:
        mem[128 len 32 * owners.length] = code.data[12288 len 32 * owners.length]
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            idx = idx + 1
            s = s
            continue 
        require idx < owners.length
        mem[0] = 3
        require s < owners.length
        mem[(32 * s) + 128] = address(owners[idx].field_0)
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * owners.length) + 128] = s
    if s:
        mem[(32 * owners.length) + 160 len 32 * s] = code.data[12288 len 32 * s]
    t = 0
    while t < s:
        require t < owners.length
        require t < s
        mem[(32 * t) + (32 * owners.length) + 160] = mem[(32 * t) + 140 len 20]
        t = t + 1
        continue 
    mem[(32 * owners.length) + (32 * s) + 224 len floor32(s)] = mem[(32 * owners.length) + 160 len floor32(s)]
    return Array(len=s, data=mem[(32 * owners.length) + 160 len floor32(s)], mem[(32 * owners.length) + (32 * s) + floor32(s) + 224 len (32 * s) - floor32(s)]), 
}

function executeTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(stor0[arg1].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[arg1].field_768) = 1
        mem[128] = stor0[arg1][2].field_0
        idx = 128
        s = sha3(sha3(arg1, 0) + 2)
        while stor0[arg1][2].length + 96 > idx:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[128 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[132 len stor0[arg1][2].length - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_768) = 0
}

function recover(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        mem[ceil32(arg2.length) + 128] = 0
        return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 27:
        if uint8((Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27) != 28:
            mem[ceil32(arg2.length) + 128] = 0
            return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
    signer = erecover(arg1, (Mask(8, -(('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) + 256, 0) << (('mask_shl', 256, 0, -3, ('mem', ('range', 192, 32))), 0) - 256) + 27 << 248, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function confirmTransaction(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require stor2[address(msg.sender)]
    require address(stor0[arg1].field_0)
    require not uint8(stor1[arg1][address(msg.sender)])
    uint8(stor1[arg1][address(msg.sender)]) = 1
    emit Confirmation(msg.sender, arg1);
    require stor2[address(msg.sender)]
    require uint8(stor1[arg1][address(msg.sender)])
    require not uint8(stor0[arg1].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(arg1, 1)
        if not uint8(stor1[arg1][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[arg1].field_768) = 1
        mem[128] = stor0[arg1][2].field_0
        idx = 128
        s = sha3(sha3(arg1, 0) + 2)
        while stor0[arg1][2].length + 96 > idx:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[128 len 4] with:
           value stor0[arg1].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[132 len stor0[arg1][2].length - 4]
        if ext_call.success:
            emit Execution(arg1);
        else:
            emit ExecutionFailure(arg1);
            uint8(stor0[arg1].field_768) = 0
}

function removeOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == this.address
    require stor2[address(arg1)]
    stor2[address(arg1)] = 0
    idx = 0
    while idx < owners.length - 1:
        mem[0] = 3
        if address(owners[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require owners.length - 1 < owners.length
        require idx < owners.length
        address(owners[idx].field_0) = address(owners[owners.length].field_0)
        owners.length--
        if owners.length > owners.length - 1:
            idx = sha3(3) + owners.length - 1
            while sha3(3) + owners.length > idx:
                stor[idx] = 0
                idx = idx + 1
                continue 
        if required > owners.length:
            require msg.sender == this.address
            require owners.length <= 50
            require owners.length <= owners.length
            require owners.length
            required = owners.length
            emit RequirementChange(owners.length);
        emit OwnerRemoval(arg1);
    owners.length--
    if owners.length > owners.length - 1:
        idx = owners.length - 1
        while owners.length > idx:
            owners[idx].field_0 = 0
            idx = idx + 1
            continue 
    if required > owners.length:
        require msg.sender == this.address
        require owners.length <= 50
        require owners.length <= owners.length
        require owners.length
        required = owners.length
        emit RequirementChange(owners.length);
    emit OwnerRemoval(arg1);
}

function getTransactionIds(uint256 arg1, uint256 arg2, bool arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    if transactionCount:
        mem[128 len 32 * transactionCount] = code.data[12288 len 32 * transactionCount]
    idx = 0
    s = 0
    while idx < transactionCount:
        if not arg3:
            if not arg4:
                idx = idx + 1
                s = s
                continue 
            mem[0] = idx
            mem[32] = 0
            if not uint8(stor0[idx].field_768):
                idx = idx + 1
                s = s
                continue 
        else:
            mem[0] = idx
            mem[32] = 0
            if uint8(stor0[idx].field_768):
                if not arg4:
                    idx = idx + 1
                    s = s
                    continue 
                mem[0] = idx
                mem[32] = 0
                if not uint8(stor0[idx].field_768):
                    idx = idx + 1
                    s = s
                    continue 
        require s < transactionCount
        mem[(32 * s) + 128] = idx
        idx = idx + 1
        s = s + 1
        continue 
    mem[(32 * transactionCount) + 128] = arg2 - arg1
    if arg2 - arg1:
        mem[(32 * transactionCount) + 160 len 32 * arg2 - arg1] = code.data[12288 len 32 * arg2 - arg1]
    idx = arg1
    while idx < arg2:
        require idx < transactionCount
        require idx - arg1 < mem[(32 * transactionCount) + 128]
        mem[(32 * idx - arg1) + (32 * transactionCount) + 160] = mem[(32 * idx) + 128]
        idx = idx + 1
        continue 
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 160] = 32
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 192] = mem[(32 * transactionCount) + 128]
    mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len floor32(mem[(32 * transactionCount) + 128])] = mem[(32 * transactionCount) + 160 len floor32(mem[(32 * transactionCount) + 128])]
    return Array(len=mem[(32 * transactionCount) + 128], data=mem[(32 * transactionCount) + (32 * arg2 - arg1) + 224 len 32 * mem[(32 * transactionCount) + 128]]), 
}

function submitTransaction(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require arg1
    address(stor0[stor5].field_0) = arg1
    stor0[stor5].field_256 = arg2
    stor0[stor5][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    uint8(stor0[stor5].field_768) = 0
    transactionCount++
    emit Submission(transactionCount);
    require stor2[address(msg.sender)]
    require address(stor0[stor5].field_0)
    require not uint8(stor1[stor5][address(msg.sender)])
    uint8(stor1[stor5][address(msg.sender)]) = 1
    emit Confirmation(msg.sender, transactionCount);
    require stor2[address(msg.sender)]
    require uint8(stor1[stor5][address(msg.sender)])
    require not uint8(stor0[stor5].field_768)
    idx = 0
    s = 0
    while idx < owners.length:
        mem[0] = address(owners[idx].field_0)
        mem[32] = sha3(transactionCount, 1)
        if not uint8(stor1[stor5][address(stor3[idx].field_0)]):
            if s != required:
                idx = idx + 1
                s = s
                continue 
        else:
            if s + 1 != required:
                idx = idx + 1
                s = s + 1
                continue 
        uint8(stor0[stor5].field_768) = 1
        mem[ceil32(arg3.length) + 288] = stor0[stor5][2].field_0
        idx = ceil32(arg3.length) + 288
        s = sha3(sha3(transactionCount, 0) + 2)
        while ceil32(arg3.length) + stor0[stor5][2].length + 256 > idx:
            mem[idx + 32] = uint256(stor1[s])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[stor5].field_0).mem[ceil32(arg3.length) + 288 len 4] with:
           value stor0[stor5].field_256 wei
             gas gas_remaining - 34710 wei
            args mem[ceil32(arg3.length) + 292 len stor0[stor5][2].length - 4]
        if ext_call.success:
            emit Execution(transactionCount);
        else:
            emit ExecutionFailure(transactionCount);
            uint8(stor0[stor5].field_768) = 0
        return transactionCount
    return transactionCount
}



}
