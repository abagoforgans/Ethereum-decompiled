contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 5791]




// =====================  Runtime code  =====================


const isSenderEmergencyMultisig = (0x52f3f521c5f573686a78912995e9dedc5aae9928 == msg.sender)

const ens = 0x314159265dd8dbb310642f98f50c066173c1259b

const sub_cc0f73b1(?) = 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9

const sub_dc6af758(?) = 0x52f3f521c5f573686a78912995e9dedc5aae9928

const rootNode = 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4


uint256 stor0;
array of struct stor1;
uint256 stor2;
address stor3;
uint16 stor4;
uint32 stor4;
uint128 stor4; offset 32
address stor4; offset 16
address stor4;
uint256 stor5;
uint64 stor6;
uint64 stor6; offset 128
uint64 stor6; offset 192
uint128 stor6;
uint64 stor7;
uint64 stor7; offset 64
uint128 stor7;
uint128 stor7; offset 128
uint256 stor8;
address stor9;
mapping of uint256 pendingReturns;

function pendingReturns(address arg1) {
    return pendingReturns[address(arg1)]
}

function hasNoBids() {
    return not bool(stor9)
}

function isSenderOriginalOwner() {
    return (stor3 == msg.sender)
}

function wasEmergencyCancelled() {
    return (57005 == address(stor4.field_0))
}

function sub_7b17abdb(?) {
    return uint64(stor7.field_0), uint64(stor7.field_0), uint128(stor7.field_0), stor8, stor9
}

function isNodeTLDOfRegistrar() {
    return (stor0 == sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4, stor2))
}

function sub_b266cb01(?) {
    mem[416] = uint256(stor1.field_0)
    idx = 416
    s = 0
    while stor1.length + 416 > idx + 32:
        mem[idx + 32] = stor1[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return stor0, 
           Array(len=stor1.length, data=mem[416 len stor1.length + (floor32(stor1.length - 1) + -stor1.length + 32 % 32)]),
           stor2,
           stor3,
           address(stor4.field_0),
           stor5,
           uint128(stor6.field_0),
           uint64(stor6.field_0),
           uint64(stor6.field_0)
}

function construct(bytes32 arg1, string arg2, bytes32 arg3, address arg4, uint128 arg5, uint256 arg6) {
    require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
    call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.0x290d10c4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require not uint64(stor6.field_128)
    stor0 = arg1
    stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2 = arg3
    stor3 = arg4
    uint128(stor6.field_0) = arg5
    uint64(stor6.field_128) = uint64(block.timestamp)
    stor5 = arg6
}

function withdraw(address arg1) {
    if arg1 != msg.sender:
        require 0x52f3f521c5f573686a78912995e9dedc5aae9928 == msg.sender
    if pendingReturns[address(arg1)] > 0:
        pendingReturns[address(arg1)] = 0
        call arg1 with:
           value pendingReturns[address(arg1)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
        call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.fireOnOfferingChanged(uint256 rg1, bytes32 rg2, uint256[] rg3) with:
             gas gas_remaining - 710 wei
            args uint128(stor6.field_0), 'withdraw', 96, 0
        require ext_call.success
}

function setSettings(uint256 arg1, uint64 arg2, uint64 arg3, uint256 arg4) {
    require stor3 == msg.sender
    require not stor9
    stor5 = arg1
    require arg2 <= block.timestamp + (2880 * 24 * 3600)
    require arg3 <= arg2 - block.timestamp
    require arg2 > block.timestamp
    uint64(stor7.field_0) = arg2
    uint64(stor7.field_64) = arg3
    require arg4 > 0
    stor8 = arg4
    require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
    call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.fireOnOfferingChanged(uint256 rg1, bytes32 rg2, uint256[] rg3) with:
         gas gas_remaining - 710 wei
        args uint128(stor6.field_0), 'setSettings', 96, 0
    require ext_call.success
}

function construct(bytes32 arg1, string arg2, bytes32 arg3, address arg4, uint128 arg5, uint256 arg6, uint64 arg7, uint64 arg8, uint256 arg9) {
    require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
    call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.0x290d10c4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require not uint64(stor6.field_128)
    stor0 = arg1
    stor1[].field_0 = Array(len=arg2.length, data=arg2[all])
    stor2 = arg3
    stor3 = arg4
    uint128(stor6.field_0) = arg5
    uint64(stor6.field_128) = uint64(block.timestamp)
    stor5 = arg6
    require arg7 <= block.timestamp + (2880 * 24 * 3600)
    require arg8 <= arg7 - block.timestamp
    require arg7 > block.timestamp
    uint64(stor7.field_0) = arg7
    uint64(stor7.field_64) = arg8
    require arg9 > 0
    stor8 = arg9
}

function isContractNodeOwner() {
    require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
    if stor0 != sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4, stor2):
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
    else:
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x267b6922 with:
             gas gas_remaining - 710 wei
            args stor2
        require ext_call.success
        require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        if ext_call.return_data[12 len 20] == this.address:
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).0x8da5cb5b with:
                 gas gas_remaining - 710 wei
            require ext_call.success
    return (ext_call.return_data[12 len 20] == this.address)
}

