contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor1;
array of address sub_ce23f3ce;
uint8 stor3;
address sub_ca759386Address; offset 8
address sub_fb82126eAddress;
address sub_ffb330c7Address;
address sub_c1d3eb46Address;
address sub_f2bde683Address;
address sub_16e6ee47Address;
uint256 sub_20077d4d;
uint256 sub_3aa47796;
uint256 sub_ce40765e;
uint256 sub_729d71dc;
address stor13;
mapping of struct stor14;

function sub_16e6ee47(?) {
    return sub_16e6ee47Address
}

function sub_20077d4d(?) {
    return sub_20077d4d
}

function sub_3aa47796(?) {
    return sub_3aa47796
}

function getNumControllers() {
    return sub_ce23f3ce.length
}

function sub_729d71dc(?) {
    return sub_729d71dc
}

function owner() {
    return owner
}

function sub_c1d3eb46(?) {
    return sub_c1d3eb46Address
}

function sub_ca759386(?) {
    return sub_ca759386Address
}

function sub_ce23f3ce(?) {
    require arg1 < sub_ce23f3ce.length
    return address(sub_ce23f3ce[arg1])
}

function sub_ce40765e(?) {
    return sub_ce40765e
}

function sub_f2bde683(?) {
    return sub_f2bde683Address
}

function sub_fb82126e(?) {
    return sub_fb82126eAddress
}

