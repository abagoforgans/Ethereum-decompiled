contract main {




// =====================  Runtime code  =====================


address stor0;
address sub_c9d05d05Address;
array of struct stor3;
uint32 stor4;
uint32 stor4; offset 32
uint256 currentCap;
uint256 sub_f0df79e8;
uint256 sub_027932f9;
uint8 stor9;
array of struct stor10;
mapping of struct investor;
uint32 stor12;
uint32 stor12; offset 192
address stor12;
address stor12; offset 32
uint8 stor13;
uint32 stor13; offset 8
uint256 stor13; offset 40
array of struct stor14;
address stor16;
mapping of uint8 stor17;
mapping of uint8 stor18;

function sub_027932f9(?) {
    return sub_027932f9
}

function getInvestorLength() {
    return stor10.length
}

function getInvestor(address arg1) {
    return investor[address(arg1)].field_512, 
           investor[address(arg1)].field_768,
           bool(investor[address(arg1)].field_488),
           bool(investor[address(arg1)].field_480),
           investor[address(arg1)].field_256,
           investor[address(arg1)].field_448
}

function sub_c9d05d05(?) {
    return sub_c9d05d05Address
}

function getCurrentCap() {
    return currentCap
}

function sub_f0df79e8(?) {
    return sub_f0df79e8
}

function close() {
    require msg.sender == stor0
    selfdestruct(stor0)
}

function _fallback() payable {
    revert
}

function sub_7ec8773a(?) {
    require msg.sender == stor0
    sub_c9d05d05Address = arg1
}

function setActive(bool arg1) {
    require msg.sender == stor0
    stor9 = uint8(arg1)
    emit SetActive(arg1);
}

function getActive() {
    if not stor9:
        return bool(stor9)
    return (block.timestamp < uint32(stor4.field_32))
}

function sub_3ba22606(?) {
    require msg.sender == stor0
    require arg1 > 0
    require arg1 < 100
    uint32(stor12.field_192) = arg1
    return 1
}

function transferSubOwnership(address arg1) {
    require msg.sender == stor0
    require arg1
    sub_c9d05d05Address = arg1
    emit OwnershipTransferred(arg1, arg1);
}

function sub_f7c5142f(?) {
    require msg.sender == stor0
    require arg2 < 100
    uint8(stor13.field_0) = uint8(arg1)
    uint32(stor13.field_8) = arg2
    Mask(216, 0, stor13.field_40) = Mask(216, 40, arg1) >> 40
}

function withdrawERC20Token(address arg1, address arg2, uint256 arg3) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
}

function getContractInfo() {
    mem[128] = uint256(stor3.field_0)
    idx = 128
    s = 0
    while stor3.length + 96 > idx:
        mem[idx + 32] = stor3[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor3.length, data=mem[128 len stor3.length]), 
           uint32(stor4.field_0),
           uint32(stor4.field_0),
           uint32(stor12.field_0),
           address(stor12.field_0)
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == stor0
    require ext_code.size(stor16)
    call stor16.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + sub_027932f9 >= sub_027932f9
    sub_027932f9 += arg2
    emit Withdraw(arg2, arg1);
}

function getInvestors() {
    if stor10.length:
        mem[128] = address(stor10.field_0)
        if (32 * stor10.length) + 32 > 64:
            mem[160] = address(stor10.field_256)
            idx = 160
            s = 1
            while (32 * stor10.length) + 96 > idx:
                mem[idx + 32] = stor10[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
    mem[(32 * stor10.length) + 128] = 32
    mem[(32 * stor10.length) + 160] = stor10.length
    mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
    return memory
      from (32 * stor10.length) + 128
       len (96 * stor10.length) + 64
}

function sub_5159e7fd(?) {
    require msg.sender == stor0
    require arg1
    require investor[address(arg1)].field_256 == arg1
    if investor[address(arg1)].field_480:
        revert with 0, 'already canceled'
    if investor[address(arg1)].field_488:
        revert with 0, 'already paid'
    investor[address(arg1)].field_480 = 1
    require investor[address(arg1)].field_512 <= currentCap
    currentCap -= investor[address(arg1)].field_512
    require ext_code.size(address(stor12.field_32))
    call address(stor12.field_32).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), investor[address(arg1)].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return 1
}