function finalize() {
    require block.timestamp > uint64(stor7.field_0)
    require stor9
    require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
    call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.0x290d10c4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require not address(stor4.field_0)
    address(stor4.field_0) = stor9
    uint64(stor6.field_192) = uint64(block.timestamp)
    require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
    if stor0 != sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4, stor2):
        call 0x314159265dd8dbb310642f98f50c066173c1259b.setOwner(bytes32 rg1, address rg2) with:
             gas gas_remaining - 710 wei
            args stor0, stor9
    else:
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x79ce9fac with:
             gas gas_remaining - 710 wei
            args stor2, stor9
    require ext_call.success
    require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
    call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.fireOnOfferingChanged(uint256 rg1, bytes32 rg2, uint256[] rg3) with:
         gas gas_remaining - 710 wei
        args uint128(stor6.field_0), 'finalize', 96, 0
    require ext_call.success
    call stor3 with:
       value stor5 wei
         gas 2300 * is_zero(value) wei
}

function unregister() {
    require stor3 == msg.sender
    require not address(stor4.field_0)
    require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
    if stor0 != sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4, stor2):
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        require ext_call.return_data[12 len 20] != this.address
    else:
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x267b6922 with:
             gas gas_remaining - 710 wei
            args stor2
        require ext_call.success
        require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        if ext_call.return_data[12 len 20] == this.address:
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).0x8da5cb5b with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[12 len 20] != this.address
    uint32(stor4.field_0) = 3735936685
    uint128(stor4.field_32) = 0
    require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
    call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.fireOnOfferingChanged(uint256 rg1, bytes32 rg2, uint256[] rg3) with:
         gas gas_remaining - 710 wei
        args uint128(stor6.field_0), 'unregister', 96, 0
    require ext_call.success
}

function reclaimOwnership() {
    if msg.sender != 0x52f3f521c5f573686a78912995e9dedc5aae9928:
        require not stor9
    else:
        if stor9:
            if address(stor4.field_0) != 57005:
                pendingReturns[stor9] = stor5
    require not address(stor4.field_0)
    if msg.sender != 0x52f3f521c5f573686a78912995e9dedc5aae9928:
        require stor3 == msg.sender
    require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
    if stor0 != sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4, stor2):
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        if ext_call.return_data[12 len 20] == this.address:
            require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
            if stor0 != sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4, stor2):
                call 0x314159265dd8dbb310642f98f50c066173c1259b.setOwner(bytes32 rg1, address rg2) with:
                     gas gas_remaining - 710 wei
                    args stor0, stor3
            else:
                call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
                     gas gas_remaining - 710 wei
                    args 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4
                require ext_call.success
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).0x79ce9fac with:
                     gas gas_remaining - 710 wei
                    args stor2, stor3
            require ext_call.success
    else:
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x267b6922 with:
             gas gas_remaining - 710 wei
            args stor2
        require ext_call.success
        require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        if ext_call.return_data[12 len 20] == this.address:
            require ext_code.size(address(ext_call.return_data[32]))
            call address(ext_call.return_data[32]).0x8da5cb5b with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if ext_call.return_data[12 len 20] == this.address:
                require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
                if stor0 != sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4, stor2):
                    call 0x314159265dd8dbb310642f98f50c066173c1259b.setOwner(bytes32 rg1, address rg2) with:
                         gas gas_remaining - 710 wei
                        args stor0, stor3
                else:
                    call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
                         gas gas_remaining - 710 wei
                        args 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4
                    require ext_call.success
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).0x79ce9fac with:
                         gas gas_remaining - 710 wei
                        args stor2, stor3
                require ext_call.success
    if 0x52f3f521c5f573686a78912995e9dedc5aae9928 == msg.sender:
        uint16(stor4.field_0) = 57005
        Mask(144, 0, stor4.field_16) = 0
    require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
    call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.fireOnOfferingChanged(uint256 rg1, bytes32 rg2, uint256[] rg3) with:
         gas gas_remaining - 710 wei
        args uint128(stor6.field_0), 'reclaimOwnership', 96, 0
    require ext_call.success
}

