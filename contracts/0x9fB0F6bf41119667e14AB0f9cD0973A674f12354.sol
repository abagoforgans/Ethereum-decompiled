contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint8 stor7; offset 64
uint64 stor7;

function _fallback() {
    stor0 = address(code.data[6471 len 32])
    stor1 = msg.sender
    stor2 = address(code.data[6503 len 32])
    stor3 = code.data[6567 len 32]
    stor4 = code.data[6599 len 32]
    stor5 = address(code.data[6535 len 32])
    stor6 = 0
    uint64(stor7.field_0) = uint64(code.data[6631 len 32])
    uint8(stor7.field_64) = 0
    return code.data[294 len 6177]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint8 stor7; offset 64
uint64 nextEscrowId;
mapping of struct escrowDeed;

function sub_501cb96f(?) {
    require escrowDeed[arg1].field_1280 <= 6
    return escrowDeed[arg1].field_0, 
           escrowDeed[arg1].field_256,
           escrowDeed[arg1].field_512,
           escrowDeed[arg1].field_768,
           escrowDeed[arg1].field_1024,
           escrowDeed[arg1].field_1280
}

function nextEscrowId() {
    return nextEscrowId
}

function escrowDeed(uint64 arg1) {
    require escrowDeed[arg1 << 192].field_1280 <= 6
    return escrowDeed[arg1 << 192].field_0, 
           escrowDeed[arg1 << 192].field_256,
           escrowDeed[arg1 << 192].field_512,
           escrowDeed[arg1 << 192].field_768,
           escrowDeed[arg1 << 192].field_1024,
           escrowDeed[arg1 << 192].field_1280
}

function _fallback() {
    emit FallbackCalled()
}

function abandon() {
    require stor2 == msg.sender
    uint8(stor7.field_64) = 1
}

function admin() {
    return stor0, stor1, stor2, stor3, stor4, stor5, stor6, nextEscrowId, bool(uint8(stor7.field_64))
}

function getAdminInfo() {
    return stor0, stor1, stor2, stor3, stor4, stor5, stor6, nextEscrowId, bool(uint8(stor7.field_64))
}

function withdrawTip(uint256 arg1) payable {
    require stor1 == msg.sender
    require arg1 <= stor6
    stor6 -= arg1
    call stor1 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function drawFundsAfterTransfer(uint64 arg1) payable {
    require escrowDeed[arg1 << 192].field_512 == msg.sender
    require escrowDeed[arg1 << 192].field_1280 <= 6
    require escrowDeed[arg1 << 192].field_1280 == 2
    escrowDeed[arg1 << 192].field_1280 = 4
    stor6 += msg.value
    call escrowDeed[arg1 << 192].field_512 with:
       value escrowDeed[arg1 << 192].field_768 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit FundsDrawnByNameDeedOwner(escrowDeed[arg1 << 192].field_0, arg1);
}

function scavengeEscrow(uint64 arg1) {
    require stor4 + escrowDeed[arg1 << 192].field_1024 < block.timestamp
    require escrowDeed[arg1 << 192].field_1280 <= 6
    if escrowDeed[arg1 << 192].field_1280 != 1:
        require escrowDeed[arg1 << 192].field_1280 <= 6
        if escrowDeed[arg1 << 192].field_1280 != 2:
            require escrowDeed[arg1 << 192].field_1280 <= 6
            require escrowDeed[arg1 << 192].field_1280 == 3
    escrowDeed[arg1 << 192].field_1280 = 6
    stor6 += escrowDeed[arg1 << 192].field_768
    emit EscrowScavenged(escrowDeed[arg1 << 192].field_0, arg1);
}

function withdrawEscrow(uint64 arg1) payable {
    require escrowDeed[arg1 << 192].field_256 == msg.sender
    require escrowDeed[arg1 << 192].field_1280 <= 6
    if escrowDeed[arg1 << 192].field_1024 >= block.timestamp:
        require escrowDeed[arg1 << 192].field_1280 == 3
    else:
        if escrowDeed[arg1 << 192].field_1280 != 1:
            require escrowDeed[arg1 << 192].field_1280 <= 6
            require escrowDeed[arg1 << 192].field_1280 == 3
    escrowDeed[arg1 << 192].field_1280 = 5
    stor6 += msg.value
    call escrowDeed[arg1 << 192].field_256 with:
       value escrowDeed[arg1 << 192].field_768 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit EscrowWithdrawn(escrowDeed[arg1 << 192].field_0, arg1);
}

function transferDomainToBuyer(uint64 arg1) payable {
    require ext_code.size(stor0)
    call stor0.'&{i"' with:
         gas gas_remaining - 710 wei
        args escrowDeed[arg1 << 192].field_0
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == this.address
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).previousOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[12 len 20] == msg.sender
    require escrowDeed[arg1 << 192].field_1024 > block.timestamp
    require escrowDeed[arg1 << 192].field_1280 <= 6
    require escrowDeed[arg1 << 192].field_1280 == 1
    require ext_code.size(stor0)
    call stor0.transfer(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args escrowDeed[arg1 << 192].field_0, escrowDeed[arg1 << 192].field_256
    require ext_call.success
    escrowDeed[arg1 << 192].field_512 = msg.sender
    escrowDeed[arg1 << 192].field_1280 = 2
    stor6 += msg.value
    emit DomainTransferred(escrowDeed[arg1 << 192].field_0, arg1);
}

function reject(uint64 arg1, string arg2) payable {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 288] = 0
    require ext_code.size(stor0)
    call stor0.'&{i"' with:
         gas gas_remaining - 710 wei
        args escrowDeed[arg1 << 192].field_0
    mem[ceil32(arg2.length) + 128 len 160] = ext_call.return_data[0 len 160]
    require ext_call.success
    require escrowDeed[arg1 << 192].field_1024 > block.timestamp
    require escrowDeed[arg1 << 192].field_1280 <= 6
    require escrowDeed[arg1 << 192].field_1280 != 2
    require escrowDeed[arg1 << 192].field_1280 <= 6
    require escrowDeed[arg1 << 192].field_1280 != 4
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[32]))
    if ext_call.return_data[12 len 20] != this.address:
        call address(ext_call.return_data[32]).0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require msg.sender == ext_call.return_data[12 len 20]
    else:
        call address(ext_call.return_data[32]).previousOwner() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] != msg.sender:
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).0x8da5cb5b with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
    escrowDeed[arg1 << 192].field_1280 = 3
    stor6 += msg.value
    mem[ceil32(arg2.length) + 128] = escrowDeed[arg1 << 192].field_0
    mem[ceil32(arg2.length) + 160] = arg1
    mem[ceil32(arg2.length) + 192] = 96
    mem[ceil32(arg2.length) + 224] = arg2.length
    if arg2.length:
        mem[ceil32(arg2.length) + 256] = mem[128]
        mem[ceil32(arg2.length) + 288 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
    emit EscrowRejected(escrowDeed[arg1 << 192].field_0, arg1 << 192, Array(len=arg2.length, data=mem[ceil32(arg2.length) + 256 len arg2.length]));
}