function getContractAddresses() {
    if not stor14.length:
        mem[(32 * stor14.length) + 128] = 32
        mem[(32 * stor14.length) + 160] = stor14.length
        mem[(32 * stor14.length) + 192 len floor32(stor14.length)] = mem[128 len floor32(stor14.length)]
        return memory
          from (32 * stor14.length) + 128
           len (96 * stor14.length) + 64
    mem[128] = address(stor14.field_0)
    idx = 128
    s = 0
    while (32 * stor14.length) + 96 > idx:
        mem[idx + 32] = stor14[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor14.length) + 192 len floor32(stor14.length)] = mem[128 len floor32(stor14.length)]
    return Array(len=stor14.length, data=mem[128 len floor32(stor14.length)], mem[(32 * stor14.length) + floor32(stor14.length) + 192 len (32 * stor14.length) - floor32(stor14.length)]), 
}

function sub_e4131b5a(?) {
    if stor17[arg1]:
        revert with 0, 'used txHash'
    if stor18[msg.sender]:
        revert with 0, 'already invested'
    require arg4 <= 10^18
    require stor9
    require arg2
    require arg3 > uint32(stor4.field_0)
    require arg3 < uint32(stor4.field_32)
    require arg2 + currentCap >= currentCap
    currentCap += arg2
    require ext_code.size(stor16)
    if arg2 < arg2:
        call stor16.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    call stor16.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if not investor[address(msg.sender)].field_256:
        stor10.length++
        stor10[stor10.length].field_0 = msg.sender
        investor[address(msg.sender)].field_256 = msg.sender
    investor[address(msg.sender)].field_0 = arg1
    require arg2 + investor[address(msg.sender)].field_512 >= investor[address(msg.sender)].field_512
    investor[address(msg.sender)].field_512 += arg2
    require arg2 + investor[address(msg.sender)].field_768 >= investor[address(msg.sender)].field_768
    investor[address(msg.sender)].field_768 += arg2
    investor[address(msg.sender)].field_416 = arg3
    if arg4 >= uint32(stor12.field_0):
        investor[address(msg.sender)].field_448 = uint32(arg3 + arg4)
    else:
        investor[address(msg.sender)].field_448 = uint32(arg3 + uint32(stor12.field_0))
    investor[address(msg.sender)].field_448 = 0
    stor17[arg1] = 1
    stor18[msg.sender] = 1
    emit 0x1a638989: arg2, arg2, arg2, uint64(stor10.length), msg.sender
    return uint64(stor10.length)
}