function sub_ffb330c7(?) {
    return sub_ffb330c7Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_8547a566(?) {
    require msg.sender == owner
    sub_729d71dc = arg1
}

function sub_545b1e98(?) {
    if bool(stor1[msg.sender]) == 1:
        return True
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_c7371f64(?) {
    require msg.sender == owner
    if not stor3:
        revert with 0, 'Contract not enabled'
    stor13 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require msg.sender == owner
    sub_ce40765e = arg1
    sub_20077d4d = arg2
    sub_3aa47796 = arg3
}

function sub_801bfb73(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_c1d3eb46Address = arg1
    sub_ffb330c7Address = arg1
}

function sub_ee48660e(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_16e6ee47Address = arg1
    sub_f2bde683Address = arg1
}

function setBankContract(address arg1) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    sub_fb82126eAddress = arg1
    sub_ca759386Address = arg1
}

function sub_37339931(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_be580955(?) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    idx = 0
    while idx < sub_ce23f3ce.length:
        mem[0] = address(sub_ce23f3ce[idx])
        mem[32] = 1
        stor1[address(stor2[idx])] = 0
        idx = idx + 1
        continue 
    sub_ce23f3ce.length = 0
    idx = 0
    while sub_ce23f3ce.length > idx:
        uint256(sub_ce23f3ce[idx]) = 0
        idx = idx + 1
        continue 
}

function setEnabled(bool arg1, bool arg2) {
    require msg.sender == owner
    if arg2:
        if bool(stor1[msg.sender]) != 1:
            if owner != msg.sender:
                revert with 0, 'User doesn't have control'
        if not stor3:
            revert with 0, 'User doesn't have control'
        idx = 0
        while idx < sub_ce23f3ce.length:
            mem[0] = address(sub_ce23f3ce[idx])
            mem[32] = 1
            stor1[address(stor2[idx])] = 0
            idx = idx + 1
            continue 
        sub_ce23f3ce.length = 0
        idx = 0
        while sub_ce23f3ce.length > idx:
            uint256(sub_ce23f3ce[idx]) = 0
            idx = idx + 1
            continue 
    stor3 = uint8(arg1)
}

function sub_f3e1b8c2(?) payable {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    if not arg1:
        revert with 0, 'Can't send to null address'
    if msg.value * sub_ce40765e / 100000 > msg.value:
        revert with 0, 'sub'
    require ext_code.size(sub_ca759386Address)
    call sub_ca759386Address.depositFunds(address arg1) with:
       value msg.value * sub_ce40765e / 100000 wei
         gas gas_remaining wei
        args stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ca759386Address)
    call sub_ca759386Address.depositFunds(address arg1) with:
       value msg.value - (msg.value * sub_ce40765e / 100000) wei
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setController(address arg1, bool arg2) {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    stor1[address(arg1)] = uint8(arg2)
    if not arg2:
        idx = 0
        while uint32(idx) < sub_ce23f3ce.length:
            mem[0] = 2
            if address(sub_ce23f3ce[uint32(idx)]) != arg1:
                idx = idx + 1
                continue 
            require sub_ce23f3ce.length - 1 < sub_ce23f3ce.length
            require uint32(idx) < sub_ce23f3ce.length
            address(sub_ce23f3ce[uint32(idx)]) = address(sub_ce23f3ce[sub_ce23f3ce.length])
            require sub_ce23f3ce.length - 1 < sub_ce23f3ce.length
            address(sub_ce23f3ce[sub_ce23f3ce.length]) = 0
            sub_ce23f3ce.length--
            if sub_ce23f3ce.length > sub_ce23f3ce.length - 1:
                idx = sub_ce23f3ce.length + sha3(2) - 1
                while sha3(2) + sub_ce23f3ce.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
    else:
        sub_ce23f3ce.length++
        address(sub_ce23f3ce[sub_ce23f3ce.length]) = arg1
}

function sub_5f0daa86(?) payable {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    if arg2 > msg.value:
        revert with 0, 'Not enough ether'
    require ext_code.size(sub_ffb330c7Address)
    call sub_ffb330c7Address.0x6352211e with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] <= 0:
        revert with 0, 'No island owner'
    if arg2 / 2 > msg.value:
        revert with 0, 'sub'
    require ext_code.size(sub_ca759386Address)
    call sub_ca759386Address.depositFunds(address arg1) with:
       value arg2 / 2 wei
         gas gas_remaining wei
        args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(sub_ca759386Address)
    call sub_ca759386Address.depositFunds(address arg1) with:
       value msg.value - (arg2 / 2) wei
         gas gas_remaining wei
        args stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f4cd0c53(?) payable {
    if bool(stor1[msg.sender]) != 1:
        if owner != msg.sender:
            revert with 0, 'User doesn't have control'
    if not stor3:
        revert with 0, 'User doesn't have control'
    if arg2 > msg.value:
        revert with 0, 'Not enough ether'
    require ext_code.size(sub_f2bde683Address)
    call sub_f2bde683Address.0xaf15707a with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg3:
        require ext_code.size(sub_ca759386Address)
        call sub_ca759386Address.0x79d77110 with:
           value msg.value * sub_3aa47796 / 100000 wei
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value * sub_3aa47796 / 100000 > msg.value:
            revert with 0, 'sub'
        require ext_code.size(sub_ca759386Address)
        call sub_ca759386Address.depositFunds(address arg1) with:
           value msg.value - (msg.value * sub_3aa47796 / 100000) wei
             gas gas_remaining wei
            args stor13
    else:
        require ext_code.size(sub_f2bde683Address)
        call sub_f2bde683Address.0xfd337a5d with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_ffb330c7Address)
        call sub_ffb330c7Address.0x6352211e with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(sub_ca759386Address)
        call sub_ca759386Address.depositFunds(address arg1) with:
           value msg.value * sub_20077d4d / 100000 wei
             gas gas_remaining wei
            args address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value * sub_20077d4d / 100000 > msg.value:
            revert with 0, 'sub'
        require ext_code.size(sub_ca759386Address)
        call sub_ca759386Address.0x79d77110 with:
           value msg.value * sub_3aa47796 / 100000 wei
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if msg.value * sub_3aa47796 / 100000 > msg.value - (msg.value * sub_20077d4d / 100000):
            revert with 0, 'sub'
        require ext_code.size(sub_ca759386Address)
        call sub_ca759386Address.depositFunds(address arg1) with:
           value msg.value - (msg.value * sub_20077d4d / 100000) - (msg.value * sub_3aa47796 / 100000) wei
             gas gas_remaining wei
            args stor13
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_72d51ad0(?) {
    require ext_code.size(sub_f2bde683Address)
    call sub_f2bde683Address.0xff156e79 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[256] = ext_call.return_data[0]
    if 0 >= ext_call.return_data[0]:
        revert with 0, 'Invalid continentId'
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    u = 0
    v = stor14[arg1].field_768
    while uint8(idx) < 32:
        if not mem[287 len 1]:
            return u << 240, Mask(16, 32, u) << 208, v
        mem[420] = mem[287 len 1]
        require ext_code.size(sub_ffb330c7Address)
        call sub_ffb330c7Address.0x4f558e79 with:
             gas gas_remaining wei
            args mem[287 len 1]
        mem[416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(idx) < 16:
            if not ext_call.return_data[0]:
                mem[384] = 0
                mem[256] = mem[256 len 31]
                if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                    if uint8(idx):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                    if not s:
                        if uint8(idx):
                            s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            idx = idx + 1
                            s = not 1
                            t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                            u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                            v = v
                            continue 
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = not 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx) != 31:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if not s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                v = v
                continue 
            mem[420] = mem[287 len 1]
            require ext_code.size(sub_ffb330c7Address)
            call sub_ffb330c7Address.0x6352211e with:
                 gas gas_remaining wei
                args mem[287 len 1]
            mem[416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != arg2:
                mem[384] = 0
                mem[256] = mem[256 len 31]
                if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                    if uint8(idx):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                    if not s:
                        if uint8(idx):
                            s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            idx = idx + 1
                            s = not 1
                            t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                            u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                            v = v
                            continue 
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = not 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx) != 31:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if not s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                v = v
                continue 
            mem[384] = 1
            mem[256] = mem[256 len 31]
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                if not s:
                    if uint8(idx):
                        if bool(v / 2^uint8(idx)):
                            s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            idx = idx + 1
                            s = 1 == 1
                            t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                            u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                            v = v
                            continue 
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                        v = uint32(2^uint8(idx)) or v
                        continue 
                    if bool(v / 2^uint8(idx)):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = 1 == 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if s:
                if uint8(idx) != 31:
                    if uint8(idx):
                        if bool(v / 2^uint8(idx)):
                            s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            idx = idx + 1
                            s = 1 == 1
                            t = t
                            u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                            v = v
                            continue 
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = t
                        u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                        v = uint32(2^uint8(idx)) or v
                        continue 
                    if bool(v / 2^uint8(idx)):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = t
                        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = 1 == 1
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if uint8(idx) != 31:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if not s:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if not ext_call.return_data[0]:
            mem[384] = 0
            mem[256] = mem[256 len 31]
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                if uint8(idx):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                if not s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = not 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if s:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = not 1
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if uint8(idx) != 31:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if not s:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if uint8(idx):
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
            v = v
            continue 
        mem[420] = mem[287 len 1]
        require ext_code.size(sub_ffb330c7Address)
        call sub_ffb330c7Address.0x6352211e with:
             gas gas_remaining wei
            args mem[287 len 1]
        mem[416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != arg2:
            mem[384] = 0
            mem[256] = mem[256 len 31]
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                if uint8(idx):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                if not s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = not 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if s:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = not 1
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if uint8(idx) != 31:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if not s:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if uint8(idx):
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
            v = v
            continue 
        mem[384] = 1
        mem[256] = mem[256 len 31]
        if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
            if not s:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = 1 == 1
            t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if s:
            if uint8(idx) != 31:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = 1 == 1
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if uint8(idx) != 31:
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if not s:
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if uint8(idx):
            if bool(v / 2^uint8(idx)):
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if bool(v / 2^uint8(idx)):
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
            v = v
            continue 
        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
        idx = idx + 1
        s = s
        t = t
        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
        v = uint32(2^uint8(idx)) or v
        continue 
    return u << 240, Mask(16, 32, u) << 208, v
}

function sub_9c8848b8(?) {
    if block.timestamp > stor14[arg1].field_512:
        require ext_code.size(sub_ca759386Address)
        call sub_ca759386Address.0x8701fe3d with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor14[arg1].field_0 = ext_call.return_data[0]
        stor14[arg1].field_256 = ext_call.return_data[0]
        stor14[arg1].field_768 = 0
        stor14[arg1].field_512 = block.timestamp + sub_729d71dc
        emit 0xf2a63090: arg1, ext_call.return_data[0], block.timestamp + sub_729d71dc
    if 10^15 >= stor14[arg1].field_0:
        revert with 0, 'Can't claim yet'
    require ext_code.size(sub_f2bde683Address)
    call sub_f2bde683Address.0xff156e79 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    mem[256] = ext_call.return_data[0]
    if 0 >= ext_call.return_data[0]:
        revert with 0, 'Invalid continentId'
    s = 0
    s = 0
    idx = 0
    s = 0
    t = 0
    u = 0
    v = stor14[arg1].field_768
    while uint8(idx) < 32:
        if not mem[287 len 1]:
            stor14[arg1].field_768 = v
            if uint16(u) > Mask(16, 32, u) >> 32:
                revert with 0, 'User has more plots than continent!'
            require Mask(16, 32, u) >> 32
            if stor14[arg1].field_0 * uint32(uint32(1000 * uint16(u)) / Mask(16, 32, u) >> 32) / 1000 <= 0:
                revert with 0, 'Nothing to collect!'
            require ext_code.size(sub_ca759386Address)
            call sub_ca759386Address.0xe2c76d30 with:
                 gas gas_remaining wei
                args arg1, msg.sender, stor14[arg1].field_0 * uint32(uint32(1000 * uint16(u)) / Mask(16, 32, u) >> 32) / 1000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit 0xabfc4525: msg.sender, arg1, stor14[arg1].field_0 * uint32(uint32(1000 * uint16(u)) / Mask(16, 32, u) >> 32) / 1000, stor14[arg1].field_512
        mem[420] = mem[287 len 1]
        require ext_code.size(sub_ffb330c7Address)
        call sub_ffb330c7Address.0x4f558e79 with:
             gas gas_remaining wei
            args mem[287 len 1]
        mem[416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint8(idx) < 16:
            if not ext_call.return_data[0]:
                mem[384] = 0
                mem[256] = mem[256 len 31]
                if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                    if uint8(idx):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                    if not s:
                        if uint8(idx):
                            s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            idx = idx + 1
                            s = not 1
                            t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                            u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                            v = v
                            continue 
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = not 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx) != 31:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if not s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                v = v
                continue 
            mem[420] = mem[287 len 1]
            require ext_code.size(sub_ffb330c7Address)
            call sub_ffb330c7Address.0x6352211e with:
                 gas gas_remaining wei
                args mem[287 len 1]
            mem[416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if address(ext_call.return_data[0]) != msg.sender:
                mem[384] = 0
                mem[256] = mem[256 len 31]
                if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                    if uint8(idx):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                    if not s:
                        if uint8(idx):
                            s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            idx = idx + 1
                            s = not 1
                            t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                            u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                            v = v
                            continue 
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = not 1
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = not 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx) != 31:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if not s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                v = v
                continue 
            mem[384] = 1
            mem[256] = mem[256 len 31]
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                if not s:
                    if uint8(idx):
                        if bool(v / 2^uint8(idx)):
                            s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            idx = idx + 1
                            s = 1 == 1
                            t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                            u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                            v = v
                            continue 
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                        v = uint32(2^uint8(idx)) or v
                        continue 
                    if bool(v / 2^uint8(idx)):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = 1 == 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if s:
                if uint8(idx) != 31:
                    if uint8(idx):
                        if bool(v / 2^uint8(idx)):
                            s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                            idx = idx + 1
                            s = 1 == 1
                            t = t
                            u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                            v = v
                            continue 
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = t
                        u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                        v = uint32(2^uint8(idx)) or v
                        continue 
                    if bool(v / 2^uint8(idx)):
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = t
                        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = 1 == 1
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if uint8(idx) != 31:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if not s:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                        idx = idx + 1
                        s = s
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
                s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))
            s = uint16(ext_call.return_data[32] / 2^(16 * idx % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16)))) + uint16(ext_call.return_data[32] / 2^(16 * idx % 16)) + (2 * uint16(ext_call.return_data[32] / 2^(16 * idx % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if not ext_call.return_data[0]:
            mem[384] = 0
            mem[256] = mem[256 len 31]
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                if uint8(idx):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                if not s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = not 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if s:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = not 1
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if uint8(idx) != 31:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if not s:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if uint8(idx):
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
            v = v
            continue 
        mem[420] = mem[287 len 1]
        require ext_code.size(sub_ffb330c7Address)
        call sub_ffb330c7Address.0x6352211e with:
             gas gas_remaining wei
            args mem[287 len 1]
        mem[416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) != msg.sender:
            mem[384] = 0
            mem[256] = mem[256 len 31]
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
                if uint8(idx):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
                if not s:
                    if uint8(idx):
                        s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        idx = idx + 1
                        s = not 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                        v = v
                        continue 
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = not 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if s:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = not 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = not 1
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if uint8(idx) != 31:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if not s:
                if uint8(idx):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            if uint8(idx):
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
            v = v
            continue 
        mem[384] = 1
        mem[256] = mem[256 len 31]
        if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 <= 0:
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if ext_call.return_data[96] / 2^(4 * idx % 64) % 16 != uint8(t):
            if not s:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = 1 == 1
            t = ext_call.return_data[96] / 2^(4 * idx % 64) % 16
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if s:
            if uint8(idx) != 31:
                if uint8(idx):
                    if bool(v / 2^uint8(idx)):
                        s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                        idx = idx + 1
                        s = 1 == 1
                        t = t
                        u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                        v = v
                        continue 
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                    v = uint32(2^uint8(idx)) or v
                    continue 
                if bool(v / 2^uint8(idx)):
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = 1 == 1
                    t = t
                    u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = 1 == 1
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = 1 == 1
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if uint8(idx) != 31:
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if not s:
            if uint8(idx):
                if bool(v / 2^uint8(idx)):
                    s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                    idx = idx + 1
                    s = s
                    t = t
                    u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                    v = v
                    continue 
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
                v = uint32(2^uint8(idx)) or v
                continue 
            if bool(v / 2^uint8(idx)):
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or uint32(u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or Mask(16, 16, u) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(u) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if uint8(idx):
            if bool(v / 2^uint8(idx)):
                s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
                idx = idx + 1
                s = s
                t = t
                u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
                v = v
                continue 
            s = 2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
            v = uint32(2^uint8(idx)) or v
            continue 
        if bool(v / 2^uint8(idx)):
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
            s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
            idx = idx + 1
            s = s
            t = t
            u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32
            v = v
            continue 
        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))
        s = uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))
        idx = idx + 1
        s = s
        t = t
        u = Mask(208, 48, u) or 0 or Mask(16, 16, u) or 0 or uint16((Mask(16, 32, u) >> 32) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) << 32 or uint16(uint16(uint16(u) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)))) + uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16)) + (2 * uint16(ext_call.return_data[64] / 2^(16 * idx - 16 % 16))))
        v = uint32(2^uint8(idx)) or v
        continue 
    stor14[arg1].field_768 = v
    if uint16(u) > Mask(16, 32, u) >> 32:
        revert with 0, 'User has more plots than continent!'
    require Mask(16, 32, u) >> 32
    if stor14[arg1].field_0 * uint32(uint32(1000 * uint16(u)) / Mask(16, 32, u) >> 32) / 1000 <= 0:
        revert with 0, 'Nothing to collect!'
    require ext_code.size(sub_ca759386Address)
    call sub_ca759386Address.0xe2c76d30 with:
         gas gas_remaining wei
        args arg1, msg.sender, stor14[arg1].field_0 * uint32(uint32(1000 * uint16(u)) / Mask(16, 32, u) >> 32) / 1000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xabfc4525: msg.sender, arg1, stor14[arg1].field_0 * uint32(uint32(1000 * uint16(u)) / Mask(16, 32, u) >> 32) / 1000, stor14[arg1].field_512
}



}
