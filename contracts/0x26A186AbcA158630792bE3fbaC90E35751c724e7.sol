contract main {




// =====================  Runtime code  =====================


address ensAddress;
address facAddress;

function ens() {
    return ensAddress
}

function fac() {
    return facAddress
}

function _fallback() payable {
    revert
}

function latestVersionAppBase(bytes32 arg1) {
    require ext_code.size(ensAddress)
    call ensAddress.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0xc36af46000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 160
    require mem[224] <= 4294967296
    require mem[224] + 32 <= return_data.size
    require return_data.size >= mem[mem[224] + 96] + mem[224] + 32 and mem[mem[224] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[204 len 20]
    return memory
      from ceil32(return_data.size) + 96
       len 32
}

function newBareInstance() {
    require ext_code.size(facAddress)
    call facAddress.'!htD' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xde287359 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8ea8dc9d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xbe038478 with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0]), ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8ea8dc9d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).grantPermission(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x9d0effdb with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xafd925df with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3d6ab68f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).grantPermission(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x9d0effdb with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xafd925df with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployInstance(address(ext_call.return_data[0]));
    return address(ext_call.return_data[0]), 0
}

function newInstance(bytes32 arg1, bytes32[] arg2, address arg3, bytes arg4) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg4.length
    mem[(32 * arg2.length) + 160 len arg4.length] = arg4[all]
    require ext_code.size(facAddress)
    call facAddress.'!htD' with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xde287359 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8ea8dc9d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + ceil32(arg4.length) + 196] = address(ext_call.return_data[0])
    mem[(32 * arg2.length) + ceil32(arg4.length) + 228] = ext_call.return_data[0]
    mem[(32 * arg2.length) + ceil32(arg4.length) + 260] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xbe038478 with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0]), ext_call.return_data[0], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not arg1:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x8ea8dc9d with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).grantPermission(address arg1, address arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9d0effdb with:
             gas gas_remaining wei
            args this.address, address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xafd925df with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x3d6ab68f with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).grantPermission(address arg1, address arg2, bytes32 arg3) with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x9d0effdb with:
             gas gas_remaining wei
            args this.address, address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0xafd925df with:
             gas gas_remaining wei
            args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit DeployInstance(address(ext_call.return_data[0]));
        return address(ext_call.return_data[0]), 0
    require ext_code.size(ensAddress)
    call ensAddress.resolver(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + ceil32(arg4.length) + 164] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).addr(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[(32 * arg2.length) + ceil32(arg4.length) + 160] = 0xc36af46000000000000000000000000000000000000000000000000000000000
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getLatest() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * arg2.length) + ceil32(arg4.length) + 160 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 160
    require return_data.size >= 160
    require uint32(this.address), mem[(32 * arg2.length) + ceil32(arg4.length) + 292 len 28] <= 4294967296
    require uint32(this.address), mem[(32 * arg2.length) + ceil32(arg4.length) + 292 len 28] + 32 <= return_data.size
    require return_data.size >= mem[(32 * arg2.length) + ceil32(arg4.length) + uint32(this.address), mem[(32 * arg2.length) + ceil32(arg4.length) + 292 len 28] + 160] + uint32(this.address), mem[(32 * arg2.length) + ceil32(arg4.length) + 292 len 28] + 32 and mem[(32 * arg2.length) + ceil32(arg4.length) + uint32(this.address), mem[(32 * arg2.length) + ceil32(arg4.length) + 292 len 28] + 160] <= 4294967296
    mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 160] = 0x397edd4100000000000000000000000000000000000000000000000000000000
    mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324 len ceil32(arg4.length)] = arg4[all], mem[(32 * arg2.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]
    if not arg4.length % 32:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x397edd41 with:
             gas gas_remaining wei
            args arg1, Mask(160, 32, this.address) << 64, 128, 0, arg4.length, Mask(8 * arg4.length, -(8 * arg4.length) + 256, arg4[all], mem[(32 * arg2.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]) << (8 * arg4.length) - 256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _206 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 160] = 0xbe03847800000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 164] = arg3
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 196] = address(ext_call.return_data[0])
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 228] = _206
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = msg.sender
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xbe038478 with:
                 gas gas_remaining wei
                args address(arg3), address(ext_call.return_data[0]), _206, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    else:
        mem[floor32(arg4.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 324] = mem[floor32(arg4.length) + (32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + -(arg4.length % 32) + 356 len arg4.length % 32]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).0x397edd41 with:
             gas gas_remaining wei
            args arg1, Mask(160, 32, this.address) << 64, 128, 0, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[(32 * arg2.length) + arg4.length + 160 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(32 * arg2.length) + (2 * ceil32(arg4.length)) + ceil32(return_data.size) + 324 len floor32(arg4.length) + -ceil32(arg4.length) + 32]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _209 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 160] = 0xbe03847800000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 164] = arg3
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 196] = address(ext_call.return_data[0])
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 228] = _209
            mem[(32 * arg2.length) + ceil32(arg4.length) + ceil32(return_data.size) + 260] = msg.sender
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).0xbe038478 with:
                 gas gas_remaining wei
                args address(arg3), address(ext_call.return_data[0]), _209, msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            continue 
    emit InstalledApp(address(ext_call.return_data[0]), arg1);
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x8ea8dc9d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).grantPermission(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x9d0effdb with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xafd925df with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x3d6ab68f with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).grantPermission(address arg1, address arg2, bytes32 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x9d0effdb with:
         gas gas_remaining wei
        args this.address, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0xafd925df with:
         gas gas_remaining wei
        args msg.sender, address(ext_call.return_data[0]), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployInstance(address(ext_call.return_data[0]));
    return address(ext_call.return_data[0]), address(ext_call.return_data[0])
}



}
