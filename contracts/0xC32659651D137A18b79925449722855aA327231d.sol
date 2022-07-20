contract main {




// =====================  Runtime code  =====================


const TLD_NODE = 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae


uint8 stor0;
address registrarOwner; offset 8
address migrationAddress;
address registrarAddress;
address ensAddress;
mapping of struct stor4;

function migration() {
    return migrationAddress
}

function registrarOwner() {
    return registrarOwner
}

function registrar() {
    return registrarAddress
}

function ens() {
    return ensAddress
}

function stopped() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function stop() {
    require not stor0
    require msg.sender == registrarOwner
    stor0 = 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == registrarOwner
    registrarOwner = arg1
}

function setMigrationAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == registrarOwner
    require stor0
    migrationAddress = arg1
}

function rentDue(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    return -1
}

function payRent(bytes32 arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length > 4294967296 or arg2 + arg2.length + 36 > calldata.size
    revert
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    if Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0xc1b15f5a00000000000000000000000000000000000000000000000000000000)
}

function owner(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if address(stor4[arg1].field_256):
        return address(stor4[arg1].field_256)
    require ext_code.size(registrarAddress)
    staticcall registrarAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[12 len 20]
}

function transfer(string arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if address(stor4[arg1[all]].field_256):
        require address(stor4[arg1[all]].field_256) == msg.sender
    else:
        require ext_code.size(registrarAddress)
        staticcall registrarAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == msg.sender
    emit OwnerChanged(sha3(arg1[all]), address(stor4[arg1[all]].field_256), arg2);
    address(stor4[arg1[all]].field_256) = arg2
}

function unlistDomain(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if address(stor4[arg1[all]].field_256):
        require address(stor4[arg1[all]].field_256) == msg.sender
        emit DomainUnlisted(sha3(arg1[all]));
        bool(stor4[arg1[all]].field_0) = 0
        uint255(stor4[arg1[all]].field_1) = 0
        Mask(248, 0, stor4[arg1[all]].field_8) = mem[ceil32(arg1.length) + 160 len 31]
    else:
        require ext_code.size(registrarAddress)
        staticcall registrarAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == msg.sender
        emit DomainUnlisted(sha3(arg1[all]));
        bool(stor4[arg1[all]].field_0) = 0
        uint255(stor4[arg1[all]].field_1) = 0
        Mask(248, 0, stor4[arg1[all]].field_8) = uint32(sha3(arg1[all])), mem[ceil32(arg1.length) + 164 len 27]
    idx = 0
    while stor4[arg1[all]].length + 31 / 32 > idx:
        stor4[arg1[all]][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4[arg1[all]].field_512 = 0
    stor4[arg1[all]].field_768 = 0
}

function setResolver(string arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if address(stor4[arg1[all]].field_256):
        require address(stor4[arg1[all]].field_256) == msg.sender
        mem[ceil32(arg1.length) + 160] = 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae
        mem[ceil32(arg1.length) + 192] = sha3(arg1[all])
        mem[ceil32(arg1.length) + 128] = 64
        require ext_code.size(ensAddress)
        call ensAddress.setResolver(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]]), arg2
    else:
        require ext_code.size(registrarAddress)
        staticcall registrarAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == msg.sender
        mem[ceil32(arg1.length) + 160] = 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae
        require ext_code.size(ensAddress)
        call ensAddress.setResolver(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(mem[ceil32(arg1.length) + 160 len 0, 64]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function query(bytes32 arg1, string arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128] = 0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae
    mem[160] = arg1
    mem[96] = 64
    mem[192 len arg2.length] = arg2[all]
    mem[224] = sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1)
    mem[256] = sha3(arg2[all])
    mem[192] = 64
    require ext_code.size(ensAddress)
    staticcall ensAddress.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args sha3(sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1), sha3(arg2[all]))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20]:
        return 128, 0, 0, 0, 0
    mem[32] = 4
    mem[288] = stor4[arg1].length
    mem[320] = stor4[arg1].field_0
    idx = 320
    s = 0
    while stor4[arg1].length + 288 > idx:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1].length) + 352] = stor4[arg1].field_512
    mem[ceil32(stor4[arg1].length) + 384] = 0
    mem[ceil32(stor4[arg1].length) + 416] = stor4[arg1].field_768
    mem[ceil32(stor4[arg1].length) + 320] = 128
    mem[ceil32(stor4[arg1].length) + 448] = stor4[arg1].length
    mem[ceil32(stor4[arg1].length) + 480 len ceil32(stor4[arg1].length)] = mem[320 len ceil32(stor4[arg1].length)]
    if not stor4[arg1].length % 32:
        return 128, stor4[arg1].field_512, 0, stor4[arg1].field_768, stor4[arg1].length, mem[320 len stor4[arg1].length]
    mem[floor32(stor4[arg1].length) + ceil32(stor4[arg1].length) + 480] = mem[floor32(stor4[arg1].length) + ceil32(stor4[arg1].length) + -stor4[arg1].length % 32 + 512 len stor4[arg1].length % 32]
    return 128, 
           stor4[arg1].field_512,
           0,
           stor4[arg1].field_768,
           stor4[arg1].length,
           mem[320 len ceil32(stor4[arg1].length)],
           mem[(2 * ceil32(stor4[arg1].length)) + 480 len floor32(stor4[arg1].length) + -ceil32(stor4[arg1].length) + 32]
}