function sub_ceb095ca(?) {
    require msg.sender == stor0
    require investor[address(arg1)].field_256 == arg1
    require not investor[address(arg1)].field_480
    require not investor[address(arg1)].field_488
    investor[address(arg1)].field_488 = 1
    if not investor[address(arg1)].field_768 / 100:
        if bool(uint8(stor13.field_0)) != 1:
            require investor[address(arg1)].field_768 >= investor[address(arg1)].field_768
        else:
            require 0 <= investor[address(arg1)].field_768
    else:
        require uint32(stor13.field_8) * investor[address(arg1)].field_768 / 100 / investor[address(arg1)].field_768 / 100 == uint32(stor13.field_8)
        if bool(uint8(stor13.field_0)) != 1:
            require (uint32(stor13.field_8) * investor[address(arg1)].field_768 / 100) + investor[address(arg1)].field_768 >= investor[address(arg1)].field_768
            investor[address(arg1)].field_768 += uint32(stor13.field_8) * investor[address(arg1)].field_768 / 100
        else:
            require uint32(stor13.field_8) * investor[address(arg1)].field_768 / 100 <= investor[address(arg1)].field_768
            investor[address(arg1)].field_768 += -1 * uint32(stor13.field_8) * investor[address(arg1)].field_768 / 100
    if not investor[address(arg1)].field_768 / 100:
        require investor[address(arg1)].field_768 >= investor[address(arg1)].field_768
        require ext_code.size(address(stor12.field_32))
        call address(stor12.field_32).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), investor[address(arg1)].field_768
    else:
        require uint32(stor12.field_192) * investor[address(arg1)].field_768 / 100 / investor[address(arg1)].field_768 / 100 == uint32(stor12.field_192)
        require (uint32(stor12.field_192) * investor[address(arg1)].field_768 / 100) + investor[address(arg1)].field_768 >= investor[address(arg1)].field_768
        investor[address(arg1)].field_768 += uint32(stor12.field_192) * investor[address(arg1)].field_768 / 100
        require ext_code.size(address(stor12.field_32))
        call address(stor12.field_32).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), (uint32(stor12.field_192) * investor[address(arg1)].field_768 / 100) + investor[address(arg1)].field_768
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require investor[address(arg1)].field_768 + sub_f0df79e8 >= sub_f0df79e8
    sub_f0df79e8 += investor[address(arg1)].field_768
    emit 0xc7b16f0c: investor[address(arg1)].field_768, arg1
    return 1
}

function sub_992dcbcb(?) {
    require msg.sender == stor0
    require ('cd', 4).length < 80
    s = 0
    idx = 0
    while ('cd', 4).length > uint32(idx):
        require uint32(idx) < ('cd', 4).length
        mem[0] = address(cd[((32 * uint32(idx)) + cd[4] + 36)])
        mem[32] = 11
        require investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_256 == address(cd[((32 * uint32(idx)) + cd[4] + 36)])
        require not investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_480
        require not investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_488
        investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_488 = 1
        if not investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100:
            if bool(uint8(stor13.field_0)) != 1:
                require investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 >= investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
            else:
                require 0 <= investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
        else:
            require uint32(stor13.field_8) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100 / investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100 == uint32(stor13.field_8)
            if bool(uint8(stor13.field_0)) != 1:
                require (uint32(stor13.field_8) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100) + investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 >= investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
                investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 += uint32(stor13.field_8) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100
            else:
                require uint32(stor13.field_8) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100 <= investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
                investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 += -1 * uint32(stor13.field_8) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100
        if not investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100:
            require investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 >= investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
            mem[100] = address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            mem[132] = investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
            require ext_code.size(address(stor12.field_32))
            call address(stor12.field_32).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * uint32(idx)) + cd[4] + 36)]), investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
        else:
            require uint32(stor12.field_192) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100 / investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100 == uint32(stor12.field_192)
            require (uint32(stor12.field_192) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100) + investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 >= investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
            investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 += uint32(stor12.field_192) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100
            mem[100] = address(cd[((32 * uint32(idx)) + cd[4] + 36)])
            mem[132] = (uint32(stor12.field_192) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100) + investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
            require ext_code.size(address(stor12.field_32))
            call address(stor12.field_32).0xa9059cbb with:
                 gas gas_remaining wei
                args address(cd[((32 * uint32(idx)) + cd[4] + 36)]), (uint32(stor12.field_192) * investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 / 100) + investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768 + sub_f0df79e8 >= sub_f0df79e8
        sub_f0df79e8 += investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
        require uint32(idx) < ('cd', 4).length
        mem[96] = investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
        emit 0xc7b16f0c: investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768, address(cd[((32 * uint32(idx)) + cd[4] + 36)])
        s = investor[address(cd[((32 * uint32(idx)) + cd[4] + 36)])].field_768
        idx = idx + 1
        continue 
    return 1
}

