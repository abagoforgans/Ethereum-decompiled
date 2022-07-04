contract main {




// =====================  Runtime code  =====================


address owner;
address auditAddress;
address auditDataAddress;
uint256 stor2;
address sub_0c36eb21Address;
uint256 stor3;
address tokenEscrowAddress;
uint256 stor4;

function sub_0c36eb21(?) {
    return address(sub_0c36eb21Address)
}

function audit() {
    return auditAddress
}

function auditData() {
    return address(auditDataAddress)
}

function owner() {
    return owner
}

function tokenEscrow() {
    return address(tokenEscrowAddress)
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setQuantstampAudit(address arg1) {
    require msg.sender == owner
    require arg1
    auditAddress = arg1
    require ext_code.size(arg1)
    call arg1.0x6072ec64 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(auditAddress)
    call auditAddress.0xc36eb21 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(auditAddress)
    call auditAddress.0xaac41ed6 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor4) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor4))
}

function getReportHash(uint256 arg1) {
    mem[96] = 0x4e7f9b1900000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(address(sub_0c36eb21Address))
    call address(sub_0c36eb21Address).0x4e7f9b19 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    _7 = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    mem[ceil32(return_data.size) + 96 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 128 len floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96])]
    mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 96] = mem[ceil32(return_data.size) + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 96] and 256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1 or mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + floor32(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]) + 128] and !(256^(-(mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] % 32) + 32) - 1)
    mem[ceil32(return_data.size) + 96] = sha3(mem[ceil32(return_data.size) + 96 len _7])
    return memory
      from ceil32(return_data.size) + 96
       len 32
}

function getQueueLength() payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(auditAddress)
    call auditAddress.getNextPrice(uint256 arg1) with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x2c90ccba00000000000000000000000000000000000000000000000000000000
    mem[100] = var17003
    mem[132] = 0
    require ext_code.size(auditAddress)
    call auditAddress.mem[var19004 len 4] with:
         gas gas_remaining wei
        args mem[var19004 + 4 len var19005 - 4]
    mem[var19006] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if var20002:
        mem[100] = var23005
        mem[132] = var20002
        require ext_code.size(auditAddress)
        call auditAddress.getNextAuditByPrice(uint256 arg1, uint256 arg2) with:
             gas gas_remaining wei
            args var23005, var20002
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        var20001 = var20001 + 1
        var20002 = ext_call.return_data[0]
        continue 
    require ext_code.size(auditAddress)
    call auditAddress.getNextPrice(uint256 arg1) with:
         gas gas_remaining wei
        args var23005
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return var20001
    mem[100] = ext_call.return_data[0]
    mem[132] = 0
    require ext_code.size(auditAddress)
    call auditAddress.getNextAuditByPrice(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args ext_call.return_data[0], 0
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    var20001 = var20001
    var20002 = ext_call.return_data[0]
    continue 
}