function configureDomain(string arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if address(stor4[arg1[all]].field_256):
        require address(stor4[arg1[all]].field_256) == msg.sender
    else:
        require ext_code.size(registrarAddress)
        staticcall registrarAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == msg.sender
    mem[ceil32(arg1.length) + 132] = sha3(arg1[all])
    require ext_code.size(registrarAddress)
    staticcall registrarAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        mem[ceil32(arg1.length) + 196] = sha3(arg1[all])
        require ext_code.size(registrarAddress)
        call registrarAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + 132] = sha3(arg1[all])
        mem[ceil32(arg1.length) + 164] = this.address
        require ext_code.size(registrarAddress)
        call registrarAddress.reclaim(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(arg1[all]), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if address(stor4[arg1[all]].field_256) != msg.sender:
        address(stor4[arg1[all]].field_256) = msg.sender
    mem[0] = sha3(sha3(arg1[all]), 4)
    mem[ceil32(arg1.length) + 128] = stor4[arg1[all]].field_0
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + stor4[arg1[all]].length + 128 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[mem[64] len ceil32(arg1.length) + stor4[arg1[all]].length + -mem[64] + 128]) != sha3(arg1[all]):
        stor4[arg1[all]][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    stor4[arg1[all]].field_512 = arg2
    stor4[arg1[all]].field_768 = arg3
    emit DomainConfigured(sha3(arg1[all]));
}