function sub_afc77854(?) {
    require investor[address(msg.sender)].field_256 == msg.sender
    require block.timestamp > investor[address(msg.sender)].field_448
    require not investor[address(msg.sender)].field_480
    require not investor[address(msg.sender)].field_488
    if not investor[address(msg.sender)].field_768 / 100:
        if bool(uint8(stor13.field_0)) != 1:
            require investor[address(msg.sender)].field_768 >= investor[address(msg.sender)].field_768
        else:
            require 0 <= investor[address(msg.sender)].field_768
        if not investor[address(msg.sender)].field_768 / 100:
            require investor[address(msg.sender)].field_768 >= investor[address(msg.sender)].field_768
            require ext_code.size(address(stor12.field_32))
            call address(stor12.field_32).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, investor[address(msg.sender)].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require investor[address(msg.sender)].field_768 + sub_f0df79e8 >= sub_f0df79e8
            sub_f0df79e8 += investor[address(msg.sender)].field_768
            investor[address(msg.sender)].field_256 = investor[address(msg.sender)].field_256
            investor[address(msg.sender)].field_416 = investor[address(msg.sender)].field_416
            investor[address(msg.sender)].field_448 = investor[address(msg.sender)].field_448
            investor[address(msg.sender)].field_480 = uint8(bool(investor[address(msg.sender)].field_480))
            investor[address(msg.sender)].field_488 = 1
            investor[address(msg.sender)].field_496 = Mask(16, 16, bool(investor[address(msg.sender)].field_480)) >> 16
            emit 0xc7b16f0c: investor[address(msg.sender)].field_768, msg.sender
        else:
            require uint32(stor12.field_192) * investor[address(msg.sender)].field_768 / 100 / investor[address(msg.sender)].field_768 / 100 == uint32(stor12.field_192)
            require (uint32(stor12.field_192) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 >= investor[address(msg.sender)].field_768
            require ext_code.size(address(stor12.field_32))
            call address(stor12.field_32).0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (uint32(stor12.field_192) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            require (uint32(stor12.field_192) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 + sub_f0df79e8 >= sub_f0df79e8
            sub_f0df79e8 = (uint32(stor12.field_192) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 + sub_f0df79e8
            investor[address(msg.sender)].field_256 = investor[address(msg.sender)].field_256
            investor[address(msg.sender)].field_416 = investor[address(msg.sender)].field_416
            investor[address(msg.sender)].field_448 = investor[address(msg.sender)].field_448
            investor[address(msg.sender)].field_480 = uint8(bool(investor[address(msg.sender)].field_480))
            investor[address(msg.sender)].field_488 = 1
            investor[address(msg.sender)].field_496 = Mask(16, 16, bool(investor[address(msg.sender)].field_480)) >> 16
            investor[address(msg.sender)].field_768 += uint32(stor12.field_192) * investor[address(msg.sender)].field_768 / 100
            emit 0xc7b16f0c: ((uint32(stor12.field_192) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768), msg.sender
    else:
        require uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100 / investor[address(msg.sender)].field_768 / 100 == uint32(stor13.field_8)
        if bool(uint8(stor13.field_0)) != 1:
            require (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 >= investor[address(msg.sender)].field_768
            if not (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 / 100:
                require ext_code.size(address(stor12.field_32))
                call address(stor12.field_32).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 + sub_f0df79e8 >= sub_f0df79e8
                sub_f0df79e8 = (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 + sub_f0df79e8
                investor[address(msg.sender)].field_256 = investor[address(msg.sender)].field_256
                investor[address(msg.sender)].field_416 = investor[address(msg.sender)].field_416
                investor[address(msg.sender)].field_448 = investor[address(msg.sender)].field_448
                investor[address(msg.sender)].field_480 = uint8(bool(investor[address(msg.sender)].field_480))
                investor[address(msg.sender)].field_488 = 1
                investor[address(msg.sender)].field_496 = Mask(16, 16, bool(investor[address(msg.sender)].field_480)) >> 16
                investor[address(msg.sender)].field_768 += uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100
                emit 0xc7b16f0c: ((uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768), msg.sender
            else:
                require uint32(stor12.field_192) * (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 / 100 / (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 / 100 == uint32(stor12.field_192)
                require uint32(stor12.field_192) * (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 / 100 >= 0
                require ext_code.size(address(stor12.field_32))
                call address(stor12.field_32).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (uint32(stor12.field_192) * (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 / 100) + (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (uint32(stor12.field_192) * (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 / 100) + (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 + sub_f0df79e8 >= sub_f0df79e8
                sub_f0df79e8 = (uint32(stor12.field_192) * (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 / 100) + (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 + sub_f0df79e8
                investor[address(msg.sender)].field_256 = investor[address(msg.sender)].field_256
                investor[address(msg.sender)].field_416 = investor[address(msg.sender)].field_416
                investor[address(msg.sender)].field_448 = investor[address(msg.sender)].field_448
                investor[address(msg.sender)].field_480 = uint8(bool(investor[address(msg.sender)].field_480))
                investor[address(msg.sender)].field_488 = 1
                investor[address(msg.sender)].field_496 = Mask(16, 16, bool(investor[address(msg.sender)].field_480)) >> 16
                investor[address(msg.sender)].field_768 = (uint32(stor12.field_192) * (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 / 100) + (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768
                emit 0xc7b16f0c: ((uint32(stor12.field_192) * (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768 / 100) + (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + investor[address(msg.sender)].field_768), msg.sender
        else:
            require uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100 <= investor[address(msg.sender)].field_768
            if not investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) / 100:
                require ext_code.size(address(stor12.field_32))
                call address(stor12.field_32).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + sub_f0df79e8 >= sub_f0df79e8
                sub_f0df79e8 = investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + sub_f0df79e8
                investor[address(msg.sender)].field_256 = investor[address(msg.sender)].field_256
                investor[address(msg.sender)].field_416 = investor[address(msg.sender)].field_416
                investor[address(msg.sender)].field_448 = investor[address(msg.sender)].field_448
                investor[address(msg.sender)].field_480 = uint8(bool(investor[address(msg.sender)].field_480))
                investor[address(msg.sender)].field_488 = 1
                investor[address(msg.sender)].field_496 = Mask(16, 16, bool(investor[address(msg.sender)].field_480)) >> 16
                investor[address(msg.sender)].field_768 += -1 * uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100
                emit 0xc7b16f0c: (investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100)), msg.sender
            else:
                require uint32(stor12.field_192) * investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) / 100 / investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) / 100 == uint32(stor12.field_192)
                require uint32(stor12.field_192) * investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) / 100 >= 0
                require ext_code.size(address(stor12.field_32))
                call address(stor12.field_32).0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, (uint32(stor12.field_192) * investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) / 100) + investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0]
                require (uint32(stor12.field_192) * investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) / 100) + investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + sub_f0df79e8 >= sub_f0df79e8
                sub_f0df79e8 = (uint32(stor12.field_192) * investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) / 100) + investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) + sub_f0df79e8
                investor[address(msg.sender)].field_256 = investor[address(msg.sender)].field_256
                investor[address(msg.sender)].field_416 = investor[address(msg.sender)].field_416
                investor[address(msg.sender)].field_448 = investor[address(msg.sender)].field_448
                investor[address(msg.sender)].field_480 = uint8(bool(investor[address(msg.sender)].field_480))
                investor[address(msg.sender)].field_488 = 1
                investor[address(msg.sender)].field_496 = Mask(16, 16, bool(investor[address(msg.sender)].field_480)) >> 16
                investor[address(msg.sender)].field_768 = (uint32(stor12.field_192) * investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) / 100) + investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100)
                emit 0xc7b16f0c: ((uint32(stor12.field_192) * investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100) / 100) + investor[address(msg.sender)].field_768 - (uint32(stor13.field_8) * investor[address(msg.sender)].field_768 / 100)), msg.sender
}



}