function getMinAuditPriceMax() {
    require ext_code.size(address(tokenEscrowAddress))
    call address(tokenEscrowAddress).0xc65c9d63 with:
         gas gas_remaining wei
        args 0
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    idx = mem[224]
    s = 0
    t = -1
    u = 0
    v = 0
    while address(idx):
        require ext_code.size(address(auditDataAddress))
        call address(auditDataAddress).0x3662d1da with:
             gas gas_remaining wei
            args address(idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == -1:
            mem[228] = address(idx)
            require ext_code.size(address(tokenEscrowAddress))
            call address(tokenEscrowAddress).0xc65c9d63 with:
                 gas gas_remaining wei
                args address(idx)
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = s
            t = t
            u = u
            v = v
            continue 
        require ext_call.return_data[0] + v >= v
        mem[228] = address(idx)
        require ext_code.size(address(tokenEscrowAddress))
        call address(tokenEscrowAddress).0xc65c9d63 with:
             gas gas_remaining wei
            args address(idx)
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= t:
            if ext_call.return_data[0] <= s:
                s = ext_call.return_data[0]
                idx = ext_call.return_data[0]
                s = s
                t = t
                u = u + 1
                v = ext_call.return_data[0] + v
                continue 
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = ext_call.return_data[0]
            t = t
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        if ext_call.return_data[0] <= s:
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = s
            t = ext_call.return_data[0]
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        s = ext_call.return_data[0]
        idx = ext_call.return_data[0]
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        u = u + 1
        v = ext_call.return_data[0] + v
        continue 
    return s
}

function getMinAuditPriceSum() {
    require ext_code.size(address(tokenEscrowAddress))
    call address(tokenEscrowAddress).0xc65c9d63 with:
         gas gas_remaining wei
        args 0
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    idx = mem[224]
    s = 0
    t = -1
    u = 0
    v = 0
    while address(idx):
        require ext_code.size(address(auditDataAddress))
        call address(auditDataAddress).0x3662d1da with:
             gas gas_remaining wei
            args address(idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == -1:
            mem[228] = address(idx)
            require ext_code.size(address(tokenEscrowAddress))
            call address(tokenEscrowAddress).0xc65c9d63 with:
                 gas gas_remaining wei
                args address(idx)
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = s
            t = t
            u = u
            v = v
            continue 
        require ext_call.return_data[0] + v >= v
        mem[228] = address(idx)
        require ext_code.size(address(tokenEscrowAddress))
        call address(tokenEscrowAddress).0xc65c9d63 with:
             gas gas_remaining wei
            args address(idx)
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= t:
            if ext_call.return_data[0] <= s:
                s = ext_call.return_data[0]
                idx = ext_call.return_data[0]
                s = s
                t = t
                u = u + 1
                v = ext_call.return_data[0] + v
                continue 
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = ext_call.return_data[0]
            t = t
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        if ext_call.return_data[0] <= s:
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = s
            t = ext_call.return_data[0]
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        s = ext_call.return_data[0]
        idx = ext_call.return_data[0]
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        u = u + 1
        v = ext_call.return_data[0] + v
        continue 
    return v
}

function getMinAuditPriceCount() {
    require ext_code.size(address(tokenEscrowAddress))
    call address(tokenEscrowAddress).0xc65c9d63 with:
         gas gas_remaining wei
        args 0
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    idx = mem[224]
    s = 0
    t = -1
    u = 0
    v = 0
    while address(idx):
        require ext_code.size(address(auditDataAddress))
        call address(auditDataAddress).0x3662d1da with:
             gas gas_remaining wei
            args address(idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == -1:
            mem[228] = address(idx)
            require ext_code.size(address(tokenEscrowAddress))
            call address(tokenEscrowAddress).0xc65c9d63 with:
                 gas gas_remaining wei
                args address(idx)
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = s
            t = t
            u = u
            v = v
            continue 
        require ext_call.return_data[0] + v >= v
        mem[228] = address(idx)
        require ext_code.size(address(tokenEscrowAddress))
        call address(tokenEscrowAddress).0xc65c9d63 with:
             gas gas_remaining wei
            args address(idx)
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= t:
            if ext_call.return_data[0] <= s:
                s = ext_call.return_data[0]
                idx = ext_call.return_data[0]
                s = s
                t = t
                u = u + 1
                v = ext_call.return_data[0] + v
                continue 
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = ext_call.return_data[0]
            t = t
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        if ext_call.return_data[0] <= s:
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = s
            t = ext_call.return_data[0]
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        s = ext_call.return_data[0]
        idx = ext_call.return_data[0]
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        u = u + 1
        v = ext_call.return_data[0] + v
        continue 
    return u
}

function getMinAuditPriceMin() {
    require ext_code.size(address(tokenEscrowAddress))
    call address(tokenEscrowAddress).0xc65c9d63 with:
         gas gas_remaining wei
        args 0
    mem[224] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    idx = mem[224]
    s = 0
    t = -1
    u = 0
    v = 0
    while address(idx):
        require ext_code.size(address(auditDataAddress))
        call address(auditDataAddress).0x3662d1da with:
             gas gas_remaining wei
            args address(idx)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] == -1:
            mem[228] = address(idx)
            require ext_code.size(address(tokenEscrowAddress))
            call address(tokenEscrowAddress).0xc65c9d63 with:
                 gas gas_remaining wei
                args address(idx)
            mem[224] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = s
            t = t
            u = u
            v = v
            continue 
        require ext_call.return_data[0] + v >= v
        mem[228] = address(idx)
        require ext_code.size(address(tokenEscrowAddress))
        call address(tokenEscrowAddress).0xc65c9d63 with:
             gas gas_remaining wei
            args address(idx)
        mem[224] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] >= t:
            if ext_call.return_data[0] <= s:
                s = ext_call.return_data[0]
                idx = ext_call.return_data[0]
                s = s
                t = t
                u = u + 1
                v = ext_call.return_data[0] + v
                continue 
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = ext_call.return_data[0]
            t = t
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        if ext_call.return_data[0] <= s:
            s = ext_call.return_data[0]
            idx = ext_call.return_data[0]
            s = s
            t = ext_call.return_data[0]
            u = u + 1
            v = ext_call.return_data[0] + v
            continue 
        s = ext_call.return_data[0]
        idx = ext_call.return_data[0]
        s = ext_call.return_data[0]
        t = ext_call.return_data[0]
        u = u + 1
        v = ext_call.return_data[0] + v
        continue 
    if u:
        return t
    return 0
}



}
