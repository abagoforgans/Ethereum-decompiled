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

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    operatorAddress = arg1
}

function setSigner(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OPERATOR'
    stor3 = arg1
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
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TRANSFER_FROM_FAILED'
}

function sub_30db4580(?) payable {
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
        _24 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'APPROVE_FAILED'
        mem[(32 * arg1.length) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = this.address
        mem[(32 * arg1.length) + 164] = 0
        require ext_code.size(address(_24))
        call address(_24).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'APPROVE_FAILED'
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
        _24 = mem[(32 * idx) + 128]
        require ext_code.size(mem[(32 * idx) + 140 len 20])
        call mem[(32 * idx) + 140 len 20].approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'APPROVE_FAILED'
        mem[(32 * arg1.length) + 128] = 0x95ea7b300000000000000000000000000000000000000000000000000000000
        mem[(32 * arg1.length) + 132] = this.address
        mem[(32 * arg1.length) + 164] = -1
        require ext_code.size(address(_24))
        call address(_24).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(this.address), -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if return_data.size:
            require return_data.size == 32
            mem[0] = ext_call.return_data[0]
            if not ext_call.return_data[0]:
                revert with 0, 'APPROVE_FAILED'
        idx = idx + 1
        continue 
}

function isValidSignature(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length == 87:
        if arg2.length < 85:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _7 = mem[181]
        if arg2.length < 87:
            revert with 0, 
                        32,
                        37,
                        0x44475245415445525f4f525f455155414c5f544f5f325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 233 len 27]
        _15 = mem[213]
        if mem[213 len 2] >= 10000:
            revert with 0, 'FEE_FACTOR_MORE_THEN_10000'
        require 0 < arg2.length
        _27 = mem[128]
        if arg2.length < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _31 = mem[129]
        if arg2.length < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _39 = mem[161]
        mem[ceil32(arg2.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a353400000000
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 220] = address(_7)
        mem[ceil32(arg2.length) + 240] = Mask(16, 240, _15)
        mem[ceil32(arg2.length) + 128] = 82
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _27), _31, _39) 
    else:
        if arg2.length != 88:
            revert with 0, 'LENGTH_87_REQUIRED'
        if arg2.length < 85:
            revert with 0, 
                        32,
                        38,
                        0x44475245415445525f4f525f455155414c5f544f5f32305f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _11 = mem[181]
        if arg2.length < 87:
            revert with 0, 
                        32,
                        37,
                        0x44475245415445525f4f525f455155414c5f544f5f325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 233 len 27]
        _19 = mem[213]
        if mem[213 len 2] >= 10000:
            revert with 0, 'FEE_FACTOR_MORE_THEN_10000'
        require 0 < arg2.length
        _30 = mem[128]
        if arg2.length < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _35 = mem[129]
        if arg2.length < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _43 = mem[161]
        mem[ceil32(arg2.length) + 160] = 0x19457468657265756d205369676e6564204d6573736167653a0a353400000000
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 220] = address(_11)
        mem[ceil32(arg2.length) + 240] = Mask(16, 240, _19)
        mem[ceil32(arg2.length) + 128] = 82
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _30), _35, _43) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (stor3 == address(signer))
}



}
