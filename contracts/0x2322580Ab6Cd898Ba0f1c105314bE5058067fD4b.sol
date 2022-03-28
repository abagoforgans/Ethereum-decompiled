contract main {


// =======================  Init code  ======================


address stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;

function _fallback() {
    stor4 = code.data[3830 len 20]
    stor5 = code.data[3862 len 20]
    stor6 = 0
    stor2 = msg.sender
    stor3 = code.data[3894 len 20]
    return code.data[139 len 3679]
}



// =====================  Runtime code  =====================


address sub_e17b1922Address;
uint256 stor0;
address refundTokenAddress;
uint256 stor1;
address owner;
address bankAddress;
address sub_bf7b8e8cAddress;
address sub_2210f5e1Address;
uint256 sub_36fbad26;
mapping of uint256 sub_81fca32c;
mapping of address projectList;
mapping of address sub_929c7c22;
mapping of address sub_fc6f57a3;
mapping of uint8 stor11;
array of struct sub_a828477c;

function sub_09c68c6b(?) {
    return bool(stor11[arg1])
}

function sub_2210f5e1(?) {
    return sub_2210f5e1Address
}

function sub_36fbad26(?) {
    return sub_36fbad26
}

function refundToken() {
    return address(refundTokenAddress)
}

function projectList(uint256 arg1) {
    return projectList[arg1]
}

function bank() {
    return bankAddress
}

function sub_81fca32c(?) {
    return sub_81fca32c[arg1]
}

function owner() {
    return owner
}

function sub_929c7c22(?) {
    return sub_929c7c22[arg1]
}

function sub_a828477c(?) {
    return sub_a828477c[arg1][0 len sub_a828477c[arg1].length].field_0
}

function sub_bf7b8e8c(?) {
    return sub_bf7b8e8cAddress
}

function sub_e17b1922(?) {
    return address(sub_e17b1922Address)
}

function sub_fc6f57a3(?) {
    return sub_fc6f57a3[arg1]
}

function _fallback() payable {
    revert 
}

function Update() {
    require owner == msg.sender
    require ext_code.size(sub_bf7b8e8cAddress)
    call sub_bf7b8e8cAddress.0x444bd6fd with:
         gas gas_remaining - 50 wei
        args Array(len=15, data='ChainChainToken')
    require ext_call.success
    uint256(stor0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor0))
    require ext_code.size(sub_bf7b8e8cAddress)
    call sub_bf7b8e8cAddress.0x444bd6fd with:
         gas gas_remaining - 50 wei
        args Array(len=11, data='RefundToken')
    require ext_call.success
    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
}

function sub_186f161b(?) {
    require bankAddress == msg.sender
    require projectList[arg2] == arg3
    if arg5:
        require ext_code.size(sub_fc6f57a3[arg2])
        call sub_fc6f57a3[arg2].0x41099135 with:
             gas gas_remaining - 50 wei
            args address(arg3), address(arg1), arg4
        require ext_call.success
        require ext_code.size(address(refundTokenAddress))
        call address(refundTokenAddress).0x41099135 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg3), arg4
    else:
        require ext_code.size(sub_929c7c22[arg2])
        call sub_929c7c22[arg2].0x41099135 with:
             gas gas_remaining - 50 wei
            args address(arg3), address(arg1), arg4
        require ext_call.success
        require ext_code.size(address(sub_e17b1922Address))
        call address(sub_e17b1922Address).0x41099135 with:
             gas gas_remaining - 50 wei
            args address(arg1), address(arg3), arg4
    require ext_call.success
}