function transferDomainBackToSeller(string arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = mem[ceil32(arg1.length) + floor32(arg1.length) + 128] and 256^(-(arg1.length % 32) + 32) - 1 or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _37 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    mem[ceil32(arg1.length) + 288] = 0
    require ext_code.size(stor0)
    call stor0.'&{i"' with:
         gas gas_remaining - 710 wei
        args _37
    mem[ceil32(arg1.length) + 128 len 160] = ext_call.return_data[0 len 160]
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).0x8da5cb5b with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require address(ext_call.return_data[0]) == this.address
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).previousOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require address(ext_call.return_data[0]) == msg.sender
    require ext_code.size(address(ext_call.return_data[32]))
    call address(ext_call.return_data[32]).previousOwner() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    mem[ceil32(arg1.length) + 164] = address(ext_call.return_data[0])
    require ext_code.size(stor0)
    call stor0.transfer(bytes32 rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args _37, address(ext_call.return_data[0])
    require ext_call.success
    stor6 += msg.value
    mem[ceil32(arg1.length) + 128] = 32
    mem[ceil32(arg1.length) + 160] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 192] = mem[128]
        mem[ceil32(arg1.length) + 224 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit DomainTransferredBackToOwner(Array(len=arg1.length, data=mem[ceil32(arg1.length) + 192 len arg1.length]));
}

function startEscrow(string arg1, uint256 arg2, uint64 arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = 0
    mem[ceil32(arg1.length) + 192] = 0
    mem[ceil32(arg1.length) + 224] = 0
    mem[ceil32(arg1.length) + 256] = 0
    mem[ceil32(arg1.length) + 288] = 0
    require not uint8(stor7.field_64)
    require msg.value >= arg2
    require msg.value <= 11 * arg2 / 10
    mem[ceil32(arg1.length) + 320 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 352 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _81 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 320 len arg1.length % 32])
    if arg3 > 0:
        require ext_code.size(stor5)
        call stor5.0xba56763e with:
             gas gas_remaining - 710 wei
            args arg3
        require ext_call.success
        require ext_call.return_data[0] == sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 320 len arg1.length % 32])
        require msg.sender == address(ext_call.return_data[64])
        require arg2 == ext_call.return_data[96]
        require ext_call.return_data[32] <= 4
        require ext_call.return_data[32] != 3
        require msg.value <= 11 * ext_call.return_data[96] / 10
    nextEscrowId = uint64(nextEscrowId + 1)
    mem[ceil32(arg1.length) + 320] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 320 len arg1.length % 32])
    mem[ceil32(arg1.length) + 352] = msg.sender
    mem[ceil32(arg1.length) + 384] = 0
    mem[ceil32(arg1.length) + 416] = arg2
    mem[ceil32(arg1.length) + 448] = block.timestamp + stor3
    mem[ceil32(arg1.length) + 480] = 1
    escrowDeed[uint64(stor7.field_0)].field_0 = _81
    escrowDeed[uint64(stor7.field_0)].field_256 = msg.sender
    escrowDeed[uint64(stor7.field_0)].field_512 = 0
    escrowDeed[uint64(stor7.field_0)].field_768 = arg2
    escrowDeed[uint64(stor7.field_0)].field_1024 = block.timestamp + stor3
    escrowDeed[uint64(stor7.field_0)].field_1280 = 1
    stor6 = msg.value - arg2 + stor6
    if arg3 > 0:
        require ext_code.size(stor5)
        call stor5.recordEscrowOnBid(uint64 rg1, uint64 rg2) with:
             gas gas_remaining - 710 wei
            args arg3 << 192, nextEscrowId
        require ext_call.success
    mem[ceil32(arg1.length) + 512] = nextEscrowId
    mem[ceil32(arg1.length) + 544] = 64
    mem[ceil32(arg1.length) + 576] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 608] = mem[128]
        mem[ceil32(arg1.length) + 640 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit EscrowPosted(nextEscrowId, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 608 len arg1.length]));
    return nextEscrowId
}



}
