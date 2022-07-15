contract main {




// =====================  Runtime code  =====================


mapping of struct stor0;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
array of address owners;
uint256 sub_82e717f7;
uint256 transactionCount;
uint256 sub_29d6b4bd;

function owners(uint256 arg1) {
    require arg1 < owners.length
    return owners[arg1]
}

function sub_29d6b4bd(?) {
    return sub_29d6b4bd
}

function isOwner(address arg1) {
    return bool(stor2[arg1])
}

function confirmations(uint256 arg1, address arg2) {
    return bool(stor1[arg1][arg2])
}

function sub_6c9a43f9(?) {
    return bool(stor3[arg1])
}

function sub_82e717f7(?) {
    return sub_82e717f7
}

function transactionCount() {
    return transactionCount
}

function getNumberOfOwners() {
    return owners.length
}

function _fallback() payable {
    if msg.value > 0:
        emit LogDeposit(msg.sender, msg.value);
}

function sub_f0d0afb9(?) {
    if msg.sender != this.address:
        revert with 0, 'onlyByThisAddress'
    if not arg2 != bool(stor3[address(arg1)]):
        revert with 0, 'Failed destinationStatusCheck'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'contract can never disable calling itself'
    stor3[address(arg1)] = uint8(arg2)
    emit 0x18b521d7: address(arg1), arg2
}

function transactions(uint256 arg1) {
    mem[128] = stor0[arg1][2].field_0
    idx = 128
    s = 0
    while stor0[arg1][2].length + 96 > idx:
        mem[idx + 32] = stor0[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1].field_0, 
           stor0[arg1].field_256,
           Array(len=stor0[arg1][2].length, data=mem[128 len stor0[arg1][2].length]),
           bool(stor0[arg1].field_768),
           stor0[arg1].field_1024,
           stor0[arg1].field_1280
}

function sub_97cae620(?) {
    if not stor2[msg.sender]:
        revert with 0, 'onlyByOwners'
    if bool(stor1[arg1][msg.sender]) != 1:
        revert with 0, 'Failed confirmationStatusCheck'
    if stor0[arg1].field_768:
        revert with 0, 'Tx already executed'
    if block.timestamp > stor0[arg1].field_1024:
        revert with 0, 'Tx has expired'
    stor1[arg1][msg.sender] = 0
    require stor0[arg1].field_1280
    stor0[arg1].field_1280--
    emit 0x43976ef6: msg.sender, stor0[arg1].field_1280 - 1, arg1
}

function sub_54b5fe80(?) {
    if stor0[arg1].field_1280 != sub_82e717f7:
        revert with 0, 'Not confirmed yet'
    if stor0[arg1].field_768:
        revert with 0, 'Tx already executed'
    if block.timestamp > stor0[arg1].field_1024:
        revert with 0, 'Tx has expired'
    if not stor0[arg1].field_768:
        if block.timestamp <= stor0[arg1].field_1024:
            if stor0[arg1].field_1280 == sub_82e717f7:
                mem[96] = stor0[arg1][2].field_0
                idx = 96
                s = 0
                while stor0[arg1][2].length + 96 > idx + 32:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor0[arg1].field_0.mem[96 len 4] with:
                   value stor0[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                stor0[arg1].field_768 = uint8(bool(ext_call.success))
                if not ext_call.success:
                    emit 0xe6be4216: arg1
                else:
                    emit 0xe2993c3f: arg1
}

function sub_1087393a(?) {
    if not stor2[msg.sender]:
        revert with 0, 'onlyByOwners'
    if stor1[arg1][msg.sender]:
        revert with 0, 'Failed confirmationStatusCheck'
    if stor0[arg1].field_1280 == sub_82e717f7:
        revert with 0, 'Already confirmed'
    if stor0[arg1].field_768:
        revert with 0, 'Tx already executed'
    if block.timestamp > stor0[arg1].field_1024:
        revert with 0, 'Tx has expired'
    stor1[arg1][msg.sender] = 1
    stor0[arg1].field_1280++
    if not stor0[arg1].field_768:
        if block.timestamp <= stor0[arg1].field_1024:
            if stor0[arg1].field_1280 == sub_82e717f7:
                mem[96] = stor0[arg1][2].field_0
                idx = 96
                s = 0
                while stor0[arg1][2].length + 96 > idx + 32:
                    mem[idx + 32] = stor0[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor0[arg1].field_0.mem[96 len 4] with:
                   value stor0[arg1].field_256 wei
                     gas gas_remaining wei
                    args mem[100 len stor0[arg1][2].length + (floor32(stor0[arg1][2].length - 1) + -stor0[arg1][2].length + 32 % 32) - 4]
                stor0[arg1].field_768 = uint8(bool(ext_call.success))
                if not ext_call.success:
                    emit 0xe6be4216: arg1
                else:
                    emit 0xe2993c3f: arg1
    emit 0xd5bed639: stor0[arg1].field_1280, arg1, msg.sender
}

function sub_1542146a(?) {
    mem[128 len arg3.length] = arg3[all]
    if not stor2[msg.sender]:
        revert with 0, 'onlyByOwners'
    if bool(stor3[address(arg1)]) != 1:
        revert with 0, 'Failed destinationStatusCheck'
    require arg4 >= block.timestamp
    if arg4 - block.timestamp >= sub_29d6b4bd:
        revert with 0, 'Expiration time is too far in the future'
    transactionCount++
    mem[ceil32(arg3.length) + 128] = arg1
    stor0[stor6].field_0 = arg1
    stor0[stor6].field_256 = arg2
    stor0[stor6][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    stor0[stor6].field_768 = 0
    stor0[stor6].field_1024 = arg4
    stor0[stor6].field_1280 = 0
    mem[ceil32(arg3.length) + 352] = arg2
    mem[ceil32(arg3.length) + 384] = 96
    mem[ceil32(arg3.length) + 416] = arg3.length
    mem[ceil32(arg3.length) + 448 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    emit 0x9b472162: address(arg1), arg2, Array(len=arg3.length, data=arg3[all]), transactionCount
    stor1[stor6][msg.sender] = 1
    stor0[stor6].field_1280++
    if not stor0[stor6].field_768:
        if block.timestamp <= stor0[stor6].field_1024:
            if stor0[stor6].field_1280 == sub_82e717f7:
                mem[ceil32(arg3.length) + 320] = stor0[stor6][2].field_0
                idx = ceil32(arg3.length) + 320
                s = 0
                while ceil32(arg3.length) + stor0[stor6][2].length + 320 > idx + 32:
                    mem[idx + 32] = stor0[stor6][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                call stor0[stor6].field_0.mem[ceil32(arg3.length) + 320 len 4] with:
                   value stor0[stor6].field_256 wei
                     gas gas_remaining wei
                    args mem[ceil32(arg3.length) + 324 len stor0[stor6][2].length + (floor32(stor0[stor6][2].length - 1) + -stor0[stor6][2].length + 32 % 32) - 4]
                stor0[stor6].field_768 = uint8(bool(ext_call.success))
                if not ext_call.success:
                    emit 0xe6be4216: transactionCount
                else:
                    emit 0xe2993c3f: transactionCount
    emit 0xd5bed639: stor0[stor6].field_1280, transactionCount, msg.sender
    return transactionCount
}



}
