contract main {




// =====================  Runtime code  =====================


address owner;
address operatorAddress;
array of uint256 version;
address stor3;

function version() {
    return version[0 len version.length]
}

function operator() {
    return operatorAddress
}

function owner() {
    return owner
}

function _fallback() payable {
  stop
}

function sub_a1e75069(?) {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OPERATOR'
    stor3 = arg1
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    operatorAddress = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OWNER'
    if arg1:
        owner = arg1
}

function withdrawETH(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OPERATOR'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function receiveETH(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        revert with 0, 'ONLY_TOKENLON_EXCHANGE'
    require ext_code.size(arg1)
    call arg1.deposit() with:
       value msg.value wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b0efd826(?) {
    require calldata.size - 4 >= 96
    if stor3 != msg.sender:
        revert with 0, 'ONLY_TOKENLON_EXCHANGE'
    require ext_code.size(arg1)
    call arg1.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call arg2 with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
}

function sendToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor3 != msg.sender:
        revert with 0, 'ONLY_TOKENLON_EXCHANGE'
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TRANSFER_FROM_FAILED'
}

function receiveToken(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stor3 != msg.sender:
        revert with 0, 'ONLY_TOKENLON_EXCHANGE'
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg2), address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TRANSFER_FROM_FAILED'
}

function withdraw(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0, 'ONLY_CONTRACT_OPERATOR'
    require ext_code.size(arg1)
    call arg1.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TRANSFER_FROM_FAILED'
}

function sub_30db4580(?) {
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

function sub_46920bad(?) {
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

function ecrecoverAddress(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 66:
        if arg2.length != 65:
            revert with 0, 'LENGTH_65_REQUIRED'
        require 0 < arg2.length
        _8 = mem[128]
        if arg2.length < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _16 = mem[129]
        if arg2.length < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _24 = mem[161]
        mem[ceil32(arg2.length) + 160] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 128] = 60
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _8), _16, _24) 
    else:
        if arg2.length <= 0:
            revert with 0, 32, 33, 0x44475245415445525f5448414e5f5a45524f5f4c454e4754485f52455155495245, mem[ceil32(arg2.length) + 229 len 31]
        require arg2.length - 1 < arg2.length
        if arg2.length - 1 != 65:
            revert with 0, 'LENGTH_65_REQUIRED'
        require 0 < arg2.length - 1
        _27 = mem[128]
        if arg2.length - 1 < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _36 = mem[129]
        if arg2.length - 1 < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _44 = mem[161]
        mem[ceil32(arg2.length) + 160] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 128] = 60
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _27), _36, _44) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function isValidSignature(bytes32 arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 66:
        if arg2.length != 65:
            revert with 0, 'LENGTH_65_REQUIRED'
        require 0 < arg2.length
        _8 = mem[128]
        if arg2.length < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _16 = mem[129]
        if arg2.length < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _24 = mem[161]
        mem[ceil32(arg2.length) + 160] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 128] = 60
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _8), _16, _24) 
    else:
        if arg2.length <= 0:
            revert with 0, 32, 33, 0x44475245415445525f5448414e5f5a45524f5f4c454e4754485f52455155495245, mem[ceil32(arg2.length) + 229 len 31]
        require arg2.length - 1 < arg2.length
        if arg2.length - 1 != 65:
            revert with 0, 'LENGTH_65_REQUIRED'
        require 0 < arg2.length - 1
        _27 = mem[128]
        if arg2.length - 1 < 33:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _36 = mem[129]
        if arg2.length - 1 < 65:
            revert with 0, 
                        32,
                        38,
                        0xfe475245415445525f4f525f455155414c5f544f5f33325f4c454e4754485f52455155495245,
                        mem[ceil32(arg2.length) + 234 len 26]
        _44 = mem[161]
        mem[ceil32(arg2.length) + 160] = '\x19Ethereum Signed Message:\n32'
        mem[ceil32(arg2.length) + 188] = arg1
        mem[ceil32(arg2.length) + 128] = 60
        signer = erecover(sha3(mem[ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]]), Mask(8, 248, _27), _36, _44) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor3)
    call stor3.transactions(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[12 len 20] == address(signer))
}



}
