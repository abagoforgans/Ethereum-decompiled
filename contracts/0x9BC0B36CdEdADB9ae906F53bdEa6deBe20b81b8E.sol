contract main {




// =====================  Runtime code  =====================


const name = 'PixelPropertyToken'

const decimals = 0

const symbol = 'PXL'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address stor3;
mapping of uint8 sub_7dfb86a0;
array of struct propertySalePrice;
array of struct sub_e1c230dd;
array of struct sub_f7850746;
uint8 stor8;
address stor8; offset 8

function totalSupply() {
    return totalSupply
}

function getPropertySalePrice(uint16 arg1) {
    return propertySalePrice[arg1 << 240].field_1792
}

function getPropertyPrivateModeLastUpdateEarnUntil(uint16 arg1) {
    return bool(propertySalePrice[arg1 << 240].field_8), 
           propertySalePrice[arg1 << 240].field_2048,
           propertySalePrice[arg1 << 240].field_2560
}

function getPropertyLastUpdate(uint16 arg1) {
    return propertySalePrice[arg1 << 240].field_2048
}

function getPropertyOwner(uint16 arg1) {
    return propertySalePrice[arg1 << 240].field_16
}

function getPropertyPrivateMode(uint16 arg1) {
    return bool(propertySalePrice[arg1 << 240].field_8)
}

function getPropertyLastUpdaterBecomePublic(uint16 arg1) {
    return propertySalePrice[arg1 << 240].field_256, propertySalePrice[arg1 << 240].field_2304
}

function sub_69a4c4e7(?) {
    return propertySalePrice[arg1].field_0, 
           bool(propertySalePrice[arg1].field_8),
           propertySalePrice[arg1].field_0,
           propertySalePrice[arg1].field_256,
           propertySalePrice[arg1].field_1792,
           propertySalePrice[arg1].field_2048,
           propertySalePrice[arg1].field_2304,
           propertySalePrice[arg1].field_2560
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7dfb86a0(?) {
    return sub_7dfb86a0[arg1]
}

function getPropertyFlag(uint16 arg1) {
    return propertySalePrice[arg1 << 240].field_0
}

function getPropertyEarnUntil(uint16 arg1) {
    return propertySalePrice[arg1 << 240].field_2560
}

function getPropertyPrivateModeBecomePublic(uint16 arg1) {
    return bool(propertySalePrice[arg1 << 240].field_8), propertySalePrice[arg1 << 240].field_2304
}

function getPropertyLastUpdater(uint16 arg1) {
    return propertySalePrice[arg1 << 240].field_256
}

function getRegulatorLevel(address arg1) {
    return sub_7dfb86a0[address(arg1)]
}

function getPropertyOwnerSalePrice(uint16 arg1) {
    return propertySalePrice[arg1 << 240].field_0, propertySalePrice[arg1 << 240].field_1792
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function sub_e1c230dd(?) {
    require arg2 < 2
    return sub_e1c230dd[arg1][arg2].field_0
}

function getOwnerLink(address arg1) {
    idx = 192
    s = 1
    while 224 > idx + 32:
        mem[idx + 32] = sub_e1c230dd[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_e1c230dd[address(arg1)].field_0, sub_e1c230dd[address(arg1)].field_256
}

function sub_f7850746(?) {
    require arg2 < 2
    return sub_f7850746[arg1][arg2].field_0
}

function getPropertyBecomePublic(uint16 arg1) {
    return propertySalePrice[arg1 << 240].field_2304
}

function _fallback() payable {
    revert
}

function endMigrationPeriod() {
    require 7 <= sub_7dfb86a0[msg.sender]
    require sub_7dfb86a0[msg.sender] <= 7
    uint8(stor8.field_0) = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setPropertyEarnUntil(uint16 arg1, uint256 arg2) {
    require 9 == sub_7dfb86a0[msg.sender]
    propertySalePrice[arg1 << 240].field_2560 = arg2
}

function setPropertyLastUpdate(uint16 arg1, uint256 arg2) {
    require 9 == sub_7dfb86a0[msg.sender]
    propertySalePrice[arg1 << 240].field_2048 = arg2
}

function setPropertyBecomePublic(uint16 arg1, uint256 arg2) {
    require 9 == sub_7dfb86a0[msg.sender]
    propertySalePrice[arg1 << 240].field_2304 = arg2
}

function rewardPXL(address arg1, uint256 arg2) {
    require 9 == sub_7dfb86a0[msg.sender]
    require arg1
    balanceOf[address(arg1)] += arg2
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
}

function setPropertyOwner(uint16 arg1, address arg2) {
    require 9 == sub_7dfb86a0[msg.sender]
    if propertySalePrice[arg1 << 240].field_16 != arg2:
        propertySalePrice[arg1 << 240].field_16 = arg2
}

function setPropertySalePrice(uint16 arg1, uint256 arg2) {
    require 9 == sub_7dfb86a0[msg.sender]
    if arg2 != propertySalePrice[arg1 << 240].field_1792:
        propertySalePrice[arg1 << 240].field_1792 = arg2
}

function setPropertyLastUpdater(uint16 arg1, address arg2) {
    require 9 == sub_7dfb86a0[msg.sender]
    if propertySalePrice[arg1 << 240].field_256 != arg2:
        propertySalePrice[arg1 << 240].field_256 = arg2
}

function setPropertyPrivateMode(uint16 arg1, bool arg2) {
    require 9 == sub_7dfb86a0[msg.sender]
    if arg2 != bool(propertySalePrice[arg1 << 240].field_8):
        propertySalePrice[arg1 << 240].field_8 = Mask(248, 0, arg2)
}

function setPropertyBecomePublicEarnUntil(uint16 arg1, uint256 arg2, uint256 arg3) {
    require 9 == sub_7dfb86a0[msg.sender]
    propertySalePrice[arg1 << 240].field_2304 = arg2
    propertySalePrice[arg1 << 240].field_2560 = arg3
}

function burnPXL(address arg1, uint256 arg2) {
    require 9 == sub_7dfb86a0[msg.sender]
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, 0);
}

function setPixelPropertyContract(address arg1) {
    require 6 <= sub_7dfb86a0[msg.sender]
    require sub_7dfb86a0[msg.sender] <= 7
    require arg1
    if stor3:
        sub_7dfb86a0[stor3] = 0
    stor3 = arg1
    sub_7dfb86a0[address(arg1)] = 9
}

function transfer(address arg1, uint256 arg2) {
    if arg2 > balanceOf[msg.sender]:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function setPropertyDAppContract(address arg1, bool arg2) {
    require 5 <= sub_7dfb86a0[msg.sender]
    require sub_7dfb86a0[msg.sender] <= 7
    require arg1
    if arg2:
        sub_7dfb86a0[address(arg1)] = 8
    else:
        sub_7dfb86a0[address(arg1)] = 0
}

function getOwnerHoverText(address arg1) {
    idx = 160
    s = 0
    while 224 > idx + 32:
        mem[idx + 32] = sub_f7850746[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_f7850746[address(arg1)].field_0, mem[192]
}

function setPropertyLastUpdaterLastUpdate(uint16 arg1, address arg2, uint256 arg3) {
    require 9 == sub_7dfb86a0[msg.sender]
    if propertySalePrice[arg1 << 240].field_256 != arg2:
        propertySalePrice[arg1 << 240].field_256 = arg2
    propertySalePrice[arg1 << 240].field_2048 = arg3
}

function setPropertyRowColor(uint16 arg1, uint8 arg2, uint256 arg3) {
    if sub_7dfb86a0[msg.sender] != 8:
        require 9 == sub_7dfb86a0[msg.sender]
    require arg2 < 5
    if propertySalePrice[arg1 << 240][arg2].field_512 != arg3:
        require arg2 < 5
        propertySalePrice[arg1 << 240][arg2].field_512 = arg3
}

function setRegulatorAccessLevel(address arg1, uint8 arg2) {
    require 3 <= sub_7dfb86a0[msg.sender]
    require sub_7dfb86a0[msg.sender] <= 7
    if arg1 != msg.sender:
        require sub_7dfb86a0[msg.sender] > sub_7dfb86a0[address(arg1)]
    require sub_7dfb86a0[msg.sender] > arg2
    sub_7dfb86a0[address(arg1)] = arg2
}

function setPropertyOwnerSalePrice(uint16 arg1, address arg2, uint256 arg3) {
    require 9 == sub_7dfb86a0[msg.sender]
    if propertySalePrice[arg1 << 240].field_16 != arg2:
        propertySalePrice[arg1 << 240].field_16 = arg2
    if arg3 != propertySalePrice[arg1 << 240].field_1792:
        propertySalePrice[arg1 << 240].field_1792 = arg3
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 > allowance[address(arg1)][msg.sender]:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function burnPXLRewardPXL(address arg1, uint256 arg2, address arg3, uint256 arg4) {
    require 9 == sub_7dfb86a0[msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    if arg2 > 0:
        balanceOf[address(arg1)] -= arg2
        totalSupply -= arg2
        emit Transfer(arg2, arg1, 0);
    if arg3:
        balanceOf[address(arg3)] += arg4
        totalSupply += arg4
        emit Transfer(arg4, 0, arg3);
}

function setPropertyPrivateModeEarnUntilLastUpdateBecomePublic(uint16 arg1, bool arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require 9 == sub_7dfb86a0[msg.sender]
    if arg2 != bool(propertySalePrice[arg1 << 240].field_8):
        propertySalePrice[arg1 << 240].field_8 = Mask(248, 0, arg2)
    propertySalePrice[arg1 << 240].field_2560 = arg3
    propertySalePrice[arg1 << 240].field_2048 = arg4
    propertySalePrice[arg1 << 240].field_2304 = arg5
}

function setOwnerLink(address arg1, uint256[2] arg2) {
    mem[96 len 64] = call.data[36 len 64]
    if sub_7dfb86a0[msg.sender] != 8:
        require 9 == sub_7dfb86a0[msg.sender]
    require arg1
    s = 0
    idx = 96
    while 160 > idx:
        sub_e1c230dd[address(arg1)][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while 2 > idx:
        sub_e1c230dd[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function setOwnerHoverText(address arg1, uint256[2] arg2) {
    mem[96 len 64] = call.data[36 len 64]
    if sub_7dfb86a0[msg.sender] != 8:
        require 9 == sub_7dfb86a0[msg.sender]
    require arg1
    s = 0
    idx = 96
    while 160 > idx:
        sub_f7850746[address(arg1)][s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while 2 > idx:
        sub_f7850746[address(arg1)][idx].field_0 = 0
        idx = idx + 1
        continue 
}

function setPropertyColors(uint16 arg1, uint256[5] arg2) {
    mem[96 len 160] = call.data[36 len 160]
    if sub_7dfb86a0[msg.sender] != 8:
        require 9 == sub_7dfb86a0[msg.sender]
    idx = 0
    while idx < 5:
        mem[0] = arg1
        mem[32] = 5
        if propertySalePrice[arg1 << 240][idx].field_512 != mem[(32 * idx) + 96]:
            require idx < 5
            mem[0] = arg1
            mem[32] = 5
            propertySalePrice[arg1 << 240][idx].field_512 = mem[(32 * idx) + 96]
        idx = idx + 1
        continue 
}

function burnPXLRewardPXLx2(address arg1, uint256 arg2, address arg3, uint256 arg4, address arg5, uint256 arg6) {
    require 9 == sub_7dfb86a0[msg.sender]
    require arg2 <= balanceOf[address(arg1)]
    if arg2 > 0:
        balanceOf[address(arg1)] -= arg2
        totalSupply -= arg2
        emit Transfer(arg2, arg1, 0);
    if arg3:
        balanceOf[address(arg3)] += arg4
        totalSupply += arg4
        emit Transfer(arg4, 0, arg3);
    if arg5:
        balanceOf[address(arg5)] += arg6
        totalSupply += arg6
        emit Transfer(arg6, 0, arg5);
}

function setPropertyOwnerSalePricePrivateModeFlag(uint16 arg1, address arg2, uint256 arg3, bool arg4, uint8 arg5) {
    require 9 == sub_7dfb86a0[msg.sender]
    if propertySalePrice[arg1 << 240].field_16 != arg2:
        propertySalePrice[arg1 << 240].field_16 = arg2
    if arg3 != propertySalePrice[arg1 << 240].field_1792:
        propertySalePrice[arg1 << 240].field_1792 = arg3
    if arg4 != bool(propertySalePrice[arg1 << 240].field_8):
        propertySalePrice[arg1 << 240].field_8 = Mask(248, 0, arg4)
    if propertySalePrice[arg1 << 240].field_0 != arg5:
        propertySalePrice[arg1 << 240].field_0 = arg5
}

function setPropertyFlag(uint16 arg1, uint8 arg2) {
    if 1 == arg2:
        require sub_7dfb86a0[msg.sender] >= 1
    else:
        require sub_7dfb86a0[msg.sender] >= 2
    propertySalePrice[arg1 << 240].field_0 = arg2
    if 2 == arg2:
        require propertySalePrice[arg1 << 240].field_8
        mem[96] = 0
        mem[128] = 0
        mem[160] = 0
        mem[192] = 0
        mem[224] = 0
        s = 2
        idx = 96
        while 256 > idx:
            propertySalePrice[arg1 << 240][s].field_0 = mem[idx + 31 len 1]
            propertySalePrice[arg1 << 240][s].field_8 = 0
            s = s + 1
            idx = idx + 32
            continue 
        idx = 7
        while 7 > idx:
            propertySalePrice[arg1 << 240][idx].field_0 = 0
            idx = idx + 1
            continue 
}

function migratePropertyOwnership(uint16[10] arg1) {
    mem[96 len 320] = call.data[4 len 320]
    require 7 <= sub_7dfb86a0[msg.sender]
    require sub_7dfb86a0[msg.sender] <= 7
    require uint8(stor8.field_0)
    idx = 0
    while uint16(idx) < 10:
        if mem[(32 * uint16(idx)) + 126 len 2] < 10000:
            require uint16(idx) < 10
            mem[0] = mem[(32 * uint16(idx)) + 126 len 2]
            mem[32] = 5
            if not propertySalePrice[mem[(32 * uint16(idx)) + 126 len 2]].field_16:
                require uint16(idx) < 10
                _17 = mem[(32 * uint16(idx)) + 96]
                mem[420] = mem[(32 * uint16(idx)) + 126 len 2]
                require ext_code.size(address(stor8.field_8))
                call address(stor8.field_8).0x2ccaa3e9 with:
                     gas gas_remaining wei
                    args uint16(_17)
                mem[416] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require uint16(idx) < 10
                mem[0] = mem[(32 * uint16(idx)) + 126 len 2]
                mem[32] = 5
                propertySalePrice[mem[(32 * uint16(idx)) + 126 len 2]].field_16 = address(ext_call.return_data[0])
        idx = idx + 1
        continue 
}

function migrateUsers(address[10] arg1) {
    mem[96 len 320] = call.data[4 len 320]
    require 7 <= sub_7dfb86a0[msg.sender]
    require sub_7dfb86a0[msg.sender] <= 7
    require uint8(stor8.field_0)
    s = 0
    idx = 0
    while uint16(idx) < 10:
        mem[0] = mem[(32 * uint16(idx)) + 108 len 20]
        mem[32] = 1
        if balanceOf[mem[(32 * uint16(idx)) + 108 len 20]] != 0:
            s = s
            idx = idx + 1
            continue 
        require uint16(idx) < 10
        _20 = mem[(32 * uint16(idx)) + 96]
        mem[420] = mem[(32 * uint16(idx)) + 108 len 20]
        require ext_code.size(address(stor8.field_8))
        call address(stor8.field_8).0x70a08231 with:
             gas gas_remaining wei
            args address(_20)
        mem[416] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 0:
            require uint16(idx) < 10
            mem[32] = 1
            balanceOf[mem[(32 * uint16(idx)) + 108 len 20]] = ext_call.return_data[0]
            totalSupply += ext_call.return_data[0]
            _27 = mem[(32 * uint16(idx)) + 96]
            mem[0] = mem[(32 * uint16(idx)) + 108 len 20]
            mem[416] = ext_call.return_data[0]
            emit Transfer(ext_call.return_data[0], 0, address(_27));
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
}

function getPropertyColors(uint16 arg1) {
    if propertySalePrice[arg1 << 240].field_512:
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return propertySalePrice[arg1 << 240].field_512, mem[288 len 128]
    if propertySalePrice[arg1 << 240].field_768:
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return propertySalePrice[arg1 << 240].field_512, mem[288 len 128]
    if propertySalePrice[arg1 << 240].field_1024:
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return propertySalePrice[arg1 << 240].field_512, mem[288 len 128]
    if propertySalePrice[arg1 << 240].field_1280:
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return propertySalePrice[arg1 << 240].field_512, mem[288 len 128]
    if propertySalePrice[arg1 << 240].field_1536:
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return propertySalePrice[arg1 << 240].field_512, mem[288 len 128]
    require ext_code.size(address(stor8.field_8))
    call address(stor8.field_8).0xe86994ea with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    return ext_call.return_data[0], ext_call.return_data[32 len 128]
}

function getPropertyData(uint16 arg1, uint256 arg2, uint256 arg3) {
    idx = 960
    s = 2
    while 1120 > idx + 32:
        mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if not propertySalePrice[arg1 << 240].field_8:
        if propertySalePrice[arg1 << 240].field_16:
            return propertySalePrice[arg1 << 240].field_0, 
                   0,
                   propertySalePrice[arg1 << 240].field_1792,
                   propertySalePrice[arg1 << 240].field_2048,
                   bool(propertySalePrice[arg1 << 240].field_8),
                   propertySalePrice[arg1 << 240].field_2304,
                   propertySalePrice[arg1 << 240].field_0
        return 0, 
               arg2,
               arg3,
               propertySalePrice[arg1 << 240].field_2048,
               bool(propertySalePrice[arg1 << 240].field_8),
               propertySalePrice[arg1 << 240].field_2304,
               propertySalePrice[arg1 << 240].field_0
    if propertySalePrice[arg1 << 240].field_2304 > block.timestamp:
        if propertySalePrice[arg1 << 240].field_16:
            return propertySalePrice[arg1 << 240].field_0, 
                   0,
                   propertySalePrice[arg1 << 240].field_1792,
                   propertySalePrice[arg1 << 240].field_2048,
                   bool(propertySalePrice[arg1 << 240].field_8),
                   propertySalePrice[arg1 << 240].field_2304,
                   propertySalePrice[arg1 << 240].field_0
        return 0, 
               arg2,
               arg3,
               propertySalePrice[arg1 << 240].field_2048,
               bool(propertySalePrice[arg1 << 240].field_8),
               propertySalePrice[arg1 << 240].field_2304,
               propertySalePrice[arg1 << 240].field_0
    if propertySalePrice[arg1 << 240].field_16:
        return propertySalePrice[arg1 << 240].field_0, 
               0,
               propertySalePrice[arg1 << 240].field_1792,
               propertySalePrice[arg1 << 240].field_2048,
               0,
               propertySalePrice[arg1 << 240].field_2304,
               propertySalePrice[arg1 << 240].field_0
    return 0, 
           arg2,
           arg3,
           propertySalePrice[arg1 << 240].field_2048,
           0,
           propertySalePrice[arg1 << 240].field_2304,
           propertySalePrice[arg1 << 240].field_0
}

function getPropertyColorsOfRow(uint16 arg1, uint8 arg2) {
    require arg2 <= 9
    if propertySalePrice[arg1 << 240].field_512:
        mem[256] = propertySalePrice[arg1 << 240].field_512
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require arg2 < 5
        mem[416] = mem[(32 * uint8(arg2)) + 256]
        return memory
          from 416
           len 32
    if propertySalePrice[arg1 << 240].field_768:
        mem[256] = propertySalePrice[arg1 << 240].field_512
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require arg2 < 5
        mem[416] = mem[(32 * uint8(arg2)) + 256]
        return memory
          from 416
           len 32
    if propertySalePrice[arg1 << 240].field_1024:
        mem[256] = propertySalePrice[arg1 << 240].field_512
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require arg2 < 5
        mem[416] = mem[(32 * uint8(arg2)) + 256]
        return memory
          from 416
           len 32
    if propertySalePrice[arg1 << 240].field_1280:
        mem[256] = propertySalePrice[arg1 << 240].field_512
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require arg2 < 5
        mem[416] = mem[(32 * uint8(arg2)) + 256]
        return memory
          from 416
           len 32
    if propertySalePrice[arg1 << 240].field_1536:
        mem[256] = propertySalePrice[arg1 << 240].field_512
        idx = 256
        s = 2
        while 416 > idx + 32:
            mem[idx + 32] = propertySalePrice[arg1 << 240][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        require arg2 < 5
        mem[416] = mem[(32 * uint8(arg2)) + 256]
        return memory
          from 416
           len 32
    require ext_code.size(address(stor8.field_8))
    call address(stor8.field_8).0xe86994ea with:
         gas gas_remaining wei
        args arg1
    mem[256 len 160] = ext_call.return_data[0 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require arg2 < 5
    mem[ceil32(return_data.size) + 256] = mem[(32 * uint8(arg2)) + 256]
    return memory
      from ceil32(return_data.size) + 256
       len 32
}



}
