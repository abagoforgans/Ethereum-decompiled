contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
array of uint256 version;
address stor3;

function version() payable {
    return version[0 len version.length]
}

function operator() payable {
    return operatorAddress
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function sub_a1e75069(?) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OPERATOR'
    stor3 = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    operatorAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if arg1:
        owner = arg1
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OPERATOR'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_ea234e3c(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if operatorAddress != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OPERATOR'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _17 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + 132] = this.address
        mem[(32 * arg1.length) + 164] = -1
        require ext_code.size(address(_17))
        call address(_17).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        continue 
}

function sub_46920bad(?) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if operatorAddress != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OPERATOR'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Approve Error'
        mem[(32 * arg1.length) + 132] = this.address
        mem[(32 * arg1.length) + 164] = -1
        require ext_code.size(address(_21))
        call address(_21).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Approve Error'
        idx = idx + 1
        continue 
}

function ecrecoverAddress(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 108:
        if arg2.length != 107:
            revert with 0, 'LENGTH_107_REQUIRED'
        if arg2.length < 85:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _12 = mem[181]
        if arg2.length < 105:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _19 = mem[201]
        if arg2.length < 107:
            revert with 0, 
                        32,
                        37,
                        0x44475245415445525f4f525f455155414c5f544f5f325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 233 len 27]
        _29 = mem[233]
        if mem[233 len 2] >= 10000:
            revert with 0, 'FEE_FACTOR_MORE_THEN_10000'
        require 0 < arg2.length
        _39 = mem[128]
        if arg2.length < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _45 = mem[129]
        if arg2.length < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _52 = mem[161]
        mem[ceil32(arg2.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a373400000000
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 220] = address(_12)
        mem[ceil32(arg2.length) + 240] = address(_19)
        mem[ceil32(arg2.length) + 260] = Mask(16, 240, _29)
        mem[ceil32(arg2.length) + 128] = 102
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _39), _45, _52) 
    else:
        if arg2.length <= 0:
            revert with 0, 32, 33, 0x44475245415445525f5448414e5f5a45524f5f4c454e4754485f52455155495245, mem[ceil32(arg2.length) + 229 len 31]
        require arg2.length - 1 < arg2.length
        if arg2.length - 1 != 107:
            revert with 0, 'LENGTH_107_REQUIRED'
        if arg2.length - 1 < 85:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _26 = mem[181]
        if arg2.length - 1 < 105:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _35 = mem[201]
        if arg2.length - 1 < 107:
            revert with 0, 
                        32,
                        37,
                        0x44475245415445525f4f525f455155414c5f544f5f325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 233 len 27]
        _42 = mem[233]
        if mem[233 len 2] >= 10000:
            revert with 0, 'FEE_FACTOR_MORE_THEN_10000'
        require 0 < arg2.length - 1
        _55 = mem[128]
        if arg2.length - 1 < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _64 = mem[129]
        if arg2.length - 1 < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _72 = mem[161]
        mem[ceil32(arg2.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a373400000000
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 220] = address(_26)
        mem[ceil32(arg2.length) + 240] = address(_35)
        mem[ceil32(arg2.length) + 260] = Mask(16, 240, _42)
        mem[ceil32(arg2.length) + 128] = 102
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _55), _64, _72) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function isValidSignature(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 108:
        if arg2.length != 107:
            revert with 0, 'LENGTH_107_REQUIRED'
        if arg2.length < 85:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _12 = mem[181]
        if arg2.length < 105:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _19 = mem[201]
        if arg2.length < 107:
            revert with 0, 
                        32,
                        37,
                        0x44475245415445525f4f525f455155414c5f544f5f325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 233 len 27]
        _29 = mem[233]
        if mem[233 len 2] >= 10000:
            revert with 0, 'FEE_FACTOR_MORE_THEN_10000'
        require 0 < arg2.length
        _39 = mem[128]
        if arg2.length < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _45 = mem[129]
        if arg2.length < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _52 = mem[161]
        mem[ceil32(arg2.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a373400000000
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 220] = address(_12)
        mem[ceil32(arg2.length) + 240] = address(_19)
        mem[ceil32(arg2.length) + 260] = Mask(16, 240, _29)
        mem[ceil32(arg2.length) + 128] = 102
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _39), _45, _52) 
    else:
        if arg2.length <= 0:
            revert with 0, 32, 33, 0x44475245415445525f5448414e5f5a45524f5f4c454e4754485f52455155495245, mem[ceil32(arg2.length) + 229 len 31]
        require arg2.length - 1 < arg2.length
        if arg2.length - 1 != 107:
            revert with 0, 'LENGTH_107_REQUIRED'
        if arg2.length - 1 < 85:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _26 = mem[181]
        if arg2.length - 1 < 105:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _35 = mem[201]
        if arg2.length - 1 < 107:
            revert with 0, 
                        32,
                        37,
                        0x44475245415445525f4f525f455155414c5f544f5f325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 233 len 27]
        _42 = mem[233]
        if mem[233 len 2] >= 10000:
            revert with 0, 'FEE_FACTOR_MORE_THEN_10000'
        require 0 < arg2.length - 1
        _55 = mem[128]
        if arg2.length - 1 < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _64 = mem[129]
        if arg2.length - 1 < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _72 = mem[161]
        mem[ceil32(arg2.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a373400000000
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 220] = address(_26)
        mem[ceil32(arg2.length) + 240] = address(_35)
        mem[ceil32(arg2.length) + 260] = Mask(16, 240, _42)
        mem[ceil32(arg2.length) + 128] = 102
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _55), _64, _72) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.0xe051f75b with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == address(signer))
}



}