function bid() payable {
    require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
    call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.0x290d10c4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
    if stor0 != sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4, stor2):
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require block.timestamp < uint64(stor7.field_0)
        if not stor9:
            require msg.value >= stor5
        else:
            require stor8 + stor5 >= stor5
            require msg.value >= stor8 + stor5
            require stor5 + pendingReturns[stor9] >= pendingReturns[stor9]
            call stor9 with:
               value stor5 + pendingReturns[stor9] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                pendingReturns[stor9] += stor5
            else:
                pendingReturns[stor9] = 0
        stor9 = msg.sender
        uint128(stor7.field_128) = uint128(uint128(stor7.field_128) + 1)
        stor5 = msg.value
        if uint64(uint64(stor7.field_0) - uint64(stor7.field_64)) <= block.timestamp:
            require uint64(stor7.field_64) + block.timestamp >= block.timestamp
            uint64(stor7.field_0) = uint64(uint64(stor7.field_64) + block.timestamp)
        mem[452 len 0] = None
        require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
        call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.fireOnOfferingChanged(uint256 rg1, bytes32 rg2, uint256[] rg3) with:
             gas gas_remaining - 710 wei
            args uint128(stor6.field_0), 'bid', Array(len=3, data=mem[452 len 96])
    else:
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x267b6922 with:
             gas gas_remaining - 710 wei
            args stor2
        require ext_call.success
        require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require block.timestamp < uint64(stor7.field_0)
        if not stor9:
            require msg.value >= stor5
        else:
            require stor8 + stor5 >= stor5
            require msg.value >= stor8 + stor5
            require stor5 + pendingReturns[stor9] >= pendingReturns[stor9]
            call stor9 with:
               value stor5 + pendingReturns[stor9] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                pendingReturns[stor9] += stor5
            else:
                pendingReturns[stor9] = 0
        stor9 = msg.sender
        uint128(stor7.field_128) = uint128(uint128(stor7.field_128) + 1)
        stor5 = msg.value
        if uint64(uint64(stor7.field_0) - uint64(stor7.field_64)) <= block.timestamp:
            require uint64(stor7.field_64) + block.timestamp >= block.timestamp
            uint64(stor7.field_0) = uint64(uint64(stor7.field_64) + block.timestamp)
        mem[580 len 0] = None
        require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
        call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.fireOnOfferingChanged(uint256 rg1, bytes32 rg2, uint256[] rg3) with:
             gas gas_remaining - 710 wei
            args uint128(stor6.field_0), 'bid', Array(len=3, data=mem[580 len 96])
    require ext_call.success
}

function _fallback() payable {
    require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
    call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.0x290d10c4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
    if stor0 != sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4, stor2):
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require block.timestamp < uint64(stor7.field_0)
        if not stor9:
            require msg.value >= stor5
        else:
            require stor8 + stor5 >= stor5
            require msg.value >= stor8 + stor5
            require stor5 + pendingReturns[stor9] >= pendingReturns[stor9]
            call stor9 with:
               value stor5 + pendingReturns[stor9] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                pendingReturns[stor9] += stor5
            else:
                pendingReturns[stor9] = 0
        stor9 = msg.sender
        uint128(stor7.field_128) = uint128(uint128(stor7.field_128) + 1)
        stor5 = msg.value
        if uint64(uint64(stor7.field_0) - uint64(stor7.field_64)) <= block.timestamp:
            require uint64(stor7.field_64) + block.timestamp >= block.timestamp
            uint64(stor7.field_0) = uint64(uint64(stor7.field_64) + block.timestamp)
        mem[452 len 0] = None
        require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
        call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.fireOnOfferingChanged(uint256 rg1, bytes32 rg2, uint256[] rg3) with:
             gas gas_remaining - 710 wei
            args uint128(stor6.field_0), 'bid', Array(len=3, data=mem[452 len 96])
    else:
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4
        require ext_call.success
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x267b6922 with:
             gas gas_remaining - 710 wei
            args stor2
        require ext_call.success
        require ext_code.size(0x314159265dd8dbb310642f98f50c066173c1259b)
        call 0x314159265dd8dbb310642f98f50c066173c1259b.owner(bytes32 rg1) with:
             gas gas_remaining - 710 wei
            args stor0
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require ext_code.size(address(ext_call.return_data[32]))
        call address(ext_call.return_data[32]).0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[12 len 20] == this.address
        require block.timestamp < uint64(stor7.field_0)
        if not stor9:
            require msg.value >= stor5
        else:
            require stor8 + stor5 >= stor5
            require msg.value >= stor8 + stor5
            require stor5 + pendingReturns[stor9] >= pendingReturns[stor9]
            call stor9 with:
               value stor5 + pendingReturns[stor9] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                pendingReturns[stor9] += stor5
            else:
                pendingReturns[stor9] = 0
        stor9 = msg.sender
        uint128(stor7.field_128) = uint128(uint128(stor7.field_128) + 1)
        stor5 = msg.value
        if uint64(uint64(stor7.field_0) - uint64(stor7.field_64)) <= block.timestamp:
            require uint64(stor7.field_64) + block.timestamp >= block.timestamp
            uint64(stor7.field_0) = uint64(uint64(stor7.field_64) + block.timestamp)
        mem[580 len 0] = None
        require ext_code.size(0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9)
        call 0x34e400a8b4da8a23b5eaf81b46d3a887669a45b9.fireOnOfferingChanged(uint256 rg1, bytes32 rg2, uint256[] rg3) with:
             gas gas_remaining - 710 wei
            args uint128(stor6.field_0), 'bid', Array(len=3, data=mem[580 len 96])
    require ext_call.success
}



}
