contract main {




// =====================  Runtime code  =====================


const sub_3a5673a4(?) = Array(len=43, data=code.data[16918 len 43])


address _owner;
address tokenContractAddress;
address sub_7f3d9ceaAddress;
uint256 stor3;
uint256 stor4;

function tokenContract() {
    return tokenContractAddress
}

function sub_7f3d9cea(?) {
    return sub_7f3d9ceaAddress
}

function owner() {
    return _owner
}

function _owner() {
    return _owner
}

function _fallback() payable {
  stop
}

function isOwner() {
    return (msg.sender == _owner)
}

function renounceOwnership() {
    require msg.sender == _owner
    emit OwnershipTransferred(_owner, 0);
    _owner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == _owner
    require arg1
    emit OwnershipTransferred(_owner, arg1);
    _owner = arg1
}

function sub_8d71c731(?) payable {
    require calldata.size - 4 >= 256
    if msg.value >= stor3:
        create contract with 0 wei
                        code: code.data[12006 len 4912], address(arg1), arg2, arg3, arg4, arg5, arg6, arg7, arg8
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7f3d9ceaAddress)
        call sub_7f3d9ceaAddress.addContract(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(create.new_address), msg.sender, 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call _owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor4:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0
        else:
            require stor4
            require stor4 * 10^ext_call.return_data[0] / stor4 == 10^ext_call.return_data[0]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= stor4 * 10^ext_call.return_data[0]
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor4:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, _owner, 0
        else:
            require stor4
            require stor4 * 10^ext_call.return_data[0] / stor4 == 10^ext_call.return_data[0]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, _owner, stor4 * 10^ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        create contract with 0 wei
                        code: code.data[12006 len 4912], address(arg1), arg2, arg3, arg4, arg5, arg6, arg7, arg8
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7f3d9ceaAddress)
        call sub_7f3d9ceaAddress.addContract(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(create.new_address), msg.sender, 3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return address(create.new_address)
}

function sub_5e15863d(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    if msg.value >= stor3:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 5995] = code.data[6011 len 5995]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6219] = arg3
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6251] = arg4
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6155] = 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6283] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6315 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 6187] = arg1.length + 160
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6315] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6347 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 6187]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6347] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 6379 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 6219]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6315] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 6347 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 6187] = floor32(arg1.length) + 192
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6347] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6379 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 6219]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6379] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 6411 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 6251]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7f3d9ceaAddress)
        call sub_7f3d9ceaAddress.addContract(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(create.new_address), msg.sender, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        call _owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor4:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= 0
        else:
            require stor4
            require stor4 * 10^ext_call.return_data[0] / stor4 == 10^ext_call.return_data[0]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x70a08231 with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] >= stor4 * 10^ext_call.return_data[0]
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0x313ce567 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not stor4:
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, _owner, 0
        else:
            require stor4
            require stor4 * 10^ext_call.return_data[0] / stor4 == 10^ext_call.return_data[0]
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, _owner, stor4 * 10^ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len 5995] = code.data[6011 len 5995]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6219] = arg3
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6251] = arg4
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6155] = 128
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6283] = arg1.length
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 6315 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
        if not arg1.length % 32:
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 6187] = arg1.length + 160
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6315] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6347 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + arg1.length + 6187]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 6347] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 6379 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + arg1.length + 6219]
        else:
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6315] = mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(arg1.length % 32) + 6347 len arg1.length % 32]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 6187] = floor32(arg1.length) + 192
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6347] = Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]
            mem[floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6379 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])] = mem[ceil32(arg1.length) + 160 len ceil32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)])]
            if not Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32:
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] + floor32(arg1.length) + 6219]
            else:
                mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + 6379] = mem[floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + ceil32(arg1.length) + ceil32(arg2.length) + -(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32) + 6411 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)] % 32]
                create contract with 0 wei
                                code: mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]) + floor32(arg1.length) + 6251]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(sub_7f3d9ceaAddress)
        call sub_7f3d9ceaAddress.addContract(address arg1, address arg2, uint256 arg3) with:
             gas gas_remaining wei
            args address(create.new_address), msg.sender, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    return 0, uint128(create.new_address) << 96
}



}
