contract main {




// =====================  Runtime code  =====================


const sub_08ecd9a6(?) = 0x5cc161482e82f20840a4aaeb582becbcc4b539d7

const sub_777cc041(?) = 0x27484afe9e6c332fb07f21fac82d442ebe1d22c3

const sub_ffbc7e78(?) = 0x1cabc34618ecf2949f0405a86353e7705e01c38b

const STABILITY_BOARD_PROXY = 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84


function _fallback() payable {
    revert
}

function execute(address arg1) {
    if 0xde36a8773531406dcbeffdfd3c7b89fced7a9f84 != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'only execute via StabilityBoardProxy'
    require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
    call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.getProductCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while uint32(idx) < uint32(ext_call.return_data[0]):
        require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
        call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.products(uint256 arg1) with:
             gas gas_remaining wei
            args uint32(idx)
        mem[96 len 192] = ext_call.return_data[0 len 192]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 192
        if ext_call.return_data[160]:
            mem[96] = 0x15f647fc00000000000000000000000000000000000000000000000000000000
            mem[100] = uint32(idx)
            mem[132] = 0
            require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
            call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.setLoanProductActiveState(uint32 arg1, bool arg2) with:
                 gas gas_remaining wei
                args idx << 224, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        s = ext_call.return_data[160]
        s = ext_call.return_data[128]
        s = ext_call.return_data[96]
        s = ext_call.return_data[64]
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
    call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.addLoanProduct(uint32 arg1, uint32 arg2, uint32 arg3, uint256 arg4, uint32 arg5, bool arg6) with:
         gas gas_remaining wei
        args 8760 * 24 * 3600, 985222, 600000, 800, 100000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
    call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.addLoanProduct(uint32 arg1, uint32 arg2, uint32 arg3, uint256 arg4, uint32 arg5, bool arg6) with:
         gas gas_remaining wei
        args 4320 * 24 * 3600, 992658, 600000, 800, 100000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
    call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.addLoanProduct(uint32 arg1, uint32 arg2, uint32 arg3, uint256 arg4, uint32 arg5, bool arg6) with:
         gas gas_remaining wei
        args 2160 * 24 * 3600, 996315, 600000, 800, 100000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
    call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.addLoanProduct(uint32 arg1, uint32 arg2, uint32 arg3, uint256 arg4, uint32 arg5, bool arg6) with:
         gas gas_remaining wei
        args 720 * 24 * 3600, 998769, 600000, 800, 100000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
    call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.addLoanProduct(uint32 arg1, uint32 arg2, uint32 arg3, uint256 arg4, uint32 arg5, bool arg6) with:
         gas gas_remaining wei
        args 336 * 24 * 3600, 999425, 600000, 800, 100000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x1cabc34618ecf2949f0405a86353e7705e01c38b)
    call 0x1cabc34618ecf2949f0405a86353e7705e01c38b.addLoanProduct(uint32 arg1, uint32 arg2, uint32 arg3, uint256 arg4, uint32 arg5, bool arg6) with:
         gas gas_remaining wei
        args 168 * 24 * 3600, 999713, 600000, 800, 100000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
    call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.getLockProductCount() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 0
    while uint32(idx) < uint32(ext_call.return_data[0]):
        require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
        call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.lockProducts(uint256 arg1) with:
             gas gas_remaining wei
            args uint32(idx)
        mem[96 len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 128
        if ext_call.return_data[96]:
            mem[96] = 0xc3b75b8f00000000000000000000000000000000000000000000000000000000
            mem[100] = uint32(idx)
            mem[132] = 0
            require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
            call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.setLockProductActiveState(uint32 arg1, bool arg2) with:
                 gas gas_remaining wei
                args idx << 224, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        s = ext_call.return_data[96]
        s = ext_call.return_data[64]
        s = ext_call.return_data[32]
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
    call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.addLockProduct(uint32 arg1, uint32 arg2, uint32 arg3, bool arg4) with:
         gas gas_remaining wei
        args 14000, 8760 * 24 * 3600, 1000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
    call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.addLockProduct(uint32 arg1, uint32 arg2, uint32 arg3, bool arg4) with:
         gas gas_remaining wei
        args 6905, 4320 * 24 * 3600, 1000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
    call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.addLockProduct(uint32 arg1, uint32 arg2, uint32 arg3, bool arg4) with:
         gas gas_remaining wei
        args 3453, 2160 * 24 * 3600, 1000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
    call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.addLockProduct(uint32 arg1, uint32 arg2, uint32 arg3, bool arg4) with:
         gas gas_remaining wei
        args 1151, 720 * 24 * 3600, 1000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
    call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.addLockProduct(uint32 arg1, uint32 arg2, uint32 arg3, bool arg4) with:
         gas gas_remaining wei
        args 537, 336 * 24 * 3600, 1000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x5cc161482e82f20840a4aaeb582becbcc4b539d7)
    call 0x5cc161482e82f20840a4aaeb582becbcc4b539d7.addLockProduct(uint32 arg1, uint32 arg2, uint32 arg3, bool arg4) with:
         gas gas_remaining wei
        args 269, 168 * 24 * 3600, 1000, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x27484afe9e6c332fb07f21fac82d442ebe1d22c3)
    call 0x27484afe9e6c332fb07f21fac82d442ebe1d22c3.setLtdParams(uint256 arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 200000, 200000, 20 * 10^6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