function configureDomainFor(string arg1, uint256 arg2, uint256 arg3, address arg4, address arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if address(stor4[arg1[all]].field_256):
        require address(stor4[arg1[all]].field_256) == msg.sender
    else:
        require ext_code.size(registrarAddress)
        staticcall registrarAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == msg.sender
    mem[ceil32(arg1.length) + 132] = sha3(arg1[all])
    require ext_code.size(registrarAddress)
    staticcall registrarAddress.ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        mem[ceil32(arg1.length) + 196] = sha3(arg1[all])
        require ext_code.size(registrarAddress)
        call registrarAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[ceil32(arg1.length) + 132] = sha3(arg1[all])
        mem[ceil32(arg1.length) + 164] = this.address
        require ext_code.size(registrarAddress)
        call registrarAddress.reclaim(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(arg1[all]), this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if address(stor4[arg1[all]].field_256) != arg4:
        address(stor4[arg1[all]].field_256) = arg4
    mem[0] = sha3(sha3(arg1[all]), 4)
    mem[ceil32(arg1.length) + 128] = stor4[arg1[all]].field_0
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + stor4[arg1[all]].length + 128 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    if sha3(mem[mem[64] len ceil32(arg1.length) + stor4[arg1[all]].length + -mem[64] + 128]) != sha3(arg1[all]):
        stor4[arg1[all]][].field_0 = Array(len=mem[96], data=mem[128 len mem[96]])
    stor4[arg1[all]].field_512 = arg2
    stor4[arg1[all]].field_768 = arg3
    emit DomainConfigured(sha3(arg1[all]));
}

function migrate(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if address(stor4[arg1[all]].field_256):
        require address(stor4[arg1[all]].field_256) == msg.sender
    else:
        require ext_code.size(registrarAddress)
        staticcall registrarAddress.ownerOf(uint256 arg1) with:
                gas gas_remaining wei
               args sha3(arg1[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[12 len 20] == msg.sender
    require stor0
    require migrationAddress
    require ext_code.size(registrarAddress)
    call registrarAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args migrationAddress, sha3(arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg1.length) + 128] = 0xcf77525500000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + 164] = stor4[arg1[all]].field_512
    mem[ceil32(arg1.length) + 196] = stor4[arg1[all]].field_768
    mem[ceil32(arg1.length) + 228] = address(stor4[arg1[all]].field_256)
    mem[ceil32(arg1.length) + 260] = 0
    mem[ceil32(arg1.length) + 132] = 160
    mem[ceil32(arg1.length) + 292] = stor4[arg1[all]].length
    mem[0] = sha3(sha3(arg1[all]), 4)
    mem[ceil32(arg1.length) + 324] = stor4[arg1[all]].field_0
    idx = ceil32(arg1.length) + 324
    s = 0
    while ceil32(arg1.length) + stor4[arg1[all]].length + 324 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(migrationAddress)
    call migrationAddress.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len ceil32(arg1.length) + stor4[arg1[all]].length + (floor32(stor4[arg1[all]].length - 1) + -stor4[arg1[all]].length + 32 % 32) + -mem[64] + 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[0] = sha3(arg1[all])
    mem[32] = 4
    stor4[arg1[all]].field_0 = 0
    if 31 < stor4[arg1[all]].length:
        mem[0] = sha3(sha3(arg1[all]), 4)
        idx = 0
        while stor4[arg1[all]].length + 31 / 32 > idx:
            stor4[arg1[all]][idx].field_0 = 0
            idx = idx + 1
            continue 
    address(stor4[arg1[all]].field_256) = 0
    stor4[arg1[all]].field_512 = 0
    stor4[arg1[all]].field_768 = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if not mem[96] % 32:
        emit DomainTransferred(bytes32 arg1, string arg2):
                               32,
                               mem[mem[64] + 32 len mem[96] + 32],
                               sha3(arg1[all]),
    else:
        mem[floor32(mem[96]) + mem[64] + 64] = mem[floor32(mem[96]) + mem[64] + -(mem[96] % 32) + 96 len mem[96] % 32]
        emit DomainTransferred(Array(len=mem[96], data=mem[mem[64] + 64 len floor32(mem[96]) + 32]), sha3(arg1[all]));
}

function register(bytes32 arg1, string arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    require not stor0
    mem[192 len arg2.length] = arg2[all]
    mem[292] = sha3(sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1), sha3(arg2[all]))
    require ext_code.size(ensAddress)
    staticcall ensAddress.owner(bytes32 arg1) with:
            gas gas_remaining wei
           args sha3(sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1), sha3(arg2[all]))
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[12 len 20]
    mem[288] = stor4[arg1].field_0
    idx = 288
    s = 0
    while stor4[arg1].length + 288 > idx + 32:
        mem[idx + 32] = stor4[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require sha3(mem[288 len stor4[arg1].length]) == arg1
    require msg.value >= stor4[arg1].field_512
    if msg.value > stor4[arg1].field_512:
        call msg.sender with:
           value msg.value - stor4[arg1].field_512 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if stor4[arg1].field_768 <= 0:
        if stor4[arg1].field_512 > 0:
            call address(stor4[arg1].field_256) with:
               value stor4[arg1].field_512 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if not arg4:
            if stor4[arg1].field_512 > 0:
                call address(stor4[arg1].field_256) with:
                   value stor4[arg1].field_512 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if arg4 == address(stor4[arg1].field_256):
                if stor4[arg1].field_512 > 0:
                    call address(stor4[arg1].field_256) with:
                       value stor4[arg1].field_512 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                call arg4 with:
                   value stor4[arg1].field_512 * stor4[arg1].field_768 / 10^6 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if stor4[arg1].field_512 - (stor4[arg1].field_512 * stor4[arg1].field_768 / 10^6) > 0:
                    call address(stor4[arg1].field_256) with:
                       value stor4[arg1].field_512 - (stor4[arg1].field_512 * stor4[arg1].field_768 / 10^6) wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(ensAddress)
    call ensAddress.setSubnodeOwner(bytes32 arg1, bytes32 arg2, address arg3) with:
         gas gas_remaining wei
        args sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1), sha3(arg2[all]), this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(ensAddress)
    call ensAddress.setResolver(bytes32 arg1, address arg2) with:
         gas gas_remaining wei
        args sha3(sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1), sha3(arg2[all])), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg5)
    if arg3:
        call arg5.setAddr(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1), sha3(arg2[all])), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(ensAddress)
        call ensAddress.setOwner(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1), sha3(arg2[all])), arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit NewRegistration(Array(len=arg2.length, data=arg2[all]), stor4[arg1].field_512, arg1, arg3, arg4);
    else:
        call arg5.setAddr(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1), sha3(arg2[all])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(ensAddress)
        call ensAddress.setOwner(bytes32 arg1, address arg2) with:
             gas gas_remaining wei
            args sha3(sha3(0x93cdeb708b7545dc668eb9280176169d1c33cfd8ed6f04690a0bcc88a93fc4ae, arg1), sha3(arg2[all])), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit NewRegistration(Array(len=arg2.length, data=arg2[all]), stor4[arg1].field_512, arg1, msg.sender, arg4);
}



}