function sub_e31e08ab(?) {
    require bankAddress == msg.sender
    require sub_36fbad26 >= arg1
    mem[164] = sub_a828477c[stor6].field_0
    idx = 164
    s = 0
    while sub_a828477c[stor6].length + 164 > idx + 32:
        mem[idx + 32] = sub_a828477c[stor6][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(sub_bf7b8e8cAddress)
    call sub_bf7b8e8cAddress.0x444bd6fd with:
         gas gas_remaining - 50 wei
        args Array(len=sub_a828477c[stor6].length, data=mem[164 len sub_a828477c[stor6].length + (floor32(sub_a828477c[stor6].length - 1) + -sub_a828477c[stor6].length + 32 % 32)])
    require ext_call.success
    sub_929c7c22[stor6] = address(ext_call.return_data[0])
    mem[164] = sub_a828477c[stor6].field_0
    idx = 164
    s = 0
    while sub_a828477c[stor6].length + 164 > idx + 32:
        mem[idx + 32] = sub_a828477c[stor6][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(sub_bf7b8e8cAddress)
    call sub_bf7b8e8cAddress.0x444bd6fd with:
         gas gas_remaining - 50 wei
        args Array(len=sub_a828477c[stor6].length, data=mem[164 len sub_a828477c[stor6].length + (floor32(sub_a828477c[stor6].length - 1) + -sub_a828477c[stor6].length + 32 % 32)])
    require ext_call.success
    sub_fc6f57a3[stor6] = address(ext_call.return_data[0])
    stor11[stor6] = 1
}

function sub_a186f2ca(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    require bankAddress == msg.sender
    sub_36fbad26++
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = 0
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0xd17f3b1a00000000000000000000000000000000000000000000000000000000
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 228] = arg3
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 260] = arg4
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 292] = arg5
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 164] = 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 324] = arg1.length
    if not arg1.length:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length + 192
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = arg2.length
        if not arg2.length:
            if not arg2.length % 32:
                require ext_code.size(sub_2210f5e1Address)
                call sub_2210f5e1Address.0xd17f3b1a with:
                     gas gas_remaining - 50 wei
                    args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length + arg1.length + 32]), arg1.length + 192, arg3, arg4, address(arg5)
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
                require ext_code.size(sub_2210f5e1Address)
                call sub_2210f5e1Address.0xd17f3b1a with:
                     gas gas_remaining - 50 wei
                    args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len floor32(arg2.length) + arg1.length + 64]), arg1.length + 192, arg3, arg4, address(arg5)
        else:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 420 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
            if not arg2.length % 32:
                require ext_code.size(sub_2210f5e1Address)
                call sub_2210f5e1Address.0xd17f3b1a with:
                     gas gas_remaining - 50 wei
                    args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg2.length + arg1.length + 32]), arg1.length + 192, arg3, arg4, address(arg5)
            else:
                mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
                require ext_code.size(sub_2210f5e1Address)
                call sub_2210f5e1Address.0xd17f3b1a with:
                     gas gas_remaining - 50 wei
                    args Array(len=arg1.length, data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 356 len arg1.length + 32], mem[ceil32(arg1.length) + 160], mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 420 len floor32(arg2.length)]), arg1.length + 192, arg3, arg4, address(arg5)
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 356] = mem[128]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 388 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 196] = arg1.length + 192
        mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 356] = arg2.length
        if arg2.length:
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[ceil32(arg1.length) + 160]
            mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 420 len floor32(arg2.length - 1)] = mem[ceil32(arg1.length) + 192 len floor32(arg2.length - 1)]
        if not arg2.length % 32:
            require ext_code.size(sub_2210f5e1Address)
            call sub_2210f5e1Address.0xd17f3b1a with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 388 len arg2.length + arg1.length]), arg1.length + 192, arg3, arg4, address(arg5)
        else:
            mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 388] = mem[floor32(arg2.length) + arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + -(arg2.length % 32) + 420 len arg2.length % 32]
            require ext_code.size(sub_2210f5e1Address)
            call sub_2210f5e1Address.0xd17f3b1a with:
                 gas gas_remaining - 50 wei
                args Array(len=arg1.length, data=mem[128], mem[ceil32(arg1.length) + ceil32(arg2.length) + 388 len floor32(arg2.length) + arg1.length + 32]), arg1.length + 192, arg3, arg4, address(arg5)
    require ext_call.success
    projectList[stor6] = address(ext_call.return_data[0])
    sub_81fca32c[stor8[stor6]] = sub_36fbad26
    sub_a828477c[stor6][].field_0 = Array(len=arg1.length, data=arg1[all])
    stor11[stor6] = 0
}



}
