contract main {




// =====================  Runtime code  =====================


address owner;
address auditAddress;
address auditDataAddress;
uint256 stor2;

function audit() {
    return auditAddress
}

function auditData() {
    return address(auditDataAddress)
}

function owner() {
    return owner
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
}

function getQueueLength() payable {
    mem[64] = 96
    require not msg.value
    require ext_code.size(auditAddress)
    call auditAddress.0x976e0da9 with:
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
        call auditAddress.0x2c90ccba with:
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
    call auditAddress.0x976e0da9 with:
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
    call auditAddress.0x2c90ccba with:
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
    require ext_code.size(address(auditDataAddress))
    call address(auditDataAddress).getNextWhitelistedNode(address arg1) with:
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
        mem[228] = address(idx)
        require ext_code.size(address(auditDataAddress))
        call address(auditDataAddress).getNextWhitelistedNode(address arg1) with:
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
    require ext_code.size(address(auditDataAddress))
    call address(auditDataAddress).getNextWhitelistedNode(address arg1) with:
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
        mem[228] = address(idx)
        require ext_code.size(address(auditDataAddress))
        call address(auditDataAddress).getNextWhitelistedNode(address arg1) with:
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
    require ext_code.size(address(auditDataAddress))
    call address(auditDataAddress).getNextWhitelistedNode(address arg1) with:
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
        mem[228] = address(idx)
        require ext_code.size(address(auditDataAddress))
        call address(auditDataAddress).getNextWhitelistedNode(address arg1) with:
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
    require ext_code.size(address(auditDataAddress))
    call address(auditDataAddress).getNextWhitelistedNode(address arg1) with:
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
        mem[228] = address(idx)
        require ext_code.size(address(auditDataAddress))
        call address(auditDataAddress).getNextWhitelistedNode(address arg1) with:
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
